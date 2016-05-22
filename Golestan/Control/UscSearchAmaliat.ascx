<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UscSearchAmaliat.ascx.cs" Inherits="Golestan.Control.UscSearchAmaliat" %>
    <%@ Register Assembly="Heidarpour.WebControlUI" Namespace="Heidarpour.WebControlUI" TagPrefix="rhp" %>



<div class="row">
   
    <div class="col-sm-4">
         <asp:TextBox ID="txtName" placeholder="نام عملیات" CssClass="comment-input form-control" runat="server"></asp:TextBox>
    </div>
  
    <div class="col-sm-4">
        <asp:TextBox ID="txtRamz" placeholder="رمز عملیات" CssClass="comment-input form-control" runat="server"></asp:TextBox>
    </div> 
      <div class="col-sm-4">
        <asp:TextBox ID="txtYadmanName" placeholder="یادمان" CssClass="comment-input form-control" runat="server"></asp:TextBox>
    </div>
</div>
<div class="row">
 
    <div class="col-sm-2">
         منطقه عملیات
    </div>
    <div class="col-sm-4">
        <asp:DropDownList  ID="cmbMantaghe" SelectMethod="Mantaghe_getdata" AppendDataBoundItems="true" CssClass="form-control"  AutoPostBack="true" OnSelectedIndexChanged="cmbMantaghe_SelectedIndexChanged" DataValueField="ID" DataTextField="Name" runat="server">
            <asp:ListItem Text="انتخاب کنید" Value=""></asp:ListItem>
        </asp:DropDownList>
    </div>
     <div class="col-sm-2">
        موقعیت عملیات
    </div>
    <div class="col-sm-4">
        <asp:DropDownList  ID="cmbMogheyat" AutoPostBack="true" AppendDataBoundItems="true" CssClass="form-control" OnSelectedIndexChanged="cmbMogheyat_SelectedIndexChanged" DataTextField="Name" DataValueField="ID" runat="server">
            <asp:ListItem Text="انتخاب کنید" Value=""></asp:ListItem>     
        </asp:DropDownList>
    </div>
</div>
<div class="row">
   
    <div class="col-sm-2">
         نقطه اثر عملیات
    </div>
 
    <div class="col-sm-4">
        <asp:DropDownList  ID="cmbNoghteAsar" AppendDataBoundItems="true" DataTextField="Name" CssClass="form-control" DataValueField="ID" runat="server">
            <asp:ListItem Text="انتخاب کنید" Value=""></asp:ListItem>
        </asp:DropDownList>
    </div> 

</div>
    <div class="row">
        <div class="col-sm-2">
            تاریخ شروع عملیات از
        </div>
        <div class="col-sm-4">
    <rhp:DatePicker CssClass=" text-right" Enabled="true"  ID="dpcShorooAz"  runat="server"></rhp:DatePicker>
        </div>
        <div class="col-sm-2">
            تاریخ شروع عملیات تا
        </div>
         <div class="col-sm-4">
    <rhp:DatePicker CssClass=" text-right" Enabled="true"  ID="dpcShorooTa"  runat="server"></rhp:DatePicker>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">
            تاریخ شروع عملیات از
        </div>
        <div class="col-sm-4">
    <rhp:DatePicker CssClass=" text-right" Enabled="true"  ID="dpcPayanAz"  runat="server"></rhp:DatePicker>
        </div>
        <div class="col-sm-2">
            تاریخ پایان عملیات  تا
        </div>
         <div class="col-sm-4">
    <rhp:DatePicker CssClass=" text-right" Enabled="true"  ID="dpcPayanTa"  runat="server"></rhp:DatePicker>
        </div>

    </div>