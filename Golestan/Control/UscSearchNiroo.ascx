<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UscSearchNiroo.ascx.cs" Inherits="Golestan.Control.UscSearchNiroo" %>


<div class="row">
 
    <div class="col-sm-2">
         نیرو
    </div>
    <div class="col-sm-4">
        <asp:DropDownList  ID="cmbNiroo" SelectMethod="Niroo_getdata" AppendDataBoundItems="true"  AutoPostBack="true" OnSelectedIndexChanged="cmbNiroo_SelectedIndexChanged" DataValueField="ID" DataTextField="Name" runat="server">
            <asp:ListItem Text="انتخاب کنید" Value=""></asp:ListItem>
        </asp:DropDownList>
    </div>
     <div class="col-sm-2">
        یگان
    </div>
    <div class="col-sm-4">
        <asp:DropDownList  ID="cmbYegan" AutoPostBack="true" AppendDataBoundItems="true"  OnSelectedIndexChanged="cmbYegan_SelectedIndexChanged" DataTextField="Name" DataValueField="ID" runat="server">
            <asp:ListItem Text="انتخاب کنید" Value=""></asp:ListItem>     
        </asp:DropDownList>
    </div>
</div>
<div class="row">
   
    <div class="col-sm-2">
         واحد
    </div>
 
    <div class="col-sm-4">
        <asp:DropDownList  ID="cmbVahed" AppendDataBoundItems="true" DataTextField="Name" DataValueField="ID"  runat="server">
            <asp:ListItem Text="انتخاب کنید" Value=""></asp:ListItem>
        </asp:DropDownList>
    </div> 

</div>