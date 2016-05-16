using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Golestan.Model;
namespace Golestan.Control
{
    public partial class UscFullSearchAmaliat : System.Web.UI.UserControl
    {
        public delegate void AmaliatDataBind(List<ViewAmaliat> DataSource);
        public event AmaliatDataBind OnDataBind;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Amaliat _amaliat = new Amaliat();
            var res = _amaliat.SearchAmaliatByQuery(Querybuild());
            OnDataBind(res);
        }
        private string Querybuild()
        {
            string query = "select * from ViewAmaliat";
            string condition = string.Empty;
            string amaliatsearch = UscSearchAmaliat.SearchString;
            string niroosearch = UscSearchNiroo.SearchString;
            if (!string.IsNullOrEmpty(amaliatsearch))
            {
                condition = string.Format("IDAmaliat in (select IDAmaliat from ViewAmaiatMantaghe where {0} )", amaliatsearch);
            }
            if (!string.IsNullOrEmpty(niroosearch))
            {
                string q3 = string.Format("IDAmaliat in (select ID from ViewAmaliatNiroo where {0} )", niroosearch);
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