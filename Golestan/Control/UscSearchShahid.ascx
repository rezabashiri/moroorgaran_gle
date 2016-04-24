<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UscSearchShahid.ascx.cs" Inherits="Golestan.Control.UscSearchShahid" %>
        <%@ Register Assembly="Heidarpour.WebControlUI" Namespace="Heidarpour.WebControlUI" TagPrefix="rhp" %>


<div style="direction:rtl">


<div class="row" >
   
    <div class="col-sm-4">
         <asp:TextBox ID="txtName" placeholder="نام" CssClass="comment-input" runat="server"></asp:TextBox>
    </div>
  
    <div class="col-sm-4">
        <asp:TextBox ID="txtFamily" placeholder="نام خانوادگی" CssClass="comment-input" runat="server"></asp:TextBox>
    </div> 
      <div class="col-sm-4">
        <asp:TextBox ID="txtShomareShenasname" placeholder="شماره شناسنامه" CssClass="comment-input" runat="server"></asp:TextBox>
    </div>
</div>
<div class="row">
    <div class="col-sm-2">
        جنسیت
    </div>
    <div class="col-sm-4">
        <asp:DropDownList  ID="cmbJensiat" runat="server">
            <asp:ListItem Text="انتخاب کنید" Value=""></asp:ListItem>
            <asp:ListItem Text="مرد" Value="مرد">
            </asp:ListItem>
            <asp:ListItem Text="زن" Value="زن"></asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="col-sm-2">
         استان محل تولد
    </div>
    <div class="col-sm-4">
        <asp:DropDownList  ID="cmbOstan" SelectMethod="Ostan_getdata" AppendDataBoundItems="true"  AutoPostBack="true" OnSelectedIndexChanged="cmbOstan_SelectedIndexChanged" DataValueField="ID" DataTextField="Name" runat="server">
            <asp:ListItem Text="انتخاب کنید" Value=""></asp:ListItem>
        </asp:DropDownList>
    </div>
</div>
<div class="row">
    <div class="col-sm-2">
        شهرستان
    </div>
    <div class="col-sm-4">
        <asp:DropDownList  ID="cmbShahrestan" AutoPostBack="true" AppendDataBoundItems="true"  OnSelectedIndexChanged="cmbShahrestan_SelectedIndexChanged" DataTextField="Name" DataValueField="ID" runat="server">
            <asp:ListItem Text="انتخاب کنید" Value=""></asp:ListItem>     
        </asp:DropDownList>
    </div>
    <div class="col-sm-2">
         بخش
    </div>
 
    <div class="col-sm-4">
        <asp:DropDownList  ID="cmbBakhsh" AppendDataBoundItems="true"   DataTextField="Name" DataValueField="ID"   runat="server">
            <asp:ListItem Text="انتخاب کنید" Value=""></asp:ListItem>
        </asp:DropDownList>
    </div> 

</div>
    <div class="row">
        <div class="col-sm-2">
            تاریخ تولد از
        </div>
        <div class="col-sm-4">
    <rhp:DatePicker CssClass=" text-right" Enabled="true"  ID="dpcTavalodAz"  runat="server"></rhp:DatePicker>
        </div>
        <div class="col-sm-2">
            تاریخ تول تا
        </div>
         <div class="col-sm-4">
    <rhp:DatePicker CssClass=" text-right" Enabled="true"  ID="dpcTavalodTa"  runat="server"></rhp:DatePicker>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">
            تاریخ شهادت از
        </div>
        <div class="col-sm-4">
    <rhp:DatePicker CssClass=" text-right" Enabled="true"  ID="dpcShahadatAz"  runat="server"></rhp:DatePicker>
        </div>
        <div class="col-sm-2">
            تاریخ شهادت تا
        </div>
         <div class="col-sm-4">
    <rhp:DatePicker CssClass=" text-right" Enabled="true"  ID="dpcShahidTa"  runat="server"></rhp:DatePicker>
        </div>

    </div>
    </div>

