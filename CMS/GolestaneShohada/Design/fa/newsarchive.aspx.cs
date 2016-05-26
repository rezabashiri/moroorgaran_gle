using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using tkv.Utility;
namespace CMS.GolestaneShohada.Design.fa
{
    public partial class newsarchive : System.Web.UI.Page
    {
        MyClass mc = new MyClass();
        DataTable dt = new DataTable();
        string sql = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillNews();
            }
        }
        public void FillNews()
        {
            try
            {
                int part = Request.QueryString["part"].ToInt32();
                if (part == int.MinValue)
                    return;
                ListView1.DataSource = new CMSLogic.DateBaseHelprs().GetItemsByparameter("100", string.Format("PartID={0}", part));
                ListView1.DataBind();
            }
            catch (Exception)
            {
            }
        }
    }
}