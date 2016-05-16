using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CMS.GolestaneShohada.Design.MasterPage
{
    public partial class WebMaster : System.Web.UI.MasterPage
    {
        MyClass mc = new MyClass();
        DataTable dt = new DataTable();
        string sql = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillNews();
                SetNearestAmalit();
            }
        }
        public DateTime StartAmaliat
        {
            get
            {
               return ViewState["__StartAmaliat"] as Nullable< DateTime >?? DateTime.Now;
            }
            set
            {
                ViewState["__StartAmaliat"] = value;
            }
        }
        public DateTime EndAmaliat
        {
            get
            {
                return ViewState["__EndAmaliat"] as Nullable< DateTime >?? DateTime.Now;
            }
            set
            {
                ViewState["__EndAmaliat"] = value;
            }
        }
        public void SetNearestAmalit()
        {
            var amaliat = new Golestan.Helpers.InterFace().GetTheNearestAmaliat();
            if (amaliat != null)
            {
                StartAmaliat = amaliat.TarikheShoroo ?? DateTime.Now;
                EndAmaliat = amaliat.TarikhePayan ?? DateTime.Now;

                StartAmaliat = new DateTime(DateTime.Now.Year, StartAmaliat.Month, StartAmaliat.Day, StartAmaliat.Hour, StartAmaliat.Minute, 0);
                EndAmaliat = new DateTime(DateTime.Now.Year, EndAmaliat.Month, EndAmaliat.Day, EndAmaliat.Hour, EndAmaliat.Minute, 0);

                lblAmaliat.Text = string.Format("عملیات {0} شروع خواهد شد", amaliat.Name);
            }
        }
        public void FillNews()
        {
            try
            {
                sql = "SELECT     TOP (10)  dbo.TItems.ItemTopic, dbo.TItems.SummaryTxt, dbo.TItems.ItemID, dbo.TItems.ShowDate " +
                    "FROM         dbo.TItems INNER JOIN " +
                    "dbo.TGroups ON dbo.TItems.GrpID = dbo.TGroups.GrpID INNER JOIN " +
                    "dbo.TParts ON dbo.TGroups.PartID = dbo.TParts.PartID " +
                    "WHERE   (dbo.TParts.PartID<>1) and (dbo.TItems.FreshStat = 3) AND (dbo.TItems.PubStat = 9) AND (dbo.TGroups.CustomerID = {0}) AND (GETDATE() >= dbo.TItems.ShowDate) " +
                    "ORDER BY dbo.TItems.ShowDate DESC";
                sql = string.Format(sql, mc.GetCustomer());
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