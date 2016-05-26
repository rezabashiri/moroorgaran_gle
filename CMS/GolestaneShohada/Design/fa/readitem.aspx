<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="readitem.aspx.cs" EnableEventValidation="false" Inherits="CMS.GolestaneShohada.Design.fa.readitem" MasterPageFile="~/GolestaneShohada/Design/MasterPage/WebMaster.Master" %>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPageHeading">
    <h1>
        <asp:Label ID="lblTopic" runat="server" ></asp:Label></h1>
        <p><span><i class="fa fa-calendar"></i>
            <asp:Label ID="lblDate" runat="server" ></asp:Label></span> <span><i class="fa fa-pencil"></i> <asp:Label ID="lblGrp" runat="server"></asp:Label> </span></p>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
        <div class="confirmMSG" id="confirmDiv" visible="false" runat="server"><i class="fa fa-check"></i>
            <asp:Label ID="lblOk" runat="server"></asp:Label></div>
        <div class="errorMSG" id="errorDiv" runat="server" visible="false"><i class="fa fa-remove"></i>
            <asp:Label ID="lblError" runat="server"></asp:Label></div>
    <div class="frame"><a href="#"><img  style="float:right;max-height:447px;margin-left:3px;" id="itemImage"  runat="server" alt="img"/></a></div>
            <div class="text-box lineH">
              <div class="right" id="DivItem" runat="server">
              </div>
            </div>
    
    <div class="comment-box" id="DivExDiv" runat="server" visible="false">
<h3>دیدگاه ها</h3>
<div class="comments">
<ul>
 
    <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
            <li>
<div class="text-outer">
<div class="text">
<div class="text-outer-1"> <strong class="title"><%# DataBinder.Eval(Container.DataItem, "WrittenBy") %></strong>
<p><%# DataBinder.Eval(Container.DataItem, "CmtTxt") %></p>
<a class="date" ><i class="fa fa-calendar"></i><%# MyClass.GetFarsiDate(Eval("CmtDate")) %></a></div>
</div>
</div>
</li>
        </ItemTemplate>
    </asp:ListView>
</ul>
</div>
</div>
    <div id="DivComment" runat="server" visible="false">
<form class="comment-form" >
                <h4>دیدگاه شما</h4>
                <ul class="CoverComment">
                  <li> <i class="fa fa-user"></i>
                      <asp:TextBox ID="txtName" runat="server"  placeholder="نام شما" CssClass="comment-input"></asp:TextBox>
                  </li>
                  <li> <i class="fa fa-envelope-o"></i>
                      <asp:TextBox ID="txtMail" runat="server"  placeholder="ایمیل" CssClass="comment-input" ></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="ایمیل خود را به صورت صحیح وارد نمایید" ControlToValidate="txtMail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" Font-Size="Smaller"></asp:RegularExpressionValidator>
                  </li>
                </ul>
                <div class="text-area-box"> <i class="fa fa-pencil"></i>
                    <asp:TextBox ID="txtBody" runat="server" CssClass="comment-textarea" placeholder="متن" Rows="10" Columns="10" TextMode="MultiLine"></asp:TextBox>
                    <asp:Button ID="btnSubmit" runat="server" Text="ثبت" CssClass="comment-btn-sumbit" OnClick="btnSubmit_Click" />
                </div>
              </form></div>
</asp:Content>