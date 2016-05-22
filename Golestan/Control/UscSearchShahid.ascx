﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UscSearchShahid.ascx.cs" Inherits="Golestan.Control.UscSearchShahid" %>
        <%@ Register Assembly="Heidarpour.WebControlUI" Namespace="Heidarpour.WebControlUI" TagPrefix="rhp" %>
<div>


<div class="row" >
   
    <div class="col-sm-4">
         <asp:TextBox ID="txtName" placeholder="نام" CssClass="comment-input form-control" runat="server"></asp:TextBox>
    </div>
  
    <div class="col-sm-4">
        <asp:TextBox ID="txtFamily" placeholder="نام خانوادگی" CssClass="comment-input form-control" runat="server"></asp:TextBox>
    </div> 
      <div class="col-sm-4">
        <asp:TextBox ID="txtShomareShenasname" placeholder="شماره شناسنامه" CssClass="comment-input form-control" runat="server"></asp:TextBox>
    </div>
</div>
<div class="row">
    <div class="col-sm-2 pull-right">
        جنسیت
    </div>
    <div class="col-sm-4 pull-left">
        <asp:DropDownList  ID="cmbJensiat" CssClass="form-control" runat="server">
            <asp:ListItem Text="انتخاب کنید" Value=""></asp:ListItem>
            <asp:ListItem Text="مرد" Value="مرد">
            </asp:ListItem>
            <asp:ListItem Text="زن" Value="زن"></asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="col-sm-2 pull-right">
         استان محل تولد
    </div>
    <div class="col-sm-4 pull-left">
        <asp:DropDownList  ID="cmbOstan" SelectMethod="Ostan_getdata" CssClass="form-control" AppendDataBoundItems="true"  AutoPostBack="true" OnSelectedIndexChanged="cmbOstan_SelectedIndexChanged" DataValueField="ID" DataTextField="Name" runat="server">
            <asp:ListItem Text="انتخاب کنید" Value=""></asp:ListItem>
        </asp:DropDownList>
    </div>
</div>
<div class="row">
    <div class="col-sm-2 pull-right">
        شهرستان
    </div>
    <div class="col-sm-4 pull-left">
        <asp:DropDownList  ID="cmbShahrestan" AutoPostBack="true" CssClass="form-control"    OnSelectedIndexChanged="cmbShahrestan_SelectedIndexChanged" DataTextField="Name" DataValueField="ID" runat="server">
            
        </asp:DropDownList>
    </div>
    <div class="col-sm-2 pull-right">
         بخش
    </div>
 
    <div class="col-sm-4 pull-left">
        <asp:DropDownList  ID="cmbBakhsh"    CssClass="form-control" DataTextField="Name" DataValueField="ID"   runat="server">
            
        </asp:DropDownList>
    </div> 

</div>
    <div class="row">
        <div class="col-sm-2 pull-right">
            تاریخ تولد از
        </div> 
        <div class="col-sm-4 pull-left">
    <rhp:DatePicker CssClass=" text-right" Enabled="true"  ID="dpcTavalodAz"  runat="server"></rhp:DatePicker>
        </div>
        <div class="col-sm-2 pull-right">
            تاریخ تولد تا
        </div>
         <div class="col-sm-4 pull-left">
    <rhp:DatePicker CssClass=" text-right" Enabled="true"  ID="dpcTavalodTa"  runat="server"></rhp:DatePicker>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2 pull-right">
            تاریخ شهادت از
        </div>
        <div class="col-sm-4 pull-left">
    <rhp:DatePicker CssClass=" text-right" Enabled="true"  ID="dpcShahadatAz"  runat="server"></rhp:DatePicker>
        </div>
        <div class="col-sm-2 pull-right">
            تاریخ شهادت تا
        </div>
         <div class="col-sm-4 pull-left">
    <rhp:DatePicker CssClass=" text-right" Enabled="true"  ID="dpcShahidTa"  runat="server"></rhp:DatePicker>
        </div>

    </div>
    </div>

