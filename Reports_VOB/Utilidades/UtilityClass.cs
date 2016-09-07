using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace VOB.Web.Utilidades
{
    public static class ConfigHelper
    {
        public static bool ObtenerBoleanoKey(string key)
        {
            bool resultado;
            Boolean.TryParse(ConfigurationManager.AppSettings[key].ToString(), out resultado);

            return resultado;
        }
    }
}