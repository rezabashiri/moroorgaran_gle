using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CMS.GolestaneShohada.Design.fa
{
    public partial class ideageneration : System.Web.UI.Page
    {
        MyClass mc = new MyClass();
        DataTable dt = new DataTable();
        string sql = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Fill();
            }
        }
        //protected void Fill()
        //{
        //    try
        //    {
        //        int id = Convert.ToInt32(Request.QueryString["itemID"]);
        //        sql = "SELECT        TOP (100) PERCENT dbo.TItems.ItemTopic, dbo.TItems.SummaryTxt, dbo.TItems.BodyTxt, dbo.TItems.ShowDate, dbo.TGroups.GrpName " +
        //            " FROM            dbo.TGroups INNER JOIN dbo.TItems ON dbo.TGroups.GrpID = dbo.TItems.GrpID " +
        //            " WHERE        (dbo.TItems.FreshStat = 3) AND (dbo.TItems.PubStat = 9) AND (GETDATE() >= dbo.TItems.ShowDate) AND (dbo.TItems.ItemID = {0}) " +
        //            " ORDER BY dbo.TItems.ShowDate DESC";
        //        sql = string.Format(sql, id);
        //        mc.connect();
        //        dt = mc.select(sql);
        //        mc.disconnect();
        //        string title = dt.Rows[0]["ItemTopic"].ToString();
        //        lblTopic.Text = title;
        //        lblDate.Text = mc.GetFarsiDate2(Convert.ToDateTime(dt.Rows[0]["ShowDate"]), 0);
        //        lblGrp.Text = dt.Rows[0]["GrpName"].ToString();
        //        //imgItem.ImageUrl = "http://www.???.ir/CMS/files/photoItems/" + dt.Rows[0]["PhotoName"];
        //        //imgItem.AlternateText = title;
        //        DivItem.InnerHtml = dt.Rows[0]["BodyTxt"].ToString();
        //        Page.Title = title;
        //        Page.MetaDescription = dt.Rows[0]["SummaryTxt"].ToString();
        //    }
        //    catch (Exception)
        //    {
        //    }
        //}
        //protected void BindComment()
        //{
        //    int itemID = Convert.ToInt32(Request.QueryString["itemID"]);
        //    sql = "select CommentStat from TItems where ItemID=" + itemID;
        //    mc.connect();
        //    int CmtStat = Convert.ToInt32(mc.docommandScalar(sql));
        //    if (CmtStat != 7)
        //    {
        //        DivComment.Visible = true;
        //        sql = "SELECT     dbo.TComments.CmtID, dbo.TComments.WrittenBy, dbo.TComments.CmtTxt, dbo.TComments.CmtDate " +
        //            " FROM   dbo.TComments INNER JOIN " +
        //            " dbo.TItems ON dbo.TComments.ItemID = dbo.TItems.ItemID " +
        //            " WHERE     (dbo.TComments.StatID = 17) AND (dbo.TComments.ItemID = {0}) ORDER BY dbo.TComments.CmtDate DESC";
        //        sql = string.Format(sql, itemID);
        //        dt = mc.select(sql);
        //        mc.disconnect();
        //        if (dt.Rows.Count > 0) DivExDiv.Visible = true;
        //        ListView2.DataSource = dt;
        //        ListView2.DataBind();
        //    }
        //}
        //protected void insertComment()
        //{
        //    try
        //    {
        //        int itemID = Convert.ToInt32(Request.QueryString["itemID"]);
        //        sql = "select CommentStat from TItems where ItemID=" + itemID;
        //        mc.connect();
        //        int cmtStat = Convert.ToInt32(mc.docommandScalar(sql));
        //        int stat = 0;
        //        string msg = "";
        //        if (cmtStat == 6)
        //        {
        //            stat = 17;
        //            msg = "نظر شما با موفقیت ثبت گردید";
        //        }
        //        else if (cmtStat == 8)
        //        {
        //            stat = 15;
        //            msg = "نظر شما ثبت گردید و پس از تائید مدیریت نمایش داده خواهد شد";
        //        }
        //        sql = "insert into TComments (ItemID,WrittenBy,CmtTxt,CmtDate,StatID,WriterEmail) values ({0},N'{1}',N'{2}','{3}',{4},N'{5}')";
        //        sql = string.Format(sql, itemID, txtName.Text, txtBodyCmt.Text, DateTime.Now, stat, txtMail.Text);
        //        mc.docommand(sql);
        //        mc.disconnect();
        //        if (cmtStat == 6)
        //        {
        //            BindComment();
        //            Page.Title = Session["pgT"].ToString();
        //            Page.MetaDescription = Session["pgD"].ToString();
        //        }
        //        errorDiv.Visible = false;
        //        confirmDiv.Visible = true;
        //        lblOk.Text = msg;
        //        ClearTxt();
        //    }
        //    catch (Exception)
        //    {
        //        confirmDiv.Visible = false;
        //        errorDiv.Visible = true;
        //        lblError.Text = "خطا 113: نظر شما ثبت نشد لطقا دوباره تلاش نمایید";
        //    }
        //}
        //protected void ClearTxt()
        //{
        //    txtName.Text = "";
        //    txtMail.Text = "";
        //    txtBodyCmt.Text = "";
        //    txtCaptcha.Text = "";
        //}
        //protected void Button1_Click1(object sender, EventArgs e)
        //{
        //    string captcha = txtCaptcha.Text;
        //    if (txtMail.Text != "" && txtName.Text != "" && txtBodyCmt.Text != "" && captcha == Session["LoyatyMathCaptcha"].ToString())
        //    {
        //        insertComment();
        //    }
        //    else if (captcha != Session["LoyatyMathCaptcha"].ToString())
        //    {
        //        txtCaptcha.Text = "";
        //        confirmDiv.Visible = false;
        //        errorDiv.Visible = true;
        //        lblError.Text = "عبارت امنیتی صحیح نمی باشد";
        //    }
        //    else
        //    {
        //        confirmDiv.Visible = false;
        //        errorDiv.Visible = true;
        //        lblError.Text = "لطفا نام، ایمیل و متن نظر خود را تکمیل نمایید";
        //    }
        //}

    }
}