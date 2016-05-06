<%@ Page Language="C#" AutoEventWireup="true" Title="جستجوی شهدا" CodeBehind="shohadalist.aspx.cs" Inherits="CMS.GolestaneShohada.Design.fa.shohadalist" MasterPageFile="~/GolestaneShohada/Design/MasterPage/WebMaster.Master"%>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPageHeading">
    <h1>لیست شهدا</h1>
        <p>جهت جستجوی شهید مورد نظر خود از فرم زیر استفاده نمایید.</p>
           <uc1:FullShahidSearch runat="server" ID="Uscshahidsearch"></uc1:FullShahidSearch>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">  
            <ul>
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <li>
                            <asp:HyperLink NavigateUrl='<%# CreateLink(Eval("ID")) %>' ID="hpr" runat="server">

                          
                <div class="sermon-box">
                  <div class="frame"> <asp:Image ImageUrl='<%# DataBinder.Eval( Container.DataItem,"VirtualAddress") %>' ID="imgShahid" runat="server" alt="img"></asp:Image></div>
                  <div class="text-box">
                    <h2><%#  DataBinder.Eval(Container.DataItem, "Name") %>&nbsp<%# DataBinder.Eval( Container.DataItem, "Family")  %></h2>
                    <div class="detail-row">
                      <ul>
                        <li><a href="#"><i class="fa fa-map-pin"></i>متولد: <%#  DataBinder.Eval(Container.DataItem, "NameShahrestan") %></a></li>
                          <li><a href="#"><i class="fa fa-calendar"></i>تاریخ تولد: <%# MyClass.GetFarsiDate(Eval("TarikheTavalod")) %></a></li>
                        <li><a href="#"><i class="fa fa-tint"></i>تاریخ شهادت: <%# MyClass.GetFarsiDate(Eval("TarikheShahadat")) %></a></li>
                          <li><a href="#"><i class="fa fa-map-marker"></i>متولد: <%#  DataBinder.Eval(Container.DataItem, "NameShahrestan") %></a></li>
                      </ul>
                    </div>
                    <a href="#" class="readmore">بیشتر بدانید</a>
                  </div>
                </div>
                                  </asp:HyperLink>
              </li>
                    </ItemTemplate>
                </asp:ListView>
            </ul>
            <!--Pagination Start-->
            <div class="pagination-all pagination">
              <ul>
                <li class="disabled">
                    <asp:LinkButton ID="lnkbtnPrev" runat="server" OnClick="lnkbtnPrev_Click"><i class="fa fa-angle-left"></i></asp:LinkButton></li>
                <li class="active">
                    <asp:Label ID="lblCurrentPage" runat="server" Text="0"></asp:Label></li>
                <li>
                    <asp:LinkButton ID="lnkbtnnext" runat="server" OnClick="lnkbtnnext_Click"><i class="fa fa-angle-right"></i></asp:LinkButton></li>
              </ul>
            </div>
            <!--Pagination End--> 
    <!--Sermon Page End--> 
</asp:Content>
