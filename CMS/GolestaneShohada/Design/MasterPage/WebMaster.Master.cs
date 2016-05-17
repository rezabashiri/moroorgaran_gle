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
                //if (!string.IsNullOrEmpty(amaliat.Name))
                lblAmaliat.Text = string.Format("عملیات {0} شروع خواهد شد", amaliat.Name);
            }

        }
        public void FillNews()
        {


            if (ListView1 != null)
            {
                ListView1.DataSource = new CMSLogic.DateBaseHelprs().GetItemsByparameter("10", "PartID<>1");
                ListView1.DataBind();
            }
        }
    }
}