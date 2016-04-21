using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    MyClass mc = new MyClass();
    DataTable dt = new DataTable();
    string sql = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillSlider();
            FillEvent();
            FillBlog();
            FillNews();
        }
    }
    public void FillSlider()
    {
        try
        {
            sql = "SELECT     TOP (3)  dbo.TItems.ItemTopic, dbo.TItems.PhotoName, dbo.TItems.SummaryTxt, dbo.TItems.ItemID, dbo.TItems.ShowDate " +
                "FROM         dbo.TItems INNER JOIN " +
                "dbo.TGroups ON dbo.TItems.GrpID = dbo.TGroups.GrpID INNER JOIN " +
                "dbo.TParts ON dbo.TGroups.PartID = dbo.TParts.PartID " +
                "WHERE   (dbo.TParts.PartID=1) and (dbo.TItems.FreshStat = 3) AND (dbo.TItems.PubStat = 9) AND (dbo.TGroups.CustomerID = {0}) AND (GETDATE() >= dbo.TItems.ShowDate) " +
                "ORDER BY dbo.TItems.ShowDate DESC";
            sql = string.Format(sql, mc.GetCustomer());
            mc.connect();
            dt = mc.select(sql);
            mc.disconnect();
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
        catch (Exception)
        {
        }
    }
    public void FillEvent()
    {
        try
        {
            sql = "SELECT     TOP (4)  dbo.TItems.ItemTopic, dbo.TItems.PhotoName, dbo.TItems.SummaryTxt, dbo.TItems.ItemID, dbo.TItems.ShowDate " +
                "FROM         dbo.TItems INNER JOIN " +
                "dbo.TGroups ON dbo.TItems.GrpID = dbo.TGroups.GrpID INNER JOIN " +
                "dbo.TParts ON dbo.TGroups.PartID = dbo.TParts.PartID " +
                "WHERE   (dbo.TParts.PartID=3) and (dbo.TItems.FreshStat = 3) AND (dbo.TItems.PubStat = 9) AND (dbo.TGroups.CustomerID = {0}) AND (GETDATE() >= dbo.TItems.ShowDate) " +
                "ORDER BY dbo.TItems.ShowDate DESC";
            sql = string.Format(sql, mc.GetCustomer());
            mc.connect();
            dt = mc.select(sql);
            mc.disconnect();
            ListView2.DataSource = dt;
            ListView2.DataBind();
        }
        catch (Exception)
        {
        }
    }
    public void FillBlog()
    {
        try
        {
            sql = "SELECT     TOP (2)  dbo.TItems.ItemTopic, dbo.TItems.PhotoName, dbo.TItems.SummaryTxt, dbo.TItems.ItemID, dbo.TItems.ShowDate " +
                "FROM         dbo.TItems INNER JOIN " +
                "dbo.TGroups ON dbo.TItems.GrpID = dbo.TGroups.GrpID INNER JOIN " +
                "dbo.TParts ON dbo.TGroups.PartID = dbo.TParts.PartID " +
                "WHERE   (dbo.TParts.PartID=4) and (dbo.TItems.FreshStat = 3) AND (dbo.TItems.PubStat = 9) AND (dbo.TGroups.CustomerID = {0}) AND (GETDATE() >= dbo.TItems.ShowDate) " +
                "ORDER BY dbo.TItems.ShowDate DESC";
            sql = string.Format(sql, mc.GetCustomer());
            mc.connect();
            dt = mc.select(sql);
            mc.disconnect();
            ListView3.DataSource = dt;
            ListView3.DataBind();
        }
        catch (Exception)
        {
        }
    }
    public void FillNews()
    {
        try
        {
            sql = "SELECT     TOP (2)  dbo.TItems.ItemTopic, dbo.TItems.PhotoName, dbo.TItems.SummaryTxt, dbo.TItems.ItemID, dbo.TItems.ShowDate " +
                "FROM         dbo.TItems INNER JOIN " +
                "dbo.TGroups ON dbo.TItems.GrpID = dbo.TGroups.GrpID INNER JOIN " +
                "dbo.TParts ON dbo.TGroups.PartID = dbo.TParts.PartID " +
                "WHERE   (dbo.TParts.PartID=2) and (dbo.TItems.FreshStat = 3) AND (dbo.TItems.PubStat = 9) AND (dbo.TGroups.CustomerID = {0}) AND (GETDATE() >= dbo.TItems.ShowDate) " +
                "ORDER BY dbo.TItems.ShowDate DESC";
            sql = string.Format(sql, mc.GetCustomer());
            mc.connect();
            dt = mc.select(sql);
            mc.disconnect();
            ListView4.DataSource = dt;
            ListView4.DataBind();
        }
        catch (Exception)
        {
        }
    }
}