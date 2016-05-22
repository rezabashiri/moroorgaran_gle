using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Golestan.Model;
using tkv.Utility;
namespace Golestan.Control
{
    public partial class UscSearchShahid : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public List<Ostan> Ostan_getdata()
        {
            return new Ostan().SelectOstan();
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

            if (!string.IsNullOrEmpty(txtName.Text))
                query += string.Format("Name like N'%{0}%'",txtName.Text);
            if (!string.IsNullOrEmpty(txtFamily.Text))
                query += string.Format(" and Family like N'%{0}%'", txtFamily.Text);
            if (!string.IsNullOrEmpty(txtShomareShenasname.Text))
                query += string.Format(" and ShomareShenasname like N'%{0}%'", txtShomareShenasname.Text);
           
            if (!string.IsNullOrEmpty(cmbJensiat.SelectedValue))
                query += string.Format(" and Jensiat = N'{0}'", cmbJensiat.SelectedValue);
            if (!string.IsNullOrEmpty(cmbOstan.SelectedValue))
                query += string.Format(" and IDOstan = {0}", cmbOstan.SelectedValue.ToInt32());
            if (!string.IsNullOrEmpty(cmbShahrestan.SelectedValue))
                query += string.Format(" and IDShahrestan = {0}", cmbShahrestan.SelectedValue.ToInt32());
            if (!string.IsNullOrEmpty(cmbBakhsh.SelectedValue))
                query += string.Format(" and IDBakhsh = {0}", cmbBakhsh.SelectedValue.ToInt32());
            if (dpcTavalodAz.Date != null)
                query += string.Format(" and TarikheTavalod >= {0}", dpcTavalodAz.Date.Value.ToShortDateString());
            if (dpcTavalodTa.Date != null)
                query += string.Format(" and TarikheTavalod <= {0}", dpcTavalodTa.Date.Value.ToShortDateString());
            if (dpcShahadatAz.Date != null)
                query += string.Format(" and TarikheShahadat >= {0}", dpcShahadatAz.Date.Value.ToShortDateString());
            if (dpcShahidTa.Date != null)
                query += string.Format(" and TarikheShahadat >= {0}", dpcShahidTa.Date.Value.ToShortDateString());
           
            if (!string.IsNullOrEmpty(query))
            {
                if (query.StartsWith(" and"))
                    query = query.Remove(0, 4);
                return query;
            }
            return string.Empty;
          

        }

        protected void cmbOstan_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(cmbOstan.SelectedValue))
            {
                int idostan = cmbOstan.SelectedValue.ToInt32();
                cmbShahrestan.Items.Clear();
                cmbShahrestan.Items.Add(new ListItem() { Text = "انتخاب کنید", Value = "" });
                cmbShahrestan.DataSource = new Shahrestan().SelectShahrestanByOstan(idostan).ToList();
                cmbShahrestan.DataBind();
            }
        }

        protected void cmbShahrestan_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(cmbShahrestan.SelectedValue))
            {
                int idshahrestan = cmbShahrestan.SelectedValue.ToInt32();
                cmbBakhsh.Items.Clear();
                cmbBakhsh.Items.Add(new ListItem() { Text = "انتخاب کنید", Value = "" });
                cmbBakhsh.DataSource = new Bakhsh().SelectBakhshByShahrestan(idshahrestan) ;
                cmbBakhsh.DataBind();
            }
        }
    }
}