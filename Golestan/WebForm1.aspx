<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Golestan.WebForm1" %>

<%@ Register Src="~/Control/UscFullSearchAmaliat.ascx" TagPrefix="uc1" TagName="UscFullSearchAmaliat" %>
<%@ Register Src="~/Control/UscFullSearchShahid.ascx" TagPrefix="uc1" TagName="UscFullSearchShahid" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:UscFullSearchAmaliat runat="server" ID="UscFullSearchAmaliat" />
        <uc1:UscFullSearchShahid runat="server" ID="UscFullSearchShahid" />
    </div>
    </form>
</body>
</html>
