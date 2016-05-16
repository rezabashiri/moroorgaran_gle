<%@ Page Title="" Language="C#" MasterPageFile="~/GolestaneShohada/Design/MasterPage/WebMaster.Master" AutoEventWireup="true" CodeBehind="GolestanMap.aspx.cs" Inherits="CMS.GolestaneShohada.Design.fa.GolestanMap" %>

<%@ Register Src="~/GolestaneShohada/Controls/UscNaghsheGolestanShohada.ascx" TagPrefix="uc2" TagName="UscNaghsheGolestanShohada" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <%--<script type="text/javascript" src="/GolestaneShohada/Design/Js/seadragon-min.js" lang="ja"></script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPageHeading" runat="server">
</asp:Content>
 
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc2:UscNaghsheGolestanShohada runat="server" ID="UscNaghsheGolestanShohada" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="CPHfooter" runat="server">
</asp:Content>
