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
            model.IdTipoBalance = 4;
            model.TituloBalance = "Conceptual";
            ViewBag.Title = "Banco Internacional - Reporte Financiero Conceptual";
            ViewBag.UserName = UsuarioNT;

            if (!string.IsNullOrEmpty(model.Rut))
            {
                WSHelper.WebService service = new WSHelper.WebService(ConfigHelper.ObtenerString("ReportWebServiceURL"), "ConsultaCliente");
                service.Params.Add("RutCliente", model.Rut);
                service.Invoke();

                model.ClientName = service.ResultXML.ToString();

                string ns = ConfigHelper.ObtenerString("ReportWebServiceNamespace");
                foreach (XElement xe in service.ResultXML.Descendants(ns + "NMC_Response").Descendants(ns + "InformacionCliente").Descendants(ns + "Persona"))
                {
                    model.ClientName = xe.Element(ns + "NombreCliente").Value;

                    foreach (XElement x in xe.Descendants(ns + "EjecutivoAsociado"))
                    {
                        model.ClientExecutive = x.Element(ns + "NombreEjecutivo").Value;
                    }
                }

                model.ClientName = model.ClientName + " | " + model.ClientExecutive;
            }

            return View("Index", model);
        }
    }
}