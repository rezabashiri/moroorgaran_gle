<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newsarchive.aspx.cs" Inherits="CMS.GolestaneShohada.Design.fa.newsarchive" MasterPageFile="~/GolestaneShohada/Design/MasterPage/WebMaster.Master" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPageHeading">

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
            <ul>
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                         <li>
                <div class="latest-news">
                  <div class="frame"><a href="ReadItem.aspx?itemID=<%# DataBinder.Eval(Container.DataItem, "ItemID")%>">
                      <img src='<%# "/files/photoItems/"+ DataBinder.Eval(Container, "DataItem.PhotoName") %>'
                               alt='<%# DataBinder.Eval(Container.DataItem, "ItemTopic") %>'></a></div>
                  <div class="text-box width"> <strong class="title"><%# DataBinder.Eval(Container.DataItem, "ItemID")%></strong>
                    <div class="date-row"> <a class="link" ><i class="fa fa-calendar"></i> <%# MyClass.GetFarsiDate(Eval("ShowDate")) %></a> <a class="link" ><i class="fa fa-pencil"></i> <%# DataBinder.Eval(Container.DataItem, "GrpName")%></a></div>
                    <p><%# DataBinder.Eval(Container.DataItem, "SummaryTxt")%></p>
                    <a class="readmore" href="ReadItem.aspx?itemID=<%# DataBinder.Eval(Container.DataItem, "ItemID")%>">ادامه مطلب</a> </div>
                </div>
              </li>
                    </ItemTemplate>
                </asp:ListView>
            </ul>
            <!--Pagination Start-->
            <!--div class="pagination-all pagination">
              <ul>
                <li class="disabled"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
              </ul>
            </!--div>
            <!--Pagination End--> 
</asp:Content>

