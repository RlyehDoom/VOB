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
            model.IdTipoBalance = 1;
            model.TituloBalance = "Individual";
            ViewBag.Title = "Banco Internacional - Reporte Financiero Individual";
            ViewBag.UserName = UsuarioNT;
            return View("Index", model);
        }

        public ActionResult Consolidado(Models.ReporteNormalModel model)
        {
            model.IdTipoBalance = 2;
            model.TituloBalance = "Consolidado";
            ViewBag.Title = "Banco Internacional - Reporte Financiero Consolidado";
            ViewBag.UserName = UsuarioNT;
            return View("Index", model);
        }

        public ActionResult Combinado(Models.ReporteNormalModel model)
        {
            model.IdTipoBalance = 3;
            model.TituloBalance = "Combinado";
            ViewBag.Title = "Banco Internacional - Reporte Financiero Combinado";
            ViewBag.UserName = UsuarioNT;
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

            if (resultado.Count == 0 && ConfigHelper.ObtenerBoleano("IsDummyData") == true)
            {
                resultado = new List<ObtenerBalancesPeriodosCliente_Result>();
                resultado.Add(new ObtenerBalancesPeriodosCliente_Result() { IdPeriodo = 1, Periodo = 20131231, Moneda = "Pesos", Estado = "Terminado", Calidad="FECU", Meses= 12, IdCalidad = 1, IdEstado = 2 });
                resultado.Add(new ObtenerBalancesPeriodosCliente_Result() { IdPeriodo = 2, Periodo = 20141231, Moneda = "Pesos", Estado = "Terminado", Calidad = "8 Columnas", Meses = 12, IdCalidad = 1, IdEstado = 2 });
                resultado.Add(new ObtenerBalancesPeriodosCliente_Result() { IdPeriodo = 3, Periodo = 20151231, Moneda = "Pesos", Estado = "Terminado", Calidad = "FECU", Meses = 12, IdCalidad = 1, IdEstado = 2 });
                resultado.Add(new ObtenerBalancesPeriodosCliente_Result() { IdPeriodo = 4, Periodo = 20161231, Moneda = "Pesos", Estado = "Terminado", Calidad = "FECU", Meses = 12, IdCalidad = 1, IdEstado = 2 });
                resultado.Add(new ObtenerBalancesPeriodosCliente_Result() { IdPeriodo = 5, Periodo = 20011231, Moneda = "Pesos", Estado = "Terminado", Calidad = "FECU", Meses = 6, IdCalidad = 1, IdEstado = 2 });
            }

            return new JsonResult() { Data = resultado, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }
    }
}