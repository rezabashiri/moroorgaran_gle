﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMS.GolestaneShohada.Controls
{
    public partial class UscShahidMaghbare : System.Web.UI.UserControl
    {
        public string GhateID
        {
            get;
            set;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            GhateID = "1";
        }
    }
}