<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shohadalist.aspx.cs" Inherits="CMS.GolestaneShohada.Design.fa.shohadalist" MasterPageFile="~/GolestaneShohada/Design/MasterPage/WebMaster.Master"%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <!--Inner Pages Heading Area Start-->
    <section class="inner-headding">
      <div class="container">
                 <h1>لیست شهدا</h1>
        <p>جهت جستجوی شهید مورد نظر خود از فرم زیر استفاده نمایید.</p>
           <uc1:FullShahidSearch runat="server" ID="Uscshahidsearch"></uc1:FullShahidSearch>
      </div>
    </section>
    <!--Inner Pages Heading Area End--> 
    
    <!--Sermon Page Start-->
    <section class="sermon-page">
      <div class="container">
        <div class="row">
            <!--Sidebar Start-->
          <aside>
            <div class="col-md-3 col-sm-5">
              <div class="sidebar"> 
               
                <!--Recent Post Start-->
                <div class="recent-post">
                  <h3>بیشتر بدانید</h3>
                  <ul>
                    <li>
                      <div class="frame"><a href="#"><img src="images/recent-post-img-1.jpg" alt="img"></a></div>
                      <div class="text-box"> <a href="#" class="title">عنوان مطلب در اینجا نوشته می شود.</a></div>
                    </li>
                  </ul>
                </div>
                <!--Recent Post End--> 
                
                <!--Sidebar Latest News Start-->
                <div class="sidebar-latest-news">
                  <h3>آخرین اخبار</h3>
                  <ul>
                    <li>
                      <div class="text-box"> <strong class="title">عنوان خبر در اینجا نوشته شود</strong> <strong class="post">25 فروردین 1395</strong>
                        <p>خلاصه خبر در اینجا نوشته می شود. خلاصه خبر در اینجا نوشته می شود. خلاصه خبر در اینجا نوشته می شود. </p>
                        <a href="#" class="readmore">ادامه خبر</a></div>
                    </li>
                  </ul>
                </div>
                <!--Sidebar Latest News End--> 
              </div>
            </div>
          </aside>
          <!--Sidebar End--> 
          <div class="col-md-9 col-sm-7">
            <ul>
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <li>
                <div class="sermon-box">
                  <div class="frame"><a href="#"><img src="images/sermons/sermons-img-1.jpg" alt="img"></a></div>
                  <div class="text-box">
                    <h2><%# DataBinder.Eval(Container.DataItem, "Name") %> <%# DataBinder.Eval(Container.DataItem, "Family") %></h2>
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
          </div>
          
        </div>
      </div>
    </section>
    <!--Sermon Page End--> 
</asp:Content>
