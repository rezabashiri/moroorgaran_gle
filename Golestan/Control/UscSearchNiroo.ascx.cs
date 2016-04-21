using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tkv.Utility;
using Golestan.Model;
namespace Golestan.Control
{
    public partial class UscSearchNiroo : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string SearchString
        {
            get
            {
                return GetSearchString();
            }
        }
        private string GetSearchString()
        {
            string query = string.Empty;



            if (!string.IsNullOrEmpty(cmbNiroo.SelectedValue))
                query += string.Format("IDNiroo = {0}", cmbNiroo.SelectedValue.ToInt32());
            if (!string.IsNullOrEmpty(cmbYegan.SelectedValue))
                query += string.Format(" and IDYegan = {0}", cmbYegan.SelectedValue.ToInt32());
            if (!string.IsNullOrEmpty(cmbVahed.SelectedValue))
                query += string.Format(" and IDVahed = {0}", cmbVahed.SelectedValue.ToInt32());


            if (!string.IsNullOrEmpty(query))
            {
                if (query.StartsWith(" and"))
                    query = query.Remove(0, 4);
                return query;
            }
            return string.Empty;

        }
        public List<Niroo> Niroo_getdata()
        {
            return new Niroo().SelectNiroo() ;
        }
        protected void cmbNiroo_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(cmbNiroo.SelectedValue))
            {
                int idNiroo = cmbNiroo.SelectedValue.ToInt32();
                cmbYegan.DataSource = new Yegan().SelectYeganByNiroo(idNiroo) ;
                cmbYegan.DataBind();
            }
        }

        protected void cmbYegan_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(cmbYegan.SelectedValue))
            {
                int idYegan = cmbYegan.SelectedValue.ToInt32();
                cmbVahed.DataSource = new Vahed().SelectVahedByYegan(idYegan) ;
                cmbVahed.DataBind();
            }
        }
    }
}