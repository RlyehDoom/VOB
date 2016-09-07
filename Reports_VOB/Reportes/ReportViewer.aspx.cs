using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VOB.Web.Reportes
{
    public partial class ReportViewer : System.Web.UI.Page
    {
        private const string BalanceIndividualConsolidado = "/BancoInternacional/Balances Individual-Consolidado";
        private const string BalanceCombinado = "";
        private string Rut, Periodo1, Periodo2, Periodo3, Periodo4, IdCalidad, IdEstado, IdTipoBalance;
        private const string ReportServerUrl = "http://104.238.144.178/BancoReports";


        protected void Page_Load(object sender, EventArgs e)
        {
            Rut = Request.Form["Rut"];
            Periodo1 = Request.Form["Periodo1"];
            Periodo2 = Request.Form["Periodo2"];
            Periodo3 = Request.Form["Periodo3"];
            Periodo4 = Request.Form["Periodo4"];
            IdCalidad = Request.Form["IdCalidad"];
            IdEstado = Request.Form["IdEstado"];
            IdTipoBalance = Request.Form["IdTipoBalance"];

            //if (!string.IsNullOrEmpty(Rut))
                RenderReport();
        }

        private void RenderReport()
        {
            rptViewer.ProcessingMode = ProcessingMode.Remote;
            ReportParameterCollection parametros = new ReportParameterCollection();
            rptViewer.Reset();

            if (IdTipoBalance == "1" | IdTipoBalance == "2")
            {
                //rptViewer.ServerReport.ReportServerUrl = new Uri(ReportServerUrl);
                rptViewer.ServerReport.ReportPath = Server.MapPath("~/Reportes/BalanceRenovado.rdl");
                //rptViewer.ServerReport.ReportPath = BalanceIndividualConsolidado;

                parametros.Add(new ReportParameter("Rut", Rut));
                parametros.Add(new ReportParameter("Periodo1", Periodo1));
                parametros.Add(new ReportParameter("Periodo2", Periodo2));
                parametros.Add(new ReportParameter("Periodo3", Periodo3));
                parametros.Add(new ReportParameter("Periodo4", Periodo4));
                parametros.Add(new ReportParameter("IdCalidad", IdCalidad));
                parametros.Add(new ReportParameter("IdEstado", IdEstado));
                parametros.Add(new ReportParameter("IdTipoBalance", IdTipoBalance));

                rptViewer.ServerReport.SetParameters(parametros);
                rptViewer.ServerReport.Refresh();
            }
            else if (IdTipoBalance == "3")
            {

            }
        }
    }
}