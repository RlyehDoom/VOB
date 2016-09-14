﻿using System;
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
            model.IdTipoBalance = 1;
            model.TituloBalance = "Individual";
            ViewBag.Title = "Banco Internacional - Reporte Financiero Individual";
            ViewBag.UserName = UsuarioNT;

            ObtieneDatosCliente(ref model);

            return View("Index", model);
        }

        public ActionResult Consolidado(Models.ReporteNormalModel model)
        {
            model.IdTipoBalance = 2;
            model.TituloBalance = "Consolidado";
            ViewBag.Title = "Banco Internacional - Reporte Financiero Consolidado";
            ViewBag.UserName = UsuarioNT;
            ObtieneDatosCliente(ref model);

            return View("Index", model);
        }

        public ActionResult Combinado(Models.ReporteNormalModel model)
        {
            model.IdTipoBalance = 3;
            model.TituloBalance = "Combinado";
            ViewBag.Title = "Banco Internacional - Reporte Financiero Combinado";
            ViewBag.UserName = UsuarioNT;
            ObtieneDatosCliente(ref model);

            return View("Index", model);
        }

        public JsonResult ObtieneBalancesCliente(string rutCliente, byte tipoBalance)
        {
            rutCliente = rutCliente.Replace(".", "");
            rutCliente = rutCliente.Replace("-", "");
            byte idEstado = 2; //Terminado

            List<ObtenerBalancesPeriodosCliente_Result> resultado = new List<ObtenerBalancesPeriodosCliente_Result>();

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

            return new JsonResult() { Data = resultado, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }

        public JsonResult ObtieneDatosRutCliente(string rutCliente)
        {
            Models.ReporteNormalModel datos = new Models.ReporteNormalModel();
            datos.Rut = rutCliente;
            ObtieneDatosCliente(ref datos);

            return new JsonResult() { Data = datos, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }

        private static void ObtieneDatosCliente(ref Models.ReporteNormalModel model)
        {
            if (!string.IsNullOrEmpty(model.Rut) && ConfigHelper.ObtenerBoleano("ReportWebServiceOn"))
            {
                try
                {
                    WSHelper.WebService service = new WSHelper.WebService(ConfigHelper.ObtenerString("ReportWebServiceURL"), "ConsultaCliente");
                    service.Params.Add("RutCliente", model.Rut);
                    service.Invoke();

                    XNamespace df = service.ResultXML.Root.Name.Namespace;
                    foreach (XElement xe in service.ResultXML.Descendants("NMC_Response").Descendants("InformacionCliente").Descendants("Persona"))
                    {
                        model.ClientName = xe.Element("NombreCliente").Value;
                    }

                    foreach (XElement xi in service.ResultXML.Descendants("NMC_Response").Elements("error"))
                    {
                        model.ClientName = "WebService ERROR: " + xi.Value;
                    }
                }
                catch (Exception ex)
                {
                    model.ClientName = ex.Message;
                }
            }
            else if (ConfigHelper.ObtenerBoleano("ReportWebServiceOn") == false)
            {
                model.ClientName = "Nombre falso. servicio apagado...";
            }
        }
    }
}