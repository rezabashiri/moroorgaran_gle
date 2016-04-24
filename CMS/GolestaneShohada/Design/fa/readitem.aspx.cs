using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CMS.GolestaneShohada.Design.fa
{
    public partial class readitem : System.Web.UI.Page
    {
        MyClass mc = new MyClass();
        DataTable dt = new DataTable();
        string sql = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Fill();
            }
        }
        protected void Fill()
        {
            try
            {
                int id = Convert.ToInt32(Request.QueryString["itemID"]);
                sql = "SELECT        TOP (100) PERCENT dbo.TItems.ItemTopic, dbo.TItems.SummaryTxt, dbo.TItems.BodyTxt, dbo.TItems.ShowDate, dbo.TGroups.GrpName " +
                    " FROM            dbo.TGroups INNER JOIN dbo.TItems ON dbo.TGroups.GrpID = dbo.TItems.GrpID " +
                    " WHERE        (dbo.TItems.FreshStat = 3) AND (dbo.TItems.PubStat = 9) AND (GETDATE() >= dbo.TItems.ShowDate) AND (dbo.TItems.ItemID = {0}) " +
                    " ORDER BY dbo.TItems.ShowDate DESC";
                sql = string.Format(sql, id);
                mc.connect();
                dt = mc.select(sql);
                mc.disconnect();
                string title = dt.Rows[0]["ItemTopic"].ToString();
                lblTopic.Text = title;
                lblDate.Text = mc.GetFarsiDate2(Convert.ToDateTime(dt.Rows[0]["ShowDate"]), 0);
                lblGrp.Text = dt.Rows[0]["GrpName"].ToString();
                //imgItem.ImageUrl = "http://www.???.ir/CMS/files/photoItems/" + dt.Rows[0]["PhotoName"];
                //imgItem.AlternateText = title;
                DivItem.InnerHtml = dt.Rows[0]["BodyTxt"].ToString();
                Page.Title = title;
                Page.MetaDescription = dt.Rows[0]["SummaryTxt"].ToString();
            }
            catch (Exception)
            {
            }
        }
    }
}