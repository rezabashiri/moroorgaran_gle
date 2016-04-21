<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UscFullSearchShahid.ascx.cs" ClassName="Golestan.Control.FullShahidSearch" Inherits="Golestan.Control.UscFullSearchShahid" %>
<%@ Register Src="~/Control/UscSearchShahid.ascx" TagPrefix="uc1" TagName="UscSearchShahid" %>
<%@ Register Src="~/Control/UscSearchAmaliat.ascx" TagPrefix="uc1" TagName="UscSearchAmaliat" %>
<%@ Register Src="~/Control/UscSearchNiroo.ascx" TagPrefix="uc1" TagName="UscSearchNiroo" %>

 


<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#home">شهید</a></li>
  <li><a data-toggle="tab" href="#menu1">عملیات</a></li>
  <li><a data-toggle="tab" href="#menu2">یگان</a></li>
</ul>

<div class="tab-content">
  <div id="home" class="tab-pane fade in active">
   
    <p><uc1:UscSearchShahid runat="server" ID="UscSearchShahid" />
</p>
  </div>
  <div id="menu1" class="tab-pane fade">
     
    <p><uc1:UscSearchAmaliat runat="server" ID="UscSearchAmaliat" /></p>
  </div>
  <div id="menu2" class="tab-pane fade">
     
    <p><uc1:UscSearchNiroo runat="server" ID="UscSearchNiroo" /></p>
  </div>
</div>
<div class="row">
    <div class="col-sm-12 text-center">
        <asp:Button runat="server" ID="btnSearch" Text="جستجو" CssClass="btn btn-info" OnClick="btnSearch_Click" />
    </div>
</div>