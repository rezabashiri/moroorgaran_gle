<%@ Control Language="C#" CodeBehind="Password_Edit.ascx.cs" Inherits="CMS.DynamicData.FieldTemplates.Password_EditField" %>

<asp:TextBox ID="TextBox1" runat="server"  ></asp:TextBox>

<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="TextBox1" Display="Dynamic" Enabled="false" />
<asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" ControlToValidate="TextBox1" Display="Dynamic" Enabled="false" />
<asp:DynamicValidator runat="server" ID="DynamicValidator1" ControlToValidate="TextBox1" Display="Dynamic" />
