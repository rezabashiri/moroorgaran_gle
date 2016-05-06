﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CMS.GolestaneShohada.Design.Default" MasterPageFile="~/GolestaneShohada/Design/MasterPage/WebMaster.Master" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPageHeading">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
      <!--Banner Start-->
  <section id="banner">
    <ul id="home-banner">
        <asp:ListView ID="ListView1" runat="server">
            <ItemTemplate>
                 <li> <img src='<%# "/files/photoItems/"+ DataBinder.Eval(Container, "DataItem.PhotoName") %>' 
                     alt='<%# DataBinder.Eval(Container.DataItem, "ItemTopic") %>' >
     <%--   <div class="caption">
          <div class="container">
            <div class="holder">
              <h2><%# DataBinder.Eval(Container.DataItem, "ItemTopic") %></h2>
              <div class="paragraph-box">
                <p><%# DataBinder.Eval(Container.DataItem, "SummaryTxt") %></p>
              </div>
              <a href="fa/ReadItem.aspx?itemID=<%# DataBinder.Eval(Container.DataItem, "ItemID")%>" class="btn-detail">بیشتر بخوانید</a></div>
          </div>
        </div>--%>
      </li>
            </ItemTemplate>
        </asp:ListView>
    </ul>
  </section>
  <!--Banner End--> 
  <!-- Main Start-->
  <div id="main"> 
    <!--Featured Sermon Start-->
    <section class="featured-sermon">
      <div class="container">
        <div class="download-section"> <a href="#"><i class="fa fa-video-camera"></i></a> <a href="#"><i class="fa fa-file-text-o"></i></a> <a href="#"><i class="fa fa-arrow-circle-down"></i></a> <a href="#"><i class="fa fa-th-list"></i></a> </div>
          <div class="player-box">
          <div class="player-holder"> <strong class="title">گنجینه های ماندگار</strong>
            <div class="mp3-player-box">
              <audio preload="auto" controls>
                <source src="audio/BlueDucks_F1ourFlossFiveSix.mp3">
                <source src="audio/BlueDucks_F1ourFlossFiveSix.ogg">
                <source src="audio/BlueDucks_F1ourFlossFiveSix.wav">
              </audio>
            </div>
          </div>
        </div>
          <strong class="title">شهید همت</strong>
        
      </div>
    </section>
    <!--Featured Sermon End--> 
    
    <!--Welcome Message Box Start-->
    <section class="welcome-box">
      <div class="container">
        <div class="holder">
          <h2><span class="color"><strong>یاران</strong></span> پای در راه نهیم که این راه رفتنی است و نه گفتنی</h2>
            </br>
             <h2><span class="color">fellowship , set your foot in the way , this way is the way to go not to say </span></h2>
            </br>
          <h2><span class="color"></span>الزمالة,
