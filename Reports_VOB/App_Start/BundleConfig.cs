using System.Web;
using System.Web.Optimization;

namespace VOB.Web
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            //Usamos la version de Jqueryu que utiliza KendoUI para evitar conflictos.
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/kendo/2016.2.714/jquery.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate.js"
                        , "~/Scripts/jquery.validate.unobtrusive.js"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-2.6.2.js"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js"));

            bundles.Add(new ScriptBundle("~/bundles/IE8Crap").Include(
                        "~/Scripts/html5shiv.js",
                        "~/Scripts/respond.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/bootstrap-theme.css",
                      "~/Content/site.css"));

            /* KENDO UI */
            bundles.Add(new StyleBundle("~/Content/KendoCss").Include(
                "~/Content/Kendo/2016.2.714/kendo.common.min.css",
                "~/Content/Kendo/2016.2.714/kendo.blueopal.min.css",
                "~/Content/Kendo/2016.2.714/kendo.blueopal.mobile.min.css"));

            bundles.Add(new ScriptBundle("~/bundles/KendoJs").Include(
                "~/Scripts/kendo/2016.2.714/kendo.all.min.js",
                "~/Scripts/kendo/2016.2.714/cultures/kendo.culture.es-CL.min.js",
                "~/Scripts/kendo/2016.2.714/messages/kendo.messages.es-CL.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/Utilities").Include("~/Scripts/jquery.Rut.js"));
        }
    }
}
