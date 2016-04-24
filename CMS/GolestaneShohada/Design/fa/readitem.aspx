<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="readitem.aspx.cs" Inherits="CMS.GolestaneShohada.Design.fa.readitem" MasterPageFile="~/GolestaneShohada/Design/MasterPage/WebMaster.Master" %>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPageHeading">
    <h1>
        <asp:Label ID="lblTopic" runat="server" ></asp:Label></h1>
        <p><span><i class="fa fa-calendar"></i>
            <asp:Label ID="lblDate" runat="server" ></asp:Label></span> <span><i class="fa fa-pencil"></i> <asp:Label ID="lblGrp" runat="server"></asp:Label> </span></p>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
            <div class="text-box lineH">
              <div class="right" id="DivItem" runat="server">
              </div>
            </div>
</asp:Content>