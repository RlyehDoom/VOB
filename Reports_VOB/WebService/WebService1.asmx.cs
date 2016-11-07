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
            return new ResultInfo("ok", "Persona");
        }
    }

    public class ResultInfo
    {
        public ResultInfo() { }
        public ResultInfo(string estado, string tipoPersona)
        {
            this.Estado = estado;
            InfoClient infoC = new InfoClient(tipoPersona);
            infoC.Persona = new Per("MADECO S.A");

            this.InformacionCliente = infoC;
        }
        public string Estado { get; set; }

        public InfoClient InformacionCliente { get; set; }
    }

    public class InfoClient
    {
        public InfoClient() { }
        public InfoClient(string tipoCliente)
        {
            TipoCliente = tipoCliente;
        }
        public string TipoCliente { get; set; }

        public Per Persona { get; set; }
    }

    public class Per
    {
        public Per() {}
        public Per(string nombreEmpresa)
        {
            this.NombreCliente = nombreEmpresa;
            this.ApellidoMaterno = ".";
            this.ApellidoPaterno = "";
            this.EjecutivoAsociado = new Eje(1, "0000151524230", "Paz Ahumada");
        }
        public string NombreCliente { get; set; }
        public string ApellidoPaterno { get; set; }
        public string ApellidoMaterno { get; set; }
        public Eje EjecutivoAsociado { get; set; }
    }

    public class Eje
    {
        public Eje() { }
        public Eje(int id, string rut, string nombre)
        {
            this.IdEjecutivo = id;
            this.RutEjecutivo = rut;
            this.NombreEjecutivo = nombre;
        }
        public int IdEjecutivo { get; set; }
        public string RutEjecutivo { get; set; }
        public string NombreEjecutivo { get; set; }
    }
}
