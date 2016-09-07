using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using VOB.Web.DataBaseModel;
using VOB.Web.Utilidades;

namespace VOB.Web.Controllers
{
    public class HomeController : BaseController
    {
        public ActionResult Index(Models.ReporteNormalModel model)
        {
            ViewBag.UserName = UsuarioNT;
            return View(model);
        }

        public ActionResult Consolidado()
        {
            ViewBag.UserName = UsuarioNT;
            return View();
        }

        public ActionResult Combinado()
        {
            ViewBag.UserName = UsuarioNT;
            return View();
        }

        public JsonResult ObtieneBalancesCliente(string rutCliente, byte tipoBalance)
        {
            byte idEstado = 2; //Terminado
            List<ObtenerBalancesPeriodosCliente_Result> resultado = new List<ObtenerBalancesPeriodosCliente_Result>();

            using (var db = new VOB_Entitites())
            {
                resultado = db.ObtenerBalancesPeriodosCliente(null, rutCliente, null, null, idEstado, null, null, tipoBalance, null).ToList();
            }

            return new JsonResult() { Data = resultado, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }
    }
}