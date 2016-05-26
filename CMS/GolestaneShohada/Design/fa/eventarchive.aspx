<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eventarchive.aspx.cs" Inherits="CMS.GolestaneShohada.Design.fa.eventarchive" MasterPageFile="~/GolestaneShohada/Design/MasterPage/WebMaster.Master" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPageHeading">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
            <!-- Latest Event Box Start-->
            <ul>
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <li>
                <div class="event-listing-box">
                  <div class="frame"> <a href="ReadItem.aspx?itemID=<%# DataBinder.Eval(Container.DataItem, "ItemID")%>">
                      <img style="max-height:237px" src='<%# "/files/photoItems/"+ DataBinder.Eval(Container, "DataItem.PhotoName") %>'
                               alt='<%# DataBinder.Eval(Container.DataItem, "ItemTopic") %>'></a>
                    <div class="caption">
                      <div class="timer-section">
                        <div class="defaultCountdown is-countdown">
                            <span class="countdown-row countdown-show4">
                                <span class="countdown-section"><span class="countdown-amount"><%# DataBinder.Eval(Container.DataItem, "dayE") %></span><span class="countdown-period">روز</span></span>
                                <span class="countdown-section"><span class="countdown-amount"><%# DataBinder.Eval(Container.DataItem, "HourE") %></span><span class="countdown-period">ساعت</span></span>
                                <span class="countdown-section"><span class="countdown-amount"><%# DataBinder.Eval(Container.DataItem, "minE") %></span><span class="countdown-period">دقیقه</span></span>
                                <span class="countdown-section"><span class="countdown-amount">11</span><span class="countdown-period">ثانیه</span></span></span></div>
                      </div>
                      <a href="fa/ReadItem.aspx?itemID=<%# DataBinder.Eval(Container.DataItem, "ItemID")%>" class="btn-participate">بیشتر بدانید</a> </div>
                  </div>
                  <div class="text-box"> 
                    <h2><%# DataBinder.Eval(Container.DataItem, "ItemTopic") %></h2>
                    <p><%# DataBinder.Eval(Container.DataItem, "SummaryTxt") %></p>
                    <a href="ReadItem.aspx?itemID=<%# DataBinder.Eval(Container.DataItem, "ItemID")%>" class="readmore">بیشتر بدانید</a>
                    <div class="detail-row"> <a><i class="fa fa-calendar"></i> <%# MyClass.GetFarsiDate(Eval("EventDate")) %></a> <a><i class="fa fa-folder-o"></i> <%# DataBinder.Eval(Container.DataItem, "GrpName")%></a> </div>
                  </div>
                </div>
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
            <!-- Latest Event Box End--> 
</asp:Content>