وضعنا القدم على الطريق
المشي
  ويقول</h2>
        </div>
      </div>
    </section>
    <!--Welcome Message Box End--> 
    
    <!--Home Widget Box Start-->
    <section class="home-widget-box">
      <div class="container">
        <div class="row">
          <div class="col-md-3 col-sm-6">
            <div class="widget-box">
              <div class="round"><i class="fa fa-map"></i></div>
              <h3>جستجوی مکانی</h3>
              <p>برای آشنایی با شهدای هر منطقه با استفاده از نقشه مکان مورد نظر خود را پیدا نمایید.</p>
              <a href="#" class="btn-widget">جستجو</a> </div>
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="widget-box active">
              <div class="round"><i class="fa fa-map-marker"></i></div>
              <h3>مناطق عملیاتی</h3>
              <p>مناطق عملیاتی در جنگ کدام ها بوده اند و چه شهدایی در این مناطق به شهادت رسیده اند.</p>
              <a href="#" class="btn-widget">مناطق</a> </div>
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="widget-box active">
              <div class="round"><i class="fa fa-gears"></i></div>
              <h3>یگان های عملیاتی</h3>
              <p>یگان های عملیاتی را جستجو نماییم و با شهدای آنها و رشادت هایشان بیشتر آشنا شویم.</p>
              <a href="#" class="btn-widget">یگان ها</a> </div>
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="widget-box active">
              <div class="round"><i class="fa fa-users"></i></div>
              <h3>شهدا</h3>
              <p>شهید خود را بر اساس اطلاعات شخصی جستجو کنیم و افکارش را بیشتر بشناسیم.</p>
              <a href="fa/shohadalist.aspx" class="btn-widget">جستجو</a> </div>
          </div>
        </div>
      </div>
    </section>
    <!--Home Widget Box End--> 
    
    <!-- Latest Sermons Box Start-->
    <section class="latest-sermons-box disNone">
      <div class="container">
        <h3>شهدای برجسته استان</h3>
        <div class="row">
          <div class="col-md-4 col-sm-4">
            <div class="sermons-box">
              <div class="frame"> <a href="#"><img src="images/latest-sermons-img-1.jpg" alt="img"></a>
                <div class="caption">
                  <div class="inner"> <a href="#"><i class="fa fa-video-camera"></i></a> <a href="#"><i class="fa fa-music"></i></a> <a href="#"><i class="fa fa-file-text-o"></i></a> <a href="#"><i class="fa fa-arrow-circle-o-down"></i></a> </div>
                </div>
              </div>
             <div class="text-box">
              <h4>شهید شماره یک</h4>
                <p>یک جمله زیبا از وصیت نامه یا سخنانش در اینجا نوشته می شود.  </p>
                <a href="#" class="readmore">بیشتر بدانید</a>
                <div class="detail-row">
                  <ul>
                    <li><a href="#"><i class="fa fa-gear"></i>کربلا</a></li>
                    <li><a href="#"><i class="fa fa-calendar"></i>10 شهریور 1362</a></li>
                    <li><a href="#"><i class="fa fa-map-marker"></i>خرمشهر</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-4">
            <div class="sermons-box">
              <div class="frame"> <a href="#"><img src="images/latest-sermons-img-2.jpg" alt="img"></a>
                <div class="caption">
                  <div class="inner"> <a href="#"><i class="fa fa-video-camera"></i></a> <a href="#"><i class="fa fa-music"></i></a> <a href="#"><i class="fa fa-file-text-o"></i></a> <a href="#"><i class="fa fa-arrow-circle-o-down"></i></a> </div>
                </div>
              </div>
              <div class="text-box">
              <h4>شهید شماره یک</h4>
                <p>یک جمله زیبا از وصیت نامه یا سخنانش در اینجا نوشته می شود.  </p>
                <a href="#" class="readmore">بیشتر بدانید</a>
                <div class="detail-row">
                  <ul>
                    <li><a href="#"><i class="fa fa-gear"></i>کربلا</a></li>
                    <li><a href="#"><i class="fa fa-calendar"></i>10 شهریور 1362</a></li>
                    <li><a href="#"><i class="fa fa-map-marker"></i>خرمشهر</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-4">
            <div class="sermons-box">
              <div class="frame"> <a href="#"><img src="images/latest-sermons-img-3.jpg" alt="img"></a>
                <div class="caption">
                  <div class="inner"> <a href="#"><i class="fa fa-video-camera"></i></a> <a href="#"><i class="fa fa-music"></i></a> <a href="#"><i class="fa fa-file-text-o"></i></a> <a href="#"><i class="fa fa-arrow-circle-o-down"></i></a> </div>
                </div>
              </div>
              <div class="text-box">
              <h4>شهید شماره یک</h4>
                <p>یک جمله زیبا از وصیت نامه یا سخنانش در اینجا نوشته می شود.  </p>
                <a href="#" class="readmore">بیشتر بدانید</a>
                <div class="detail-row">
                  <ul>
                    <li><a href="#"><i class="fa fa-gear"></i>کربلا</a></li>
                    <li><a href="#"><i class="fa fa-calendar"></i>10 شهریور 1362</a></li>
                    <li><a href="#"><i class="fa fa-map-marker"></i>خرمشهر</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Latest Sermons Box End--> 
    
    <!--Quote Message Box Start-->
    <section class="quote-box slide" id="slide1"  data-slide="1" >
      <div class="container">
        <h3>ما را با اندروید دنبال کنید</h3>
        <p>
            نرم افزار کانال آسمانیها
        </p>
      </div>
    </section>
    <!--Quote Message Box End--> 
    
    <!-- Latest Event Box Start-->
    <section class="latest-event">
      <div class="container">
        <h3>معرفی رویدادها</h3>
        <div class="row">
            <asp:ListView ID="ListView2" runat="server">
                <ItemTemplate>
                    <div class="col-md-3 col-sm-6">
            <div class="latest-event-box">
              <div class="frame"> <a href="fa/ReadItem.aspx?itemID=<%# DataBinder.Eval(Container.DataItem, "ItemID")%>">
                  <img src='<%# "/files/photoItems/"+ DataBinder.Eval(Container, "DataItem.PhotoName") %>'
                               alt='<%# DataBinder.Eval(Container.DataItem, "ItemTopic") %>'></a>
                <div class="date"><strong class="dat">27</strong><strong class="mnt">تیر</strong></div>
                <div class="caption">
                  <h4><%# DataBinder.Eval(Container.DataItem, "ItemTopic") %></h4>
                  <div class="text-box">
                    <p><%# DataBinder.Eval(Container.DataItem, "SummaryTxt") %></p>
                  </div>
                </div>
                <div class="inner-area">
                    <div class="timer-box">
                    <div class="defaultCountdown is-countdown"><span class="countdown-row countdown-show4">
                        <span class="countdown-section"><span class="countdown-amount"><%# DataBinder.Eval(Container.DataItem, "dayE") %></span><span class="countdown-period">روز</span></span>
                        <span class="countdown-section"><span class="countdown-amount"><%# DataBinder.Eval(Container.DataItem, "HourE") %></span><span class="countdown-period">ساعت</span></span>
                        <span class="countdown-section"><span class="countdown-amount"><%# DataBinder.Eval(Container.DataItem, "minE") %></span><span class="countdown-period">دقیقه</span></span>
                        
                  </div>
                  <div class="text-area"> <strong class="title"><%# DataBinder.Eval(Container.DataItem, "ItemTopic") %></strong>
                    <ul>
                      <li><span><i class="fa fa-calendar"></i></span><strong><%# new tkv.Utility.DateConversion().Object_dateconversiontosolar( (Eval("EventDate")) ) %></strong></li>
                    </ul>
                    <a href="fa/ReadItem.aspx?itemID=<%# DataBinder.Eval(Container.DataItem, "ItemID")%>" class="btn-participate">بیشتر</a> </div>
                </div>
              </div>
            </div>
          </div>
                        </div>
                </ItemTemplate>
            </asp:ListView>
          
        </div>
        <a href="fa/eventarchive.aspx" class="view-calender">مشاهده همه رویدادها</a> </div>
    </section>
    <!-- Latest Event Box End--> 
    <!-- Home Blog Posts Start-->
    <section class="blog-posts disNone">
      <div class="container">
        <h3>بلاگ</h3>
        <div class="row">
            <asp:ListView ID="ListView3" runat="server">
                <ItemTemplate>
                    <div class="col-md-6 col-sm-6">
            <div class="blog-posts-box">
              <div class="frame"><a href="fa/ReadItem.aspx?itemID=<%# DataBinder.Eval(Container.DataItem, "ItemID")%>">
                  <img src='<%# "/files/photoItems/"+ DataBinder.Eval(Container, "DataItem.PhotoName") %>'
                               alt='<%# DataBinder.Eval(Container.DataItem, "ItemTopic") %>'></a></div>
              <div class="text-box">
                <div class="col-md-6">
                  <div class="left"> <strong class="title"><%# DataBinder.Eval(Container.DataItem, "ItemTopic") %></strong>
                    <ul>
                      <li><a href="#"><%# MyClass.GetFarsiDate(Eval("ShowDate")) %></a></li>
                    </ul>
                  </div>
                </div>
                <div class="right">
                  <p><%# DataBinder.Eval(Container.DataItem, "SummaryTxt") %></p>
                  <a class="readmore" href="fa/ReadItem.aspx?itemID=<%# DataBinder.Eval(Container.DataItem, "ItemID")%>">ادامه مطلب</a> </div>
              </div>
            </div>
          </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
      </div>
    </section>
    <!-- Home Blog Posts Start--> 
    
    <!--Purchase Section Start-->
    <section class="purchase-section slide" id="slide2" data-slide="2" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="holder">
          <div class="heading-1">
            <h4>نقشه مناطق <span>جنگی</span></h4>
          </div>
          <div class="heading-2">
            <h5>شهدا را بر اساس منطقه جنگی جستجو نمایید</h5>
          </div>
          <a href="#" class="btn-purchase">جستجو</a> </div>
      </div>
    </section>
    <!--Purchase Section End--> 
    
    <!--News Timelines Row Start-->
    <section class="news-timelines-box">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h3>تازه ترین ها</h3>
            <div class="outer">
                <asp:ListView ID="ListView4" runat="server">
                    <ItemTemplate>
                        <div class="latest-news">
                <div class="frame"><a href="fa/ReadItem.aspx?itemID=<%# DataBinder.Eval(Container.DataItem, "ItemID")%>">
                    <img src='<%# "/files/photoItems/"+ DataBinder.Eval(Container, "DataItem.PhotoName") %>'
                               alt='<%# DataBinder.Eval(Container.DataItem, "ItemTopic") %>'></a></div>
                <div class="text-box"> <strong class="title"><%# DataBinder.Eval(Container.DataItem, "ItemTopic") %></strong>
                  <div class="date-row"> <a class="link"><i class="fa fa-calendar"></i><%# MyClass.GetFarsiDate(Eval("ShowDate")) %></a>  </div>
                  <p><%# DataBinder.Eval(Container.DataItem, "SummaryTxt")%></p>
                  <a href="fa/ReadItem.aspx?itemID=<%# DataBinder.Eval(Container.DataItem, "ItemID")%>" class="readmore">ادامه مطلب</a> </div>
              </div>
                    </ItemTemplate>
                </asp:ListView>
              
            </div>
          </div>
          <div class="col-md-6">
            <h3>گالری تصاویر</h3>
            <div class="timelines-box">
              <ul id="timelines-slider">
                <li> <img src="Image/sample-photo.jpg" alt="img" />
                </li>
                <li> <img src="Image/sample-photo.jpg" alt="img" />
                </li>
                <li> <img src="Image/sample-photo.jpg" alt="img" />
                </li>
              </ul>
              <div id="bx-pager"> <a data-slide-index="0" href="#"><img src="Image/thumb-sample.jpg" alt="img" /></a> <a data-slide-index="1" href="#"><img src="Image/thumb-sample.jpg" alt="img" /></a> <a data-slide-index="2" href="#"><img src="Image/thumb-sample.jpg" alt="img" /></a> </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--News Timelines Row End--> 
    
    <!--Our Preachers Box Start-->
    <section class="our-preachers-box">
      <div class="container">
        <div class="holder">
          <div class="content_slider_wrapper" id="slider1">
            <div class="circle_slider_text_wrapper" id="sw0" style="display: none;">
              <div class="content_slider_text_block_wrap"> <span>یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. </span>
                <h3>نام شهید</h3>
                 </div>
            </div>
            <div class="circle_slider_text_wrapper" id="sw1" style="display: none;"> 
              <!-- content for the second layer, id="sw1" -->
              <div class="content_slider_text_block_wrap"> <span>یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. </span>
                <h3>نام شهید</h3>
                 </div>
              <div class="clear"></div>
            </div>
            <div class="circle_slider_text_wrapper" id="sw2" style="display: none;"> 
              <!-- content for the third layer, id="sw2" -->
              <div class="content_slider_text_block_wrap"> <span>یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. </span>
                <h3>نام شهید</h3>
                 </div>
              <div class="clear"></div>
            </div>
            <div class="circle_slider_text_wrapper" id="sw3" style="display: none;"> 
              <!-- content for the fourth layer, id="sw3" -->
              <div class="content_slider_text_block_wrap"> <span>یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. </span>
                <h3>نام شهید</h3>
                 </div>
              <div class="clear"></div>
            </div>
            <div class="circle_slider_text_wrapper" id="sw4" style="display: none;"> 
              <!-- content for the fifth layer, id="sw4" -->
              <div class="content_slider_text_block_wrap"> <span>یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. </span>
                <h3>نام شهید</h3>
                 </div>
              <div class="clear"></div>
            </div>
            <div class="circle_slider_text_wrapper" id="sw5" style="display: none;"> 
              <!-- content for the sixth layer, id="sw5" -->
              <div class="content_slider_text_block_wrap"> <span>یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. </span>
                <h3>نام شهید</h3>
                 </div>
              <div class="clear"></div>
            </div>
            <div class="circle_slider_text_wrapper" id="sw6" style="display: none;"> 
              <!-- content for the seventh layer, id="sw6" -->
              <div class="content_slider_text_block_wrap"> <span>یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. یک پاراگراف از سخنان و وصیت نامه شهید در اینجا نوشته می شود. </span>
                <h3>نام شهید</h3>
                 </div>
              <div class="clear"></div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--Our Preachers Box End--> 
    
  </div>
  <!-- Main End--> 
</asp:Content>

