using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tkv.Utility;

namespace CMS.GolestaneShohada.Design.fa
{
    public partial class PerAmaliyat : System.Web.UI.Page
    {
        MyClass mc = new MyClass();
        public double X
        {
            get;
            set;
        }
        public double Y
        {
            get;
            set;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Fill();
            }
        }
        public void Fill()
        {
            int AmID = Helpers.QueryStringHelpers.GetValue(Helpers.QueryStringHelpers.QueryStrings.AmaliyatID).ToInt32();
            if (AmID == int.MinValue)
                return;

            var manategh = new Golestan.Helpers.InterFace().GetAmaliatMantagheByIDAmaliat(AmID);
            ListView2.DataSource = manategh;
            ListView2.DataBind();

            var yegan = new Golestan.Helpers.InterFace().GetAmaliatNirooByIDAmaliat(AmID);
            ListView1.DataSource = yegan;
            ListView1.DataBind();

            if (manategh != null)
            {
                lblName.Text = manategh[0].NameAmaliat;
                lblRmaz.Text = manategh[0].Ramz;
                lblStart.Text = mc.GetFarsiDate2(Convert.ToDateTime(manategh[0].TarikheShoroo), 0);
                lblend.Text = mc.GetFarsiDate2(Convert.ToDateTime(manategh[0].TarikhePayan), 0);
                Image1.ImageUrl = manategh[0].VirtualAddress;
                Image1.AlternateText = manategh[0].NameAmaliat;
                lblTozihat.Text = manategh[0].Tozihat;
                X = manategh[0].X ?? 0;
                Y = manategh[0].Y ?? 0;
            }
        }
    }
}