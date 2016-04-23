using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMS.GolestaneShohada.Design.fa
{
    public partial class pershahid : System.Web.UI.Page
    {
        MyClass mc = new MyClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Fill();
            }
        }
        public void Fill()
        {
            int shahidID = Convert.ToInt32(Request.QueryString["shahidID"]);
            var Myshahid = new Golestan.Helpers.InterFace().GetShahidByID(shahidID);
            lblName.Text = Myshahid.Name.ToString();
            lblFamily.Text = Myshahid.Family.ToString();
            lbldayofWeek.Text = mc.GetFarsiDate2(Convert.ToDateTime(Myshahid.TarikheShahadat), 1);
            lblDay.Text = mc.GetFarsiDate2(Convert.ToDateTime(Myshahid.TarikheShahadat), 2);
            lblMonth.Text = mc.GetFarsiDate2(Convert.ToDateTime(Myshahid.TarikheShahadat), 3);
            lblyear.Text = mc.GetFarsiDate2(Convert.ToDateTime(Myshahid.TarikheShahadat), 4);

            lblTavalod.Text = mc.GetFarsiDate2(Convert.ToDateTime(Myshahid.TarikheTavalod),0);
            lblFather.Text = Myshahid.NamePedar.ToString();
            lblShahr.Text = Myshahid.NameShahrestan.ToString();
            lblGhete.Text = Myshahid.NameGhate.ToString();

            // image will be added.
        }
    }
}