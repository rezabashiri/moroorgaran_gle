using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

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
                int part = Convert.ToInt32(Request.QueryString["part"]);
                sql = "SELECT      dbo.TItems.ItemTopic, dbo.TItems.PhotoName, dbo.TItems.SummaryTxt, dbo.TItems.ItemID, dbo.TItems.ShowDate,  dbo.TGroups.GrpName " +
                    "FROM         dbo.TItems INNER JOIN " +
                    "dbo.TGroups ON dbo.TItems.GrpID = dbo.TGroups.GrpID INNER JOIN " +
                    "dbo.TParts ON dbo.TGroups.PartID = dbo.TParts.PartID " +
                    "WHERE   (dbo.TParts.PartID={0}) and (dbo.TItems.FreshStat = 3) AND (dbo.TItems.PubStat = 9) AND (dbo.TGroups.CustomerID = {1}) AND (GETDATE() >= dbo.TItems.ShowDate) " +
                    "ORDER BY dbo.TItems.ShowDate DESC";
                sql = string.Format(sql, part, mc.GetCustomer());
                mc.connect();
                dt = mc.select(sql);
                mc.disconnect();
                ListView1.DataSource = dt;
                ListView1.DataBind();
            }
            catch (Exception)
            {
            }
        }
    }
}