<%@ Page Language="C#" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" Title="جستجوی عملیات ها" CodeBehind="amliyatlist.aspx.cs" Inherits="CMS.GolestaneShohada.Design.fa.amliyatlist" MasterPageFile="~/GolestaneShohada/Design/MasterPage/WebMaster.Master"%>
 
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPageHeading">
    <h1>لیست عملیات ها</h1>
        <p>جهت جستجوی عملیات مورد نظر خود، از فرم زیر استفاده نمایید.</p>
           <uc1:FullSearchAmaliat runat="server" ID="UscFullSearchAmaliat"></uc1:FullSearchAmaliat>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">  
            <ul>
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <li>
              <asp:HyperLink NavigateUrl='<%# CreateLink(Eval("IDAmaliat")) %>' ID="hpr" runat="server">
                <div class="sermon-box">
                  <div class="frame"> <asp:Image ImageUrl='<%# DataBinder.Eval( Container.DataItem,"VirtualAddress") %>' ID="imgShahid" runat="server" alt="img"></asp:Image></div>
                  <div class="text-box">
                    <h2><%#  DataBinder.Eval(Container.DataItem, "NameAmaliat") %></h2>
                      <p><%#  DataBinder.Eval(Container.DataItem, "Kholase") %></p>
                    <div class="detail-row">
                      <ul>
                        <li><a href="#"><i class="fa fa-lock"></i>رمز: <%#  DataBinder.Eval(Container.DataItem, "Ramz") %></a></li>
                          <li><a href="#"><i class="fa fa-calendar"></i>تاریخ شروع: <%# MyClass.GetFarsiDate(Eval("TarikheShoroo")) %></a></li>
                          <li><a href="#"><i class="fa fa-calendar"></i>تاریخ پایان: <%# MyClass.GetFarsiDate(Eval("TarikhePayan")) %></a></li>
                      </ul>
                    </div>
                       <asp:HyperLink NavigateUrl='<%# CreateLink(Eval("IDAmaliat")) %>' ID="HyperLink1" runat="server"  CssClass="readmore">بیشتر بدانید</asp:HyperLink>
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
                       <li>
                    <asp:LinkButton ID="lnkbtnnext" runat="server" OnClick="lnkbtnnext_Click"><i class="fa fa-angle-left"></i></asp:LinkButton>

                </li>
             
                <li class="active">
                    <asp:Label ID="lblCurrentPage" runat="server" Text="0"></asp:Label></li>
              <li class="disabled">
                    <asp:LinkButton ID="lnkbtnPrev" runat="server" OnClick="lnkbtnPrev_Click"><i class="fa fa-angle-right "></i></asp:LinkButton>

                </li>
              </ul>
            </div>
            <!--Pagination End--> 
    <!--Sermon Page End--> 
</asp:Content>
