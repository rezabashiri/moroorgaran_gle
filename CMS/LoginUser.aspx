<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginUser.aspx.cs" Inherits="CMS.LoginUser" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>
<html>
<head>
    <!--META-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ورود به کنترل پنل مدیریت</title>
    <!--STYLESHEETS-->
    <link href="../css/MgrLogin_style.css" rel="stylesheet" type="text/css" />
    <!--SCRIPTS-->
    <script type="text/javascript" src="../js/jquery-1.6.3.min.js"></script>
    <!--Slider-in icons-->
    <script type="text/javascript">
        $(document).ready(function () {
            $("#LoginControl_txtUserName").addClass("input");
            $("#LoginControl_txtPassword").addClass("input");
            $("#LoginControl_btnLogin").addClass("button");
            $(".username").focus(function () {
                $(".user-icon").css("left", "-48px");
            });
            $(".username").blur(function () {
                $(".user-icon").css("left", "0px");
            });

            $(".password").focus(function () {
                $(".pass-icon").css("left", "-48px");
            });
            $(".password").blur(function () {
                $(".pass-icon").css("left", "0px");
            });
        });
    </script>
</head>
<body>
    <!--WRAPPER-->
    <div id="wrapper">
        <!--SLIDE-IN ICONS-->
        <div class="user-icon">
        </div>
        <div class="pass-icon">
        </div>
        <!--END SLIDE-IN ICONS-->
        <!--LOGIN FORM-->
        <form id="Form1" name="login-form" class="login-form"  runat="server">
                      <telerik:RadScriptManager  ID="RadScriptManager1"  runat="server"></telerik:RadScriptManager>

        <!--HEADER-->
        <div class="header">
            <!--TITLE-->
            <h1>
                ورود به کنترل پنل مدیریت</h1>
            <!--END TITLE-->
            <!--DESCRIPTION-->
            <span>
                <asp:Label ID="lblSiteTitle" runat="server"></asp:Label>
                <br />
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </span>
            <!--END DESCRIPTION-->
        </div>
        <!--END HEADER-->
        <!--CONTENT-->
        <div class="content">
          <uc1:Login runat="server" ID="LoginControl"></uc1:Login>
        </div>
        <!--END CONTENT-->
        <!--FOOTER-->
        <div class="footer">
            <!--LOGIN BUTTON-->
             <!--END LOGIN BUTTON-->
        </div>
        <!--END FOOTER-->
        </form>
        <!--END LOGIN FORM-->
    </div>
    <!--END WRAPPER-->
    <!--GRADIENT-->
    <div class="gradient">
    </div>
    <!--END GRADIENT-->
</body>
</html>
