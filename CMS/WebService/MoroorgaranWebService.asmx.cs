using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
namespace CMS.WebService
{
    /// <summary>
    /// Summary description for MoroorgaranWebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class MoroorgaranWebService : System.Web.Services.WebService
    {

        [WebMethod]
        public DataTable SearchNews()
        {
            CMS.CMSLogic.DateBaseHelprs _int = new CMSLogic.DateBaseHelprs();
            return _int.GetItemsByparameter("1000", "PartID=2");
        }
    }
}
