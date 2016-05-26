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
    public partial class readitem : System.Web.UI.Page
    {
        MyClass mc = new MyClass();
        DataTable dt = new DataTable();
        string sql = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Fill();
                BindComment();
            }
        }
        protected void Fill()
        {
            try
            {
                int id = Request.QueryString["itemID"].ToInt32();
                if (id == int.MinValue)
                    return;
                dt = new CMSLogic.DateBaseHelprs().GetItemsByparameter("1", string.Format("ItemID={0}", id));
              
              
                string title = dt.Rows[0]["ItemTopic"].ToString();
                lblTopic.Text = title;
                lblDate.Text = mc.GetFarsiDate2(Convert.ToDateTime(dt.Rows[0]["ShowDate"]), 0);
                lblGrp.Text = dt.Rows[0]["GrpName"].ToString();
                //imgItem.ImageUrl = "http://www.???.ir/CMS/files/photoItems/" + dt.Rows[0]["PhotoName"];
                //imgItem.AlternateText = title;
                DivItem.InnerHtml = dt.Rows[0]["BodyTxt"].ToString();
                itemImage.Src = "/files/photoItems/" + dt.Rows[0]["PhotoName"].ToString();
                Page.Title = title;
                Page.MetaDescription = dt.Rows[0]["SummaryTxt"].ToString();
            }
            catch (Exception)
            {
            }
        }
        protected void BindComment()
        {
            int itemID = Convert.ToInt32(Request.QueryString["itemID"]);
            sql = "select CommentStat from TItems where ItemID=" + itemID;
            mc.connect();
            int CmtStat = Convert.ToInt32(mc.docommandScalar(sql));
            if (CmtStat != 7)
            {
                DivComment.Visible = true;
                sql = "SELECT     dbo.TComments.CmtID, dbo.TComments.WrittenBy, dbo.TComments.CmtTxt, dbo.TComments.CmtDate " +
                    " FROM   dbo.TComments INNER JOIN " +
                    " dbo.TItems ON dbo.TComments.ItemID = dbo.TItems.ItemID " +
                    " WHERE     (dbo.TComments.StatID = 17) AND (dbo.TComments.ItemID = {0}) ORDER BY dbo.TComments.CmtDate DESC";
                sql = string.Format(sql, itemID);
                dt = mc.select(sql);
                mc.disconnect();
                if (dt.Rows.Count > 0) DivExDiv.Visible = true;
                ListView1.DataSource = dt;
                ListView1.DataBind();
            }
        }
        protected void insertComment()
        {
            try
            {
                int itemID = Convert.ToInt32(Request.QueryString["itemID"]);
                sql = "select CommentStat from TItems where ItemID=" + itemID;
                mc.connect();
                int cmtStat = Convert.ToInt32(mc.docommandScalar(sql));
                int stat = 0;
                string msg = "";
                if (cmtStat == 6)
                {
                    stat = 17;
                    msg = "نظر شما با موفقیت ثبت گردید";
                }
                else if (cmtStat == 8)
                {
                    stat = 15;
                    msg = "نظر شما ثبت گردید و پس از تائید مدیریت نمایش داده خواهد شد";
                }
                sql = "insert into TComments (ItemID,WrittenBy,CmtTxt,CmtDate,StatID,WriterEmail) values ({0},N'{1}',N'{2}','{3}',{4},N'{5}')";
                sql = string.Format(sql, itemID, txtName.Text, txtBody.Text, DateTime.Now, stat, txtMail.Text);
                mc.docommand(sql);
                mc.disconnect();
                if (cmtStat == 6)
                {
                    BindComment();
                    Page.Title = Session["pgT"].ToString();
                    Page.MetaDescription = Session["pgD"].ToString();
                }
                errorDiv.Visible = false;
                confirmDiv.Visible = true;
                lblOk.Text = msg;
                ClearTxt();
            }
            catch (Exception)
            {
                confirmDiv.Visible = false;
                errorDiv.Visible = true;
                lblError.Text = "خطا 113: نظر شما ثبت نشد لطقا دوباره تلاش نمایید";
            }
        }
        protected void ClearTxt()
        {
            txtName.Text = "";
            txtMail.Text = "";
            txtBody.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "" && txtBody.Text != "")
            {
                insertComment();
            }
            else
            {
                confirmDiv.Visible = false;
                errorDiv.Visible = true;
                lblError.Text = "لطفا نام، ایمیل و متن نظر خود را تکمیل نمایید";
            }
        }
    }
}