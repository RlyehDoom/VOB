using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

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

            return View("Index", model);
        }
    }
}