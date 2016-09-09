using Microsoft.Reporting.WebForms;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace VOB.Web.Utilidades
{
    public static class ConfigHelper
    {
        public static bool ObtenerBoleano(string key)
        {
            bool resultado;
            Boolean.TryParse(ConfigurationManager.AppSettings[key].ToString(), out resultado);

            return resultado;
        }

        public static string ObtenerString(string key)
        {
            string resultado;
            resultado = ConfigurationManager.AppSettings[key].ToString();
            return resultado;
        }
    }

    public static class ReportViewerExtensions
    {
        public static void SetExportFormatVisibility(this ReportViewer viewer, ReportViewerExportFormat format, bool isVisible)
        {

            string formatName = format.ToString();

            const System.Reflection.BindingFlags Flags = System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Instance;
            System.Reflection.FieldInfo m_previewService = viewer.ServerReport.GetType().GetField("m_previewService", Flags);

            System.Reflection.MethodInfo ListRenderingExtensions = m_previewService.FieldType.GetMethod("ListRenderingExtensions", Flags);
            object previewServiceInstance = m_previewService.GetValue(viewer.ServerReport);

            IList extensions = (IList)ListRenderingExtensions.Invoke(previewServiceInstance, null);
            System.Reflection.PropertyInfo name = extensions[0].GetType().GetProperty("Name", Flags);

            //object extension = null;
            foreach (var ext in extensions)
            {

                if ((string.Compare(name.GetValue(ext, null).ToString(), formatName, true) == 0))
                {
                    System.Reflection.FieldInfo m_isVisible = ext.GetType().GetField("m_isVisible", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance);

                    System.Reflection.FieldInfo m_isExposedExternally = ext.GetType().GetField("m_isExposedExternally", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance);
                    m_isVisible.SetValue(ext, isVisible);
                    m_isExposedExternally.SetValue(ext, isVisible);

                    break;
                }

            }
        }

    }

    public enum ReportViewerExportFormat
    {
        Excel,
        PDF
    }
}