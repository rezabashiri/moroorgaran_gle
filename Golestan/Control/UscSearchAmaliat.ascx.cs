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
    public partial class UscSearchAmaliat : System.Web.UI.UserControl
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

            if (!string.IsNullOrEmpty(txtName.Text))
                query += string.Format("NameAmaliat like N'%{0}%'", txtName.Text);
            if (!string.IsNullOrEmpty(txtRamz.Text))
                query += string.Format(" and Ramz like N'%{0}%'", txtRamz.Text);
            if (!string.IsNullOrEmpty(txtYadmanName.Text))
                query += string.Format(" and NameNoghteAsar like N'%{0}%'", txtYadmanName.Text);


            if (!string.IsNullOrEmpty(cmbMantaghe.SelectedValue))
                query += string.Format(" and IDMantaghe = {0}", cmbMantaghe.SelectedValue.ToInt32());
            if (!string.IsNullOrEmpty(cmbMogheyat.SelectedValue))
                query += string.Format(" and IDMogheyat = {0}", cmbMogheyat.SelectedValue.ToInt32());
            if (!string.IsNullOrEmpty(cmbNoghteAsar.SelectedValue))
                query += string.Format(" and IDNoghteAsar = {0}", cmbNoghteAsar.SelectedValue.ToInt32());
            if (dpcShorooAz.Date != null)
                query += string.Format(" and TarikheShoroo >= {0}", dpcShorooAz.Date);
            if (dpcShorooTa.Date != null)
                query += string.Format(" and TarikheShoroo <= {0}", dpcShorooTa.Date);
            if (dpcPayanAz.Date != null)
                query += string.Format(" and TarikhePayan >= {0}", dpcPayanAz.Date);
            if (dpcPayanTa.Date != null)
                query += string.Format(" and TarikhePayan >= {0}", dpcPayanTa.Date);
             
            if (!string.IsNullOrEmpty(query))
            {
                if (query.StartsWith(" and"))
                    query = query.Remove(0, 4);
                return query;
            }
            return string.Empty;

        }
        public List<Mantaghe> Mantaghe_getdata()
        {
            return new Mantaghe().SelectMantaghe();
        }
        protected void cmbMantaghe_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(cmbMantaghe.SelectedValue))
            {
                int idmantaghe = cmbMantaghe.SelectedValue.ToInt32();
                cmbMogheyat.DataSource = new Mogheyat().SelectMogheyatByMantaghe(idmantaghe) ;
                cmbMogheyat.DataBind();
            }
        }

        protected void cmbMogheyat_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(cmbMogheyat.SelectedValue))
            {
                int idmogheyat = cmbMogheyat.SelectedValue.ToInt32();
                cmbNoghteAsar.DataSource = new NoghteAsar().SelectNoghteAsarByMogheyat(idmogheyat) ;
                cmbNoghteAsar.DataBind();
            }
        }
    }
}