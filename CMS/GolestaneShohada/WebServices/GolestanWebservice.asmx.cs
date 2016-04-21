using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Golestan.Model;
using tkv.Utility;
namespace CMS.GolestaneShohada.WebServices
{
    /// <summary>
    /// Summary description for GolestanWebservice
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    [System.Web.Script.Services.ScriptService]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class GolestanWebservice : System.Web.Services.WebService
    {

        [WebMethod]
        public List<ViewShahid> GetShahidByGhate(string IDGhate)
        {
            int id = IDGhate.ToInt32();
            List<ViewShahid> res = new Golestan.Helpers.InterFace().Search_SahidByGhateID(id);
            return res;
        }
    }
}
