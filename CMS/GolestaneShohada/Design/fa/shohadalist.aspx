<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shohadalist.aspx.cs" Inherits="CMS.GolestaneShohada.Design.fa.shohadalist" MasterPageFile="~/GolestaneShohada/Design/MasterPage/WebMaster.Master"%>
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
                    <p>متن درباره شهید. متن درباره شهید. متن درباره شهید. متن درباره شهید. متن درباره شهید. متن درباره شهید. متن درباره شهید. </p>
                    <div class="detail-row">
                      <ul>
                        <li><a href="#"><i class="fa fa-user"></i>محل شهادت</a></li>
                        <li><a href="#"><i class="fa fa-calendar"></i>10 تیر 1360</a></li>
                        <li><a href="#"><i class="fa fa-book"></i></a></li>
                      </ul>
                    </div>
                    <ul class="list-area">
                      <li><a href="#"><i class="fa fa-video-camera"></i></a></li>
                      <li><a href="#"><i class="fa fa-headphones"></i></a></li>
                      <li><a href="#"><i class="fa fa-file-text-o"></i></a></li>
                      <li><a href="#"><i class="fa fa-arrow-circle-down"></i></a></li>
                      <li><a href="#"><i class="fa fa-share-square-o"></i></a></li>
                    </ul>
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
                <li class="disabled"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
              </ul>
            </div>
            <!--Pagination End--> 
    <!--Sermon Page End--> 
</asp:Content>
