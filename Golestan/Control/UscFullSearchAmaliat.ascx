<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UscFullSearchAmaliat.ascx.cs" ClassName="Golestan.Control.FullSearchAmaliat" Inherits="Golestan.Control.UscFullSearchAmaliat" %>

<%@ Register Src="~/Control/UscSearchAmaliat.ascx" TagPrefix="uc1" TagName="UscSearchAmaliat" %>
<%@ Register Src="~/Control/UscSearchNiroo.ascx" TagPrefix="uc1" TagName="UscSearchNiroo" %>

 <div class="tab-area">


<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#menu1">عملیات</a></li>
  <li><a data-toggle="tab" href="#menu2">یگان</a></li>
   
    
</ul>

<div class="tab-content">
 
  <div id="menu1" class="tab-pane fade in active">
      <div class="tab-text-box">
    <p><uc1:UscSearchAmaliat runat="server" ID="UscSearchAmaliat" />
          </div>
  </div>
  <div id="menu2" class="tab-pane fade">
      <div class="tab-text-box">
    <p><uc1:UscSearchNiroo runat="server" ID="UscSearchNiroo" />
          </div>
  </div>
</div>
<div class="row">
    <div class="col-sm-12 text-center">
        <asp:Button runat="server" ID="btnSearch" Text="جستجو" CssClass="btn btn-info" OnClick="btnSearch_Click" />
    </div>
</div>
    </div>