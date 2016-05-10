using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CMS.GolestaneShohada.Design
{
    public partial class Default : System.Web.UI.Page
    {
        MyClass mc = new MyClass();
        DataTable dt = new DataTable();
        string sql = "";
          
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillSlider();
                FillEvent();
                FillBlog();
                FillNews();
                //FillComming();
                SetNearestAmalit();
        
            }
        }
  
        public DateTime StartAmaliat
        {
            get
            {
                return ViewState["__StartAmaliat"] as Nullable<DateTime> ?? DateTime.Now;
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
                return ViewState["__EndAmaliat"] as Nullable<DateTime> ?? DateTime.Now;
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
                EndAmaliat =   new DateTime(DateTime.Now.Year, EndAmaliat.Month, EndAmaliat.Day, EndAmaliat.Hour, EndAmaliat.Minute, 0);

                lblAmaliat.Text = string.Format("عملیات {0} شروع خواهد شد", amaliat.Name);
            }
        }
        public void FillSlider()
        {
            try
            {
                sql = "SELECT     TOP (3)  dbo.TItems.ItemTopic, dbo.TItems.PhotoName, dbo.TItems.SummaryTxt, dbo.TItems.ItemID, dbo.TItems.ShowDate " +
                    "FROM         dbo.TItems INNER JOIN " +
                    "dbo.TGroups ON dbo.TItems.GrpID = dbo.TGroups.GrpID INNER JOIN " +
                    "dbo.TParts ON dbo.TGroups.PartID = dbo.TParts.PartID " +
                    "WHERE   (dbo.TParts.PartID=1) and (dbo.TItems.FreshStat = 3) AND (dbo.TItems.PubStat = 9) AND (dbo.TGroups.CustomerID = {0}) AND (GETDATE() >= dbo.TItems.ShowDate) " +
                    "ORDER BY dbo.TItems.ShowDate DESC";
                sql = string.Format(sql, mc.GetCustomer());
                mc.connect();
                dt = mc.select(sql);
                ListView1.DataSource = dt;
                ListView1.DataBind();
            }
            catch (Exception)
            {
            }
            finally
            {
              mc.disconnect();
            }
        }
        public void FillEvent()
        {
            try
            {
                sql = "SELECT     TOP (4)  dbo.TItems.ItemTopic, dbo.TItems.PhotoName, dbo.TItems.SummaryTxt, dbo.TItems.ItemID, dbo.TItems.EventDate, " +
                    "DATEDIFF(day, GETDATE(), EventDate) as dayE, DATEDIFF(day, DATEPART(HOUR, GETDATE()), DATEPART(HOUR, EventDate)) as HourE, "+
                    " abs( DATEDIFF(day, DATEPART(minute, GETDATE()), DATEPART(minute, EventDate))) as minE "+
                    "FROM         dbo.TItems INNER JOIN " +
                    "dbo.TGroups ON dbo.TItems.GrpID = dbo.TGroups.GrpID INNER JOIN " +
                    "dbo.TParts ON dbo.TGroups.PartID = dbo.TParts.PartID " +
                    "WHERE   (dbo.TParts.PartID=3) and (dbo.TItems.FreshStat = 3) AND (dbo.TItems.PubStat = 9) AND (dbo.TGroups.CustomerID = {0}) AND (GETDATE() >= dbo.TItems.ShowDate) " +
                    "ORDER BY dbo.TItems.ShowDate DESC";
                sql = string.Format(sql, mc.GetCustomer());
                mc.connect();
                dt = mc.select(sql);
                mc.disconnect();
                ListView2.DataSource = dt;
                ListView2.DataBind();
            }
            catch (Exception)
            {
            }
        }
        public void FillBlog()
        {
            try
            {
                sql = "SELECT     TOP (2)  dbo.TItems.ItemTopic, dbo.TItems.PhotoName, dbo.TItems.SummaryTxt, dbo.TItems.ItemID, dbo.TItems.ShowDate " +
                    "FROM         dbo.TItems INNER JOIN " +
                    "dbo.TGroups ON dbo.TItems.GrpID = dbo.TGroups.GrpID INNER JOIN " +
                    "dbo.TParts ON dbo.TGroups.PartID = dbo.TParts.PartID " +
                    "WHERE   (dbo.TParts.PartID=4) and (dbo.TItems.FreshStat = 3) AND (dbo.TItems.PubStat = 9) AND (dbo.TGroups.CustomerID = {0}) AND (GETDATE() >= dbo.TItems.ShowDate) " +
                    "ORDER BY dbo.TItems.ShowDate DESC";
                sql = string.Format(sql, mc.GetCustomer());
                mc.connect();
                dt = mc.select(sql);
                mc.disconnect();
                ListView3.DataSource = dt;
                ListView3.DataBind();
            }
            catch (Exception)
            {
            }
        }
        public void FillNews()
        {
            try
            {
                sql = "SELECT     TOP (2)  dbo.TItems.ItemTopic, dbo.TItems.PhotoName, dbo.TItems.SummaryTxt, dbo.TItems.ItemID, dbo.TItems.ShowDate " +
                    "FROM         dbo.TItems INNER JOIN " +
                    "dbo.TGroups ON dbo.TItems.GrpID = dbo.TGroups.GrpID INNER JOIN " +
                    "dbo.TParts ON dbo.TGroups.PartID = dbo.TParts.PartID " +
                    "WHERE   (dbo.TParts.PartID=2) and (dbo.TItems.FreshStat = 3) AND (dbo.TItems.PubStat = 9) AND (dbo.TGroups.CustomerID = {0}) AND (GETDATE() >= dbo.TItems.ShowDate) " +
                    "ORDER BY dbo.TItems.ShowDate DESC";
                sql = string.Format(sql, mc.GetCustomer());
                mc.connect();
                dt = mc.select(sql);
                mc.disconnect();
                ListView4.DataSource = dt;
                ListView4.DataBind();
            }
            catch (Exception)
            {
            }
        }
        
        public void FillComming()
        {
            //ListView222 = new Golestan.Helpers.InterFace().GetShahidCloserToDeath(10);
            
        }
 

        protected void XmlDataSource1_Transforming(object sender, EventArgs e)
        {
            var s = sender as XmlDataSource;
        }
    }
}