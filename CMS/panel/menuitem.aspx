<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menuitem.aspx.cs" Inherits="CMS.panel.menuitem" MasterPageFile="~/masterpages/MgrMaster.Master" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContentPH">
    <div class="confirmMSG" id="confirmDiv" visible="false" runat="server">
        <asp:Label ID="lblOk" runat="server"></asp:Label></div>
    <div class="clearFloat">
    </div>
    <div class="errorMSG" id="errorDiv" runat="server" visible="false">
        <asp:Label ID="lblError" runat="server"></asp:Label></div>
       	
     <div class="row mt col-md-offset-1">
         <div class="col-md-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-left"></i> اطلاعات منو</h4>
                      <div class="form-horizontal style-form" >
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">شاخه</label>
                              <div class="col-sm-10">
                                  <asp:Label ID="lblbranch" runat="server" Text="اصلی"></asp:Label>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">عنوان</label>
                              <div class="col-sm-10">
                                  <asp:TextBox ID="txtTopic" runat="server" CssClass="form-control"></asp:TextBox>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">آدرس صفحه</label>
                              <div class="col-sm-10">
                                  <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label"></label>
                              <div class="col-sm-10">
                                  <asp:Button ID="btnOK" runat="server" Text="ثبت" CssClass="btn btn-primary" OnClick="btnOK_Click"/>
                                  <asp:Button ID="btnCancel" runat="server" Text="انصراف" CssClass="btn btn-danger" OnClick="btnCancel_Click" />
                              </div>
                          </div>
                      </div>
                  </div>
          		</div><!-- col-lg-12-->  
                  <div class="col-md-12">
                      <div class="content-panel">
	                  	  	  <hr>
                          <asp:GridView ID="GridView1" CssClass="table table-striped table-advance table-hover" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound">
                              <AlternatingRowStyle CssClass="table table-striped table-advance table-hover"></AlternatingRowStyle>
                              <Columns>
<asp:BoundField HeaderText="شماره" DataField="MenuItemID" Visible="False"></asp:BoundField>
                                  <asp:BoundField HeaderText="عنوان" DataField="MenuTitle" />
                                  <asp:BoundField HeaderText="آدرس" DataField="LinkAddress" />
                                  <asp:BoundField HeaderText="از شاخه" DataField="FatherName" />
                                     <asp:TemplateField HeaderText="ایجاد زیر شاخه">
                        <ItemTemplate>
                           <asp:ImageButton ID="ImageButton5" runat="server" CommandArgument='<%# Eval("MenuItemID").ToString() %>'
                                CommandName="AddSubC" ImageUrl="../images/previous.png" CausesValidation="False" />
                        </ItemTemplate>
                    </asp:TemplateField>
                                  <asp:TemplateField HeaderText="ویرایش">
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("MenuItemID").ToString() %>'
                                CommandName="EditC" ImageUrl="../images/Edit.png" CausesValidation="False" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="حذف">
                        <ItemTemplate>
                            <asp:ImageButton ID="imgbtnDel" runat="server" CommandArgument='<%# Eval("MenuItemID").ToString() %>'
                                CommandName="DelC" ImageUrl="../images/delete.png" CausesValidation="False" />
                        </ItemTemplate>
                    </asp:TemplateField>
                 

                              </Columns>
                          </asp:GridView>
                      </div><!-- /content-panel -->
                  </div><!-- /col-md-12 -->
              </div><!-- /row -->

</asp:Content>
