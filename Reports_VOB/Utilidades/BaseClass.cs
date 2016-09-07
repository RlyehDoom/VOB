using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace VOB.Web.Utilidades
{
    public class BaseController : Controller
    {
        public string UsuarioNT
        {
            get
            {
                return User.Identity.Name.Substring(User.Identity.Name.IndexOf("\\") + 1);
            }
        }
    }
}