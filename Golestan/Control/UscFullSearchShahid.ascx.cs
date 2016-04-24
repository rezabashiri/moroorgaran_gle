using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Golestan.Model;
namespace Golestan.Control
{
    public partial class UscFullSearchShahid : System.Web.UI.UserControl
    {
        public delegate void DataBind(List<ViewShahid> DataSource);
            public event DataBind OnDataBind;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public List<ViewShahid> DataSource
        {
            get;
            set;
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Shahid _shahid = new Shahid();
            DataSource = _shahid.SearchShahidByQuery(QueryBuild());
            OnDataBind(DataSource);
        }
        private string QueryBuild()
        {
            string query = string.Empty;
            string condition=string.Empty;
            query = "select * from ViewShahid";

            if (!string.IsNullOrEmpty(UscSearchShahid.SearchString))
            {
                condition = UscSearchShahid.SearchString;
            }
            if (!string.IsNullOrEmpty(UscSearchAmaliat.SearchString))
            {
                string q2 = string.Format("ID in (select IDShahid from ViewShahidAmaliat where {0} )", UscSearchAmaliat.SearchString);
                if (!string.IsNullOrEmpty(condition))
                    condition += " and " + q2;
                else
                    condition = q2;
            }
            if (!string.IsNullOrEmpty(UscSearchNiroo.SearchString))
            {
                string q3 = string.Format("ID in (select IDShahid from ViewShahidAmaliat where {0} )", UscSearchNiroo.SearchString);
                if (!string.IsNullOrEmpty(condition))
                    condition += " and " + q3;
                else
                    condition = q3;
            }
            if (!string.IsNullOrEmpty(condition))
                return string.Format("{0} where {1}", query, condition);
            else
                return query;
        }
    }
}