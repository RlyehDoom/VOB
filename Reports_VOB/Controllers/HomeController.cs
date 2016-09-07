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

            try
            {
                using (var db = new VOB_Entitites())
                {
                    resultado = db.ObtenerBalancesPeriodosCliente(null, rutCliente, null, null, idEstado, null, null, tipoBalance, null).ToList();
                }
            }
            catch (Exception ex)
            {
                resultado = new List<ObtenerBalancesPeriodosCliente_Result>();
            }

            if (resultado.Count == 0 && ConfigHelper.ObtenerBoleanoKey("IsDummyData") == true)
            {
                resultado = new List<ObtenerBalancesPeriodosCliente_Result>();
                resultado.Add(new ObtenerBalancesPeriodosCliente_Result() { IdPeriodo = 1, Periodo = 3112013, Moneda = "Pesos", Estado="Terminado", Calidad="FECU", Meses= 12 });
                resultado.Add(new ObtenerBalancesPeriodosCliente_Result() { IdPeriodo = 2, Periodo = 3112014, Moneda = "Pesos", Estado = "Terminado", Calidad = "8 Columnas", Meses = 12 });
                resultado.Add(new ObtenerBalancesPeriodosCliente_Result() { IdPeriodo = 3, Periodo = 3112015, Moneda = "Pesos", Estado = "Terminado", Calidad = "FECU", Meses = 12 });
                resultado.Add(new ObtenerBalancesPeriodosCliente_Result() { IdPeriodo = 4, Periodo = 3112015, Moneda = "Pesos", Estado = "Terminado", Calidad = "FECU", Meses = 12 });
            }

            return new JsonResult() { Data = resultado, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }
    }
}