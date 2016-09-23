using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VOB.Web.Utilidades;

namespace VOB.Web.Reportes
{
    public partial class ReportViewer : System.Web.UI.Page
    {
        private static string ReportServerUrl = Utilidades.ConfigHelper.ObtenerString("ReportServerUri");
        private static string BalanceIndividualConsolidado = Utilidades.ConfigHelper.ObtenerString("ReportPath");

        private static string ReportUser = Utilidades.ConfigHelper.ObtenerString("ReportUser");
        private static string ReportPass = Utilidades.ConfigHelper.ObtenerString("ReportPass");

        private string Rut, Periodo1, Periodo2, Periodo3, Periodo4, IdCalidad, IdEstado, IdTipoBalance;

        private string IdPeriodo1, IdPeriodo2, IdPeriodo3, IdPeriodo4;

        protected void Page_Load(object sender, EventArgs e)
        {
            Rut = Request.QueryString["Rut"];
            Rut = Rut.Replace(".", "").Replace("-", "");
            Periodo1 = Request.QueryString["Periodo1"];
            Periodo2 = Request.QueryString["Periodo2"];
            Periodo3 = Request.QueryString["Periodo3"];
            Periodo4 = Request.QueryString["Periodo4"];

            IdPeriodo1 = Request.QueryString["IdPeriodo1"];
            IdPeriodo2 = Request.QueryString["IdPeriodo2"];
            IdPeriodo3 = Request.QueryString["IdPeriodo3"];
            IdPeriodo4 = Request.QueryString["IdPeriodo4"];

            IdCalidad = Request.QueryString["IdCalidad"];
            IdEstado = Request.QueryString["IdEstado"];
            IdTipoBalance = Request.QueryString["IdTipoBalance"];

            if (!Page.IsPostBack)
                RenderReport();
        }

        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);
            DisableAllUnwantedExportFormatExcept(rptViewer, "PDF");
        }

        private void RenderReport()
        {
            rptViewer.Reset();
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
            parametros.Add(new ReportParameter("IdPeriodo1", IdPeriodo1));
            parametros.Add(new ReportParameter("IdPeriodo2", IdPeriodo2));
            parametros.Add(new ReportParameter("IdPeriodo3", IdPeriodo3));
            parametros.Add(new ReportParameter("IdPeriodo4", IdPeriodo4));
            parametros.Add(new ReportParameter("IdEstado", "2"));
            parametros.Add(new ReportParameter("IdTipoBalance", IdTipoBalance));

            if (ReportUser != string.Empty)
            {
                string user = string.Empty, domain = string.Empty;
                if (ReportUser.Contains("\\"))
                {
                    domain = ReportUser.Substring(0, ReportUser.IndexOf("\\"));
                    user = ReportUser.Substring(ReportUser.IndexOf("\\") + 1);
                }
                else
                    user = ReportUser;

                rptViewer.ServerReport.ReportServerCredentials = new CustomReportCredentials(user, ReportPass, domain);
            }

            rptViewer.ServerReport.SetParameters(parametros);
        }

        private void DisableUnwantedExportFormat(Microsoft.Reporting.WebForms.ReportViewer ReportViewerID, string strFormatName)
        {
            FieldInfo info;

            foreach (RenderingExtension extension in ReportViewerID.ServerReport.ListRenderingExtensions())
            {
                if (extension.Name.ToUpper() == strFormatName.ToUpper())
                {
                    info = extension.GetType().GetField("m_isVisible", BindingFlags.Instance | BindingFlags.NonPublic);
                    info.SetValue(extension, false);
                }
            }
        }
        private void DisableAllUnwantedExportFormatExcept(Microsoft.Reporting.WebForms.ReportViewer ReportViewerID, string strFormatName)
        {
            FieldInfo info;

            foreach (RenderingExtension extension in ReportViewerID.ServerReport.ListRenderingExtensions())
            {
                info = extension.GetType().GetField("m_isVisible", BindingFlags.Instance | BindingFlags.NonPublic);
                if (extension.Name.ToUpper() == strFormatName.ToUpper())
                    info.SetValue(extension, true);
                else
                    info.SetValue(extension, false);
            }
        }
    }
}