using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace VOB.Web.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index(Models.ReporteNormalModel model)
        {
            ViewBag.UserName = User.Identity.Name.Substring(User.Identity.Name.IndexOf("\\") + 1);
            return View(model);
        }

        public ActionResult Consolidado()
        {
            ViewBag.UserName = User.Identity.Name.Substring(User.Identity.Name.IndexOf("\\") + 1);
            return View();
        }

        public ActionResult Combinado()
        {
            ViewBag.UserName = User.Identity.Name.Substring(User.Identity.Name.IndexOf("\\") + 1);
            return View();
        }

        public JsonResult ObtieneBalancesCliente()
        {
            List<Periodos> periodos = new List<Periodos>();
            periodos.Add(new Periodos(1, 20141231, "31-12-2013"));
            periodos.Add(new Periodos(1, 20141231, "31-12-2014"));
            periodos.Add(new Periodos(1, 20141231, "31-12-2015"));
            periodos.Add(new Periodos(1, 20141231, "31-12-2016"));

            return new JsonResult() { Data = periodos, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }
    }

    public class Periodos
    {
        public Periodos() { }
        public Periodos(int idPeriodo, int periodo, string periodoTexto)
        {
            this.IdPeriodo = idPeriodo;
            this.Periodo = periodo;
            this.PeriodoFormateado = periodoTexto;
        }
        public int IdPeriodo { get; set; } 
        public int Periodo { get; set; }
        public string PeriodoFormateado { get; set; }
    }
}