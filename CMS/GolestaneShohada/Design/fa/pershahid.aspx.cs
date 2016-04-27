using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tkv.Utility;

namespace CMS.GolestaneShohada.Design.fa
{
    public partial class pershahid : System.Web.UI.Page
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
            int shahidID = Helpers.QueryStringHelpers.GetValue(Helpers.QueryStringHelpers.QueryStrings.shahidID).ToInt32();
            if (shahidID == int.MinValue)
                return;
            var Myshahid = new Golestan.Helpers.InterFace().GetShahidAmaliatByID(shahidID);
            if (Myshahid == null)
                return;
            lblName.Text = Myshahid.Name;
            lblFamily.Text = Myshahid.Family;
            Title = string.Format("{0} {1}", Myshahid.Name, Myshahid.Family);
            if (Myshahid.TarikheShahadat.HasValue)
            {
                lbldayofWeek.Text = Myshahid.TarikheShahadat.Value.PersianDayOfWeek();
                lblDay.Text = Myshahid.TarikheShahadat.Value.ToPersianDate().Day.ToString();
                lblMonth.Text = mc.GetFarsiDate2(Convert.ToDateTime(Myshahid.TarikheShahadat), 3);
                lblyear.Text = Myshahid.TarikheShahadat.Value.ToPersianDate().Year.ToString();
            }
            lblTavalod.Text = Myshahid.TarikheTavalod.HasValue ? Myshahid.TarikheTavalod.Value.ToPersianDate().ToShortDateString() : string.Empty;
            lblFather.Text = Myshahid.NamePedar;
            lblShahr.Text = Myshahid.NameShahrestan;
            lblGhete.Text = Myshahid.NameGhate;
            UscShahidMaghbare.GhateID = Myshahid.GhateID.ToString();
            X = Myshahid.X ?? 0;
            Y = Myshahid.Y ?? 0;
            lblamaliat.Text = Myshahid.NameAmaliat;
            lblSemat.Text = Myshahid.NameRaste;
            lblYegan.Text = Myshahid.NameYegan;
            lblNiroo.Text = Myshahid.NameNiroo;
            Image1.ImageUrl = Myshahid.VirtualAddress;
            Image1.AlternateText = "درباره شهید" + " " + Myshahid.Name + " " + Myshahid.Family;
            Image1.ToolTip = Myshahid.Name + " " + Myshahid.Family;

            ListView1.DataSource = new Golestan.Helpers.InterFace().GetShahidMatalebEzafe(shahidID);
            ListView1.DataBind();
            ListView2.DataSource = new Golestan.Helpers.InterFace().GetShahidAshenayan(shahidID);
            ListView2.DataBind();

         

        }
    }
}