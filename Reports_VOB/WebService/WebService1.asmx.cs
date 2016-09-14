using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace VOB.Web.WebService
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {
        public WebService1() { }

        [WebMethod]
        public ResultInfo ConsultaCliente(string RutCliente)
        {
            return new ResultInfo(RutCliente, "José Luis");
        }
    }

    public class ResultInfo
    {
        public ResultInfo() { }
        public ResultInfo(string rut, string name)
        {
            this.rut = rut;
            this.name = name;
        }
        public string rut { get; set; }
        public string name { get; set; }
    }
}
