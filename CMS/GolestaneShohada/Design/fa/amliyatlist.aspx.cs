using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using tkv.Utility;
namespace CMS.GolestaneShohada.Design.fa
{
    public partial class amliyatlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //FullSearchAmaliat.OnDataBind += Uscshahidsearch_OnDataBind;
            UscFullSearchAmaliat.OnDataBind += UscSearchAmaliat_OnDataBind;


            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Helpers.QueryStringHelpers.GetGhateID()))
                {
                    Golestan.Helpers.InterFace _int = new Golestan.Helpers.InterFace();
                   //UscSearchAmaliat_OnDataBind( _int.Search_SahidByGhateID(Helpers.QueryStringHelpers.GetGhateID().ToInt32()));
                }
            }
        }

        void UscSearchAmaliat_OnDataBind(List<Golestan.Model.ViewAmaliat> DataSource)
        {
            PagedDataSource pds = new PagedDataSource();
            pds.DataSource = DataSource;
            pds.AllowPaging = true;
            pds.PageSize = 10;

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
                string link = string.Format("PerAmaliyat.aspx?{0}", Helpers.QueryStringHelpers.SetValue(Helpers.QueryStringHelpers.QueryStrings.AmaliyatID, id.ToString()));
                return link;
            }
            return string.Empty;
        }

        protected void lnkbtnnext_Click(object sender, EventArgs e)
        {
            CurrentPage += 1;
            //Uscam.SearchShahid();
            // should call search button again
        }

        protected void lnkbtnPrev_Click(object sender, EventArgs e)
        {
            CurrentPage -= 1;
            //Uscshahidsearch.SearchShahid();
            // should call search button again   
        }
    }
}