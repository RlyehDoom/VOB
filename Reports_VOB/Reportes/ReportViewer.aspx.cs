using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VOB.Web.Utilidades;

namespace VOB.Web.Reportes
{
    public partial class ReportViewer : System.Web.UI.Page
    {
        private const string BalanceIndividualConsolidado = "/BancoInternacional/Balances Individual-Consolidado";
        private const string BalanceCombinado = "";
        private string Rut, Periodo1, Periodo2, Periodo3, Periodo4, IdCalidad, IdEstado, IdTipoBalance;
        private const string ReportServerUrl = "http://104.238.144.178//ReportServer";


        protected void Page_Load(object sender, EventArgs e)
        {
            Rut = Request.QueryString["Rut"];
            Periodo1 = Request.QueryString["Periodo1"];
            Periodo2 = Request.QueryString["Periodo2"];
            Periodo3 = Request.QueryString["Periodo3"];
            Periodo4 = Request.QueryString["Periodo4"];
            IdCalidad = Request.QueryString["IdCalidad"];
            IdEstado = Request.QueryString["IdEstado"];
            IdTipoBalance = Request.QueryString["IdTipoBalance"];

            if (!Page.IsPostBack)
                RenderReport();
        }

        private void RenderReport()
        {
            //rptViewer.Reset();
            //rptViewer.ProcessingMode = ProcessingMode.Local;
            rptViewer.ProcessingMode = ProcessingMode.Remote;
            ReportParameterCollection parametros = new ReportParameterCollection();

            rptViewer.ServerReport.ReportServerUrl = new Uri(ReportServerUrl);
            rptViewer.ServerReport.ReportPath = BalanceIndividualConsolidado;
            //rptViewer.LocalReport.ReportPath = Server.MapPath("~/Reportes/BalancesRenovado.rdl");

            parametros.Add(new ReportParameter("Rut", Rut));
            parametros.Add(new ReportParameter("Periodo1", Periodo1));
            parametros.Add(new ReportParameter("Periodo2", Periodo2));
            parametros.Add(new ReportParameter("Periodo3", Periodo3));
            parametros.Add(new ReportParameter("Periodo4", Periodo4));
            parametros.Add(new ReportParameter("IdEstado", "2"));
            parametros.Add(new ReportParameter("IdTipoBalance", IdTipoBalance));

            
            rptViewer.ServerReport.ReportServerCredentials = new CustomReportCredentials("ReportAdmin", "Iconexa2016.", "");
            rptViewer.ServerReport.SetParameters(parametros);
            //rptViewer.LocalReport.SetParameters(parametros);
            
            //rptViewer.ServerReport.Refresh();
        }

        private DataSet RegresaDatosReporteNormal()
        {
            DataSet ds = new DataSet();



            return ds;
        }
    }
}