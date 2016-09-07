using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Security.Principal;
using System.Web;

namespace VOB.Web.Utilidades
{
    public class CustomReportCredentials : Microsoft.Reporting.WebForms.IReportServerCredentials
    {
        // local variable for network credential.
        private string _UserName;
        private string _PassWord;
        private string _DomainName;

        public CustomReportCredentials(string UserName, string PassWord, string DomainName)
        {
            _UserName = UserName;
            _PassWord = PassWord;
            _DomainName = DomainName;
        }

        public WindowsIdentity ImpersonationUser
        {
            get
            {
                return null;  // not use ImpersonationUser
            }
        }
        public ICredentials NetworkCredentials
        {
            get
            {
                if (!string.IsNullOrEmpty(_DomainName))
                    return new NetworkCredential(_UserName, _PassWord, _DomainName);
                else
                    return new NetworkCredential(_UserName, _PassWord);
            }
        }
        public bool GetFormsCredentials(out Cookie authCookie, out string user, out string password, out string authority)
        {
            // don't use FormsCredentials unless you have implements a custom autentication.
            authCookie = null;
            user = password = authority = null;
            return false;
        }
    }
}