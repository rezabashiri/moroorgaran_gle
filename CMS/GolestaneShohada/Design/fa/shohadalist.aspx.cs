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
            Uscshahidsearch.OnDataBind += Uscshahidsearch_OnDataBind;  //این کار نمیکند؟! ها
        }

        void Uscshahidsearch_OnDataBind(List<Golestan.Model.ViewShahid> DataSource)
        {
            PagedDataSource pds = new PagedDataSource();
            pds.DataSource = DataSource;
            pds.AllowPaging = true;
            pds.PageSize = 2;

            pds.CurrentPageIndex = CurrentPage;
            int count = pds.PageCount;
            lblCurrentPage.Text = (CurrentPage + 1).ToString();
            // Disable Prev or Next buttons if necessary
            lnkbtnPrev.Enabled = !pds.IsFirstPage;
            lnkbtnnext.Enabled = !pds.IsLastPage;

            ListView1.DataSource = pds;
            ListView1.DataBind();
                      
        }
        public int CurrentPage
        {
            get
            {
                // look for current page in ViewStat
                object o = this.ViewState["_CurrentPage"];
                if (o == null)
                    return 0; // default to showing the first page
                else
                    return (int)o;
            }
            set
            {
                this.ViewState["_CurrentPage"] = value;
            }

        }
        public string CreateLink(object id)
        {
            if (id != null)
            {
                string link = string.Format("PerShahid.aspx?{0}", Helpers.QueryStringHelpers.SetValue(Helpers.QueryStringHelpers.QueryStrings.shahidID, id.ToString()));
                return link;
            }
            return string.Empty;
        }

        protected void lnkbtnnext_Click(object sender, EventArgs e)
        {
            CurrentPage += 1;
            Uscshahidsearch.OnDataBind += Uscshahidsearch_OnDataBind;
        }

        protected void lnkbtnPrev_Click(object sender, EventArgs e)
        {
            CurrentPage -= 1;
            Uscshahidsearch.OnDataBind += Uscshahidsearch_OnDataBind;
        }
    }
}