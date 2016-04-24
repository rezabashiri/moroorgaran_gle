using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMS
{
    public partial class MapTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var res = new Golestan.Helpers.InterFace().GetShahidCloserToDeath(1);
        }
    }
}