<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UscSearchShahid.ascx.cs" Inherits="Golestan.Control.UscSearchShahid" %>
       
<div>
    <rhp:JQLoader ID="JQLoader1" runat="server" />

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
    <div class="col-sm-2  ">
        جنسیت
    </div>
    <div class="col-sm-4  ">
        <asp:DropDownList  ID="cmbJensiat" CssClass="form-control" runat="server">
            <asp:ListItem Text="انتخاب کنید" Value=""></asp:ListItem>
            <asp:ListItem Text="مرد" Value="مرد">
            </asp:ListItem>
            <asp:ListItem Text="زن" Value="زن"></asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="col-sm-2  ">
         استان محل تولد
    </div>
    <div class="col-sm-4  ">
        <asp:DropDownList  ID="cmbOstan" SelectMethod="Ostan_getdata" CssClass="form-control" AppendDataBoundItems="true"  AutoPostBack="true" OnSelectedIndexChanged="cmbOstan_SelectedIndexChanged" DataValueField="ID" DataTextField="Name" runat="server">
            <asp:ListItem Text="انتخاب کنید" Value=""></asp:ListItem>
        </asp:DropDownList>
    </div>
</div>
<div class="row">
    <div class="col-sm-2 ">
        شهرستان
    </div>
    <div class="col-sm-4  ">
        <asp:DropDownList  ID="cmbShahrestan" AutoPostBack="true" CssClass="form-control"    OnSelectedIndexChanged="cmbShahrestan_SelectedIndexChanged" DataTextField="Name" DataValueField="ID" runat="server">
            
        </asp:DropDownList>
    </div>
    <div class="col-sm-2  ">
         بخش
    </div>
 
    <div class="col-sm-4  ">
        <asp:DropDownList  ID="cmbBakhsh"    CssClass="form-control" DataTextField="Name" DataValueField="ID"   runat="server">
            
        </asp:DropDownList>
    </div> 

</div>
    <div class="row">
        <div class="col-sm-2 ">
            تاریخ تولد از
        </div> 
        <div class="col-sm-4 ">
    <rhp:JQDatePicker Regional="fa" CssClass=" text-right date" Enabled="true"  ID="dpcTavalodAz"  runat="server"></rhp:JQDatePicker>
        </div>
        <div class="col-sm-2  ">
            تاریخ تولد تا
        </div>
         <div class="col-sm-4  ">
    <rhp:JQDatePicker Regional="fa" CssClass=" text-right date" Enabled="true"  ID="dpcTavalodTa"  runat="server"></rhp:JQDatePicker>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2  ">
            تاریخ شهادت از
        </div>
        <div class="col-sm-4 ">
    <rhp:JQDatePicker Regional="fa" CssClass=" text-right date" Enabled="true"  ID="dpcShahadatAz"  runat="server"></rhp:JQDatePicker>
        </div>
        <div class="col-sm-2 ">
            تاریخ شهادت تا
        </div>
         <div class="col-sm-4 ">
    <rhp:JQDatePicker Regional="fa" CssClass=" text-right date" Enabled="true"  ID="dpcShahidTa"  runat="server"></rhp:JQDatePicker>
        </div>

    </div>
    </div>

