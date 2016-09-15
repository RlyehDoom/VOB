using Microsoft.Reporting.WebForms;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Xml;
using System.Xml.Linq;

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

    public static class WSHelper
    {
        /*
         * Ejemplo de uso:
            WSHelper.WebService ws = new WSHelper.WebService("service_url", "method_name");
            ws.Params.Add("param1", "value_1");
            ws.Params.Add("param2", "value_2");
            ws.Invoke();
            XDocument result = ws.ResultXML;
        */
        public class WebService
        {
            public string Url { get; set; }
            public string MethodName { get; set; }
            public Dictionary<string, string> Params = new Dictionary<string, string>();
            public XDocument ResultXML;
            public string ResultString;

            public WebService()
            {

            }

            public WebService(string url, string methodName)
            {
                Url = url;
                MethodName = methodName;
            }

            /// <summary>
            /// Invokes service
            /// </summary>
            public void Invoke()
            {
                Invoke(true);
            }

            /// <summary>
            /// Invokes service
            /// </summary>
            /// <param name="encode">Added parameters will encode? (default: true)</param>
            public void Invoke(bool encode)
            {
                string soapStr =
                    @"<?xml version=""1.0"" encoding=""utf-8""?>
            <soap:Envelope xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance"" 
               xmlns:xsd=""http://www.w3.org/2001/XMLSchema"" 
               xmlns:soap=""http://schemas.xmlsoap.org/soap/envelope/"">
              <soap:Body>
                <{0} xmlns=""ns1"">
                  {1}
                </{0}>
              </soap:Body>
            </soap:Envelope>";

                soapStr = soapStr.Replace("ns1", ConfigHelper.ObtenerString("ReportWebServiceNamespace"));
                HttpWebRequest req = (HttpWebRequest)WebRequest.Create(Url);
                req.Headers.Add("SOAPAction", "\"" + ConfigHelper.ObtenerString("ReportWebServiceNamespace") + MethodName + "\"");
                req.ContentType = "text/xml;charset=\"utf-8\"";
                req.Accept = "text/xml";
                req.Method = "POST";

                using (Stream stm = req.GetRequestStream())
                {
                    string postValues = "";
                    foreach (var param in Params)
                    {
                        if (encode)
                            postValues += string.Format("<{0}>{1}</{0}>", HttpUtility.UrlEncode(param.Key), HttpUtility.UrlEncode(param.Value));
                        else
                            postValues += string.Format("<{0}>{1}</{0}>", param.Key, param.Value);
                    }

                    soapStr = string.Format(soapStr, MethodName, postValues);
                    using (StreamWriter stmw = new StreamWriter(stm))
                    {
                        stmw.Write(soapStr);
                    }
                }

                using (StreamReader responseReader = new StreamReader(req.GetResponse().GetResponseStream()))
                {
                    string result = responseReader.ReadToEnd();
                    ResultXML = XDocument.Parse(result);
                    ResultString = result;
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