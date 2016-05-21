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
                dt = new CMSLogic.DateBaseHelprs().GetItemsByparameter("10", string.Empty);
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
                EndAmaliat = new DateTime(DateTime.Now.Year, EndAmaliat.Month, EndAmaliat.Day, EndAmaliat.Hour, EndAmaliat.Minute, 0);

                lblAmaliat.Text = string.Format("عملیات {0} شروع خواهد شد", amaliat.Name);
            }
        }
        public void FillSlider()
        {
            try
            {

                var rows = dt.Select("PartID=1");

                ListView1.DataSource = mc.GetRowsDefaultView(rows, dt);
                ListView1.DataBind();
            }
            catch (Exception ex)
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
                var rows = dt.Select("PartID=3");
                ListView2.DataSource = mc.GetRowsDefaultView(rows, dt);
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
                var rows = dt.Select("PartID=4");
                ListView3.DataSource = mc.GetRowsDefaultView(rows, dt);
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
                var rows = dt.Select("PartID=2");
                ListView4.DataSource = mc.GetRowsDefaultView(rows, dt).Take(2);
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





    }
}