using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
 
using System.Web.DynamicData;
using System.Web.Routing;
namespace CMS
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

            WebUtility.AppStart.EntityModelHelpers.RegisterEntityModel(Golestan.AppStart.DynamicDataConfig.GolestanModel, new Golestan.Model.GolestanShohadaEntities());
            WebUtility.AppStart.ConfigRoutes.RegisterModelRoutes(RouteTable.Routes, Golestan.AppStart.DynamicDataConfig.GolestanModel);
            WebUtility.AppStart.EntityModelHelpers.RegisterEntityModel(global::AccessManagementService.AppStart.DynamicDataConfig.AccessManagementModel, new global::AccessManagementService.Model.AccessEntities());
            WebUtility.AppStart.ConfigRoutes.RegisterModelRoutes(RouteTable.Routes, global::AccessManagementService.AppStart.DynamicDataConfig.AccessManagementModel);
            RegisterRoute(RouteTable.Routes);


        }

        private void RegisterRoute(RouteCollection rc)
        {
            rc.MapPageRoute("Home", "", "~/GolestaneShohada/Design/Default.aspx");
            rc.MapPageRoute("locale", "fa/SearchShahid", "~/GolestaneShohada/Design/fa/shohadalist.aspx");
            rc.MapPageRoute("admin", "admin", "~/LoginUser.aspx");
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["CustomerID"] = "";
        }



        void Application_BeginRequest(object sender, EventArgs e)
        {
           // System.Threading.Thread.CurrentThread.CurrentCulture = new tkv.Utility.CultureHelpers().GetCulture();
        }

        
        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}