using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Xml.Linq;
using VOB.Web.DataBaseModel;
using VOB.Web.Utilidades;

namespace VOB.Web.Controllers
{
    public class HomeController : BaseController
    {
        public ActionResult Index(Models.ReporteNormalModel model)
        {
            Session.Clear();
            string rutEjecutivo = Request.QueryString["id"];
            string perfilEjecutivo = Request.QueryString["perf"];

            if (rutEjecutivo != null && rutEjecutivo != string.Empty)
            {
                Session["rutEjecutivo"] = rutEjecutivo;
                Session["perfilEjecutivo"] = perfilEjecutivo;
            }

            model.IdTipoBalance = 1;
            model.TituloBalance = "Individual";
            ViewBag.Title = "Banco Internacional - Reporte Financiero Individual";
            ViewBag.UserName = UsuarioNT;

            //ObtieneDatosCliente(ref model);

            return View("Index", model);
        }

        public ActionResult Individual(Models.ReporteNormalModel model)
        {
            model.IdTipoBalance = 1;
            model.TituloBalance = "Individual";
            ViewBag.Title = "Banco Internacional - Reporte Financiero Individual";
            ViewBag.UserName = UsuarioNT;

            //ObtieneDatosCliente(ref model);

            return View("Index", model);
        }

        public ActionResult Consolidado(Models.ReporteNormalModel model)
        {
            model.IdTipoBalance = 2;
            model.TituloBalance = "Consolidado";
            ViewBag.Title = "Banco Internacional - Reporte Financiero Consolidado";
            ViewBag.UserName = UsuarioNT;

            //ObtieneDatosCliente(ref model);

            return View("Index", model);
        }

        public ActionResult Combinado(Models.ReporteNormalModel model)
        {
            model.IdTipoBalance = 3;
            model.TituloBalance = "Combinado";
            ViewBag.Title = "Banco Internacional - Reporte Financiero Combinado";
            ViewBag.UserName = UsuarioNT;

            //ObtieneDatosCliente(ref model);

            return View("Index", model);
        }

        public JsonResult ObtieneBalancesCliente(string rutCliente, byte tipoBalance)
        {
            rutCliente = rutCliente.Replace(".", "");
            rutCliente = rutCliente.Replace("-", "");
            byte idEstado = 2; //Terminado

            List<ObtenerBalancesPeriodosCliente_Result> resultado = new List<ObtenerBalancesPeriodosCliente_Result>();

            string codigosAnalistas = Utilidades.ConfigHelper.ObtenerString("ReportPerfilesAnalistas");

            Models.ReporteNormalModel datos = new Models.ReporteNormalModel();
            datos.Rut = rutCliente;
            ObtieneDatosCliente(ref datos);

            if (codigosAnalistas.Contains(Session["perfilEjecutivo"] != null ? Session["perfilEjecutivo"].ToString() : "0") || datos.EjecutivoRut == Session["rutEjecutivo"].ToString())
            {
                try
                {
                    using (var db = new VOB_Entitites())
                    {
                        resultado = db.ObtenerBalancesPeriodosCliente(null, rutCliente, null, null, idEstado, null, null, tipoBalance, null).ToList();
                    }
                }
                catch
                {
                    resultado = new List<ObtenerBalancesPeriodosCliente_Result>();
                }
            }

            return new JsonResult() { Data = resultado, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }

        public JsonResult ObtieneDatosRutCliente(string rutCliente)
        {
            Models.ReporteNormalModel datos = new Models.ReporteNormalModel();
            datos.Rut = rutCliente;
            ObtieneDatosCliente(ref datos);

            string codigosAnalistas = Utilidades.ConfigHelper.ObtenerString("ReportPerfilesAnalistas");
            if (codigosAnalistas.Contains(Session["perfilEjecutivo"] != null ? Session["perfilEjecutivo"].ToString() : "0") || datos.EjecutivoRut == Session["rutEjecutivo"].ToString())
                datos.TieneAcceso = true;
            else
                datos.TieneAcceso = false;

            return new JsonResult() { Data = datos, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }

        private void ObtieneDatosCliente(ref Models.ReporteNormalModel model)
        {
            if (!string.IsNullOrEmpty(model.Rut) && ConfigHelper.ObtenerBoleano("ReportWebServiceOn"))
            {
                try
                {
                    WSHelper.WebService service = new WSHelper.WebService(ConfigHelper.ObtenerString("ReportWebServiceURL"), "ConsultaCliente");
                    service.Params.Add("RutCliente", model.Rut);
                    service.Invoke();

                    string ns = "{" + ConfigHelper.ObtenerString("ReportWebServiceNamespace") + "}";
                    foreach (XElement xe in service.ResultXML.Descendants(ns + "ConsultaClienteResponse").Descendants(ns + "ConsultaClienteResult"))
                    {
                        /* El cast directo a (string) resuelve la problematica de si el elemento es nulo o no existe */
                        string estado;
                        estado = (string)xe.Element(ns + "Estado");

                        if (estado != null && estado.ToUpper() == "OK")
                        {
                            foreach (XElement info in xe.Descendants(ns + "InformacionCliente"))
                            {
                                string tipoPersona = (string)info.Element(ns + "TipoCliente");

                                if (tipoPersona.ToUpper() == "PERSONA")
                                {
                                    foreach (XElement per in info.Descendants(ns + "Persona"))
                                    {
                                        model.ClienteNombre = (string)per.Element(ns + "NombreEmpresa");

                                        foreach (XElement eje in per.Descendants(ns + "EjecutivoAsociado"))
                                        {
                                            model.EjecutivoId = ((string)eje.Element(ns + "IdEjecutivo")) != null ? (int)eje.Element(ns + "") : 0;
                                            model.EjecutivoRut = ((string)eje.Element(ns + "RutEjecutivo")).TrimStart('0');
                                            model.EjecutivoNombre = (string)eje.Element(ns + "NombreEjecutivo");
                                        }
                                    }
                                }
                                if (tipoPersona.ToUpper() == "EMPRESA")
                                {
                                    foreach (XElement emp in info.Descendants(ns + "Empresa"))
                                    {
                                        model.ClienteNombre = (string)emp.Element(ns + "NombreFantasia");

                                        foreach (XElement eje in emp.Descendants(ns + "EjecutivoAsociado"))
                                        {
                                            model.EjecutivoId = ((string)eje.Element(ns + "IdEjecutivo")) != null ? (int)eje.Element(ns + "") : 0;
                                            model.EjecutivoRut = ((string)eje.Element(ns + "RutEjecutivo")).TrimStart('0');
                                            model.EjecutivoNombre = (string)eje.Element(ns + "NombreEjecutivo");
                                        }
                                    }
                                }
                            }
                        }
                        else
                        {
                            model.EjecutivoRut = "-1";
                            model.ClienteNombre = "Cliente No EXISTE";
                        }
                    }
                }
                catch (Exception ex)
                {
                    model.ClienteNombre = ex.Message;
                }
            }
            else if (ConfigHelper.ObtenerBoleano("ReportWebServiceOn") == false)
            {
                model.ClienteNombre = "Servicio apagado...";
                model.EjecutivoNombre = "acceso sin restricciones.";
                model.EjecutivoRut = Session["rutEjecutivo"].ToString();
            }
        }

        private XDocument XMLResultDummy()
        {
            return XDocument.Load(Server.MapPath("~/Utilidades/ConsultaCliente.xml"));
        }
    }
}