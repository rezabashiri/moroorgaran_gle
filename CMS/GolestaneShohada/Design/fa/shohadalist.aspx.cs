using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CMS.GolestaneShohada.Design.fa
{
    public partial class shohadalist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillList();
        }
        public void FillList()
        {
            ListView1.DataSource = shahidsearch.DataSource;
            ListView1.DataBind();
        }
    }
}