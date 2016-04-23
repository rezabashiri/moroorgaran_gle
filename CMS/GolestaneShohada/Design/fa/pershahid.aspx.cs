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
        }
    }
}