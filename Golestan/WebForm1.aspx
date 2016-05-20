<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Golestan.WebForm1" %>

<%@ Register Src="~/Control/UscFullSearchAmaliat.ascx" TagPrefix="uc1" TagName="UscFullSearchAmaliat" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:UscFullSearchAmaliat runat="server" ID="UscFullSearchAmaliat" />
    </div>
    </form>
</body>
</html>
