<%@ Page Title="" Language="C#" MasterPageFile="~/GolestaneShohada/Design/MasterPage/WebMaster.Master" AutoEventWireup="true" CodeBehind="WarMap.aspx.cs" Inherits="CMS.GolestaneShohada.Design.fa.WarMap" %>

<%@ Register Src="~/GolestaneShohada/Controls/UscNaghsheManategheJangi.ascx" TagPrefix="uc2" TagName="UscNaghsheManategheJangi" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript"   src="http://maps.googleapis.com/maps/api/js?key=AIzaSyB2DiT3FNLpHAw407Iph1GNo8OT12ijhQg"></script>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPageHeading" runat="server">
</asp:Content>
 
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc2:UscNaghsheManategheJangi runat="server" ID="UscNaghsheManategheJangi" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="CPHfooter" runat="server">
</asp:Content>
