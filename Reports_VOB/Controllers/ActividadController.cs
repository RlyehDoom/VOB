using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Xml.Linq;
using VOB.Web.Utilidades;

namespace VOB.Web.Controllers
{
    public class ActividadController : Utilidades.BaseController
    {
        public ActionResult Index(Models.ReporteNormalModel model)
        {
            ModelState.Clear();

            model.IdTipoBalance = 4;
            model.TituloBalance = "Conceptual";
            ViewBag.Title = "Banco Internacional - Reporte Financiero Conceptual";
            ViewBag.UserName = UsuarioNT;

            if (!string.IsNullOrEmpty(model.Rut))
            {
                WSHelper.WebService service = new WSHelper.WebService(ConfigHelper.ObtenerString("ReportWebServiceURLTesting"), "ConsultaCliente");
                service.Params.Add("RutCliente", model.Rut);
                service.Invoke();

                string ns = "{" + ConfigHelper.ObtenerString("ReportWebServiceNamespace") + "}";
                foreach (XElement xe in service.ResultXML.Descendants(ns + "ConsultaClienteResponse").Descendants(ns + "ConsultaClienteResult"))
                {
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
                                    string nombre, apePaterno, apeMaterno;
                                    nombre = (string)per.Element(ns + "NombreCliente");
                                    apePaterno = (string)per.Element(ns + "ApellidoPaterno");
                                    apeMaterno = (string)per.Element(ns + "ApellidoMaterno");
                                    model.ClienteNombre = string.Concat(nombre, " ",apePaterno, " ", apeMaterno);

                                    foreach (XElement eje in per.Descendants(ns + "EjecutivoAsociado"))
                                    {
                                        model.EjecutivoId = !string.IsNullOrEmpty((string)eje.Element(ns + "IdEjecutivo")) ? (int)eje.Element(ns + "IdEjecutivo") : 0;
                                        model.EjecutivoRut = !string.IsNullOrEmpty((string)eje.Element(ns + "RutEjecutivo")) ? ((string)eje.Element(ns + "RutEjecutivo")).TrimStart('0') : "";
                                        model.EjecutivoNombre = (string)eje.Element(ns + "NombreEjecutivo");
                                    }
                                }
                            }
                            if (tipoPersona.ToUpper() == "EMPRESA")
                            {
                                foreach (XElement emp in info.Descendants(ns + "Empresa"))
                                {
                                    model.ClienteNombre = (string)emp.Element(ns + "NombreCliente");

                                    foreach (XElement eje in emp.Descendants(ns + "EjecutivoAsociado"))
                                    {
                                        model.EjecutivoId = !string.IsNullOrEmpty((string)eje.Element(ns + "IdEjecutivo")) ? (int)eje.Element(ns + "IdEjecutivo") : 0;
                                        model.EjecutivoRut = !string.IsNullOrEmpty((string)eje.Element(ns + "RutEjecutivo")) ? ((string)eje.Element(ns + "RutEjecutivo")).TrimStart('0') : "";
                                        model.EjecutivoNombre = (string)eje.Element(ns + "NombreEjecutivo");
                                    }
                                }
                            }
                        }

                        model.EjecutivoNombre = JsonConvert.SerializeObject(model);
                    }
                    else
                    {
                        model.ClienteNombre = "Cliente no EXISTE";
                    }
                }

                if (string.IsNullOrEmpty(model.ClienteNombre))
                {
                    model.ClienteNombre = service.ResultXML.ToString();
                }
            }

            return View(model);
        }
    }
}