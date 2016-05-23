<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CMS.GolestaneShohada.Design.Default" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register Src="~/Controls/UscDynamicMenu.ascx" TagPrefix="uc2" TagName="UscDynamicMenu" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from html.crunchpress.com/prayer/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 07 Apr 2016 06:51:01 GMT -->
<head runat="server">
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>فرهنگسرای پایداری اصفهان</title>
<!--Custom Css-->
<link href="/GolestaneShohada/Design/css/custom.css" rel="stylesheet" type="text/css"/>
<!--Bootstrap 3.1.1 Css-->
<link href="/GolestaneShohada/Design/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<!--RESPONSIVE Css-->
<link rel="stylesheet" href="/GolestaneShohada/Design/css/responsive.css" />
<!--Audio Player Css-->
<link rel="stylesheet" href="/GolestaneShohada/Design/css/audioplayer.css" />
<!--Color Css-->
<link href="/GolestaneShohada/Design/css/color.css" rel="stylesheet" type="text/css"/>
<!--Font Awesome-->
<link href="/GolestaneShohada/Design/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<!--Fevicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon"/>

<!--Bxslider Css-->
<link href="/GolestaneShohada/Design/css/jquery.bxslider.css" rel="stylesheet" type="text/css" />
<!--Content Slider Css-->
<link href="/GolestaneShohada/Design/css/content_slider_style.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.Js/1.4.2/respond.min.js"></script>
<![endif]-->
<!-- Color Css Files Start -->
<%--<link rel="alternate stylesheet" type="text/css" href="/GolestaneShohada/Design/css/color-4.css" title="styles3" media="screen" />--%>
<!-- Color Css Files End -->
</head>
<body>
<!--Wrapper Start-->
<div id="wrapper"> 
  <!--Header Start-->
  <header id="header"> 
    <!--Head Topbar Start-->
    <section class="head-topbar">
      <div class="container holder">
        <div class="left"> <strong class="ph"><i class="fa fa-phone"></i>031-36622177</strong> <strong class="ph"><i class="fa fa-envelope"></i>paidari_esf@yahoo.com</strong> </div>
        <div class="right">
          <a id="active-btn" href="#" class="btn-search"><i class="fa fa-search"></i></a> <a href="#" class="btn-login"><i class="fa fa-user"></i></a> </div>
        <form action="#" id="search-box-form" class="search-box">
          <input type="text" class="topbar-search-input" placeholder="Search for..."/>
          <button value="" class="topbar-btn-search"><i class="fa fa-search"></i></button>
          <a href="#" class="crose"><i class="fa fa-times"></i></a>
        </form>
      </div>
    </section>
    <!--Head Topbar End--> 
    
    <!--Logo Row Star-->
    <section class="logo-row">
      <div class="container">
        <div class="event-timer"> <strong class="title"><asp:Label ForeColor="Black" ID="lblAmaliat" runat="server" ></asp:Label></strong>   <!--jQuery Final Countdown -->
          <div class="countdown countdown-container "
     data-border-color="rgba(255, 255, 255,1)">
            <div class="clock">
              <div class="clock-item clock-days countdown-time-value">
                <div class="wrap">
                  <div class="inner">
                    <div id="canvas-days" class="clock-canvas"></div>
                    <div class="text">
                      <p class="val">0</p>
                      <p class="type-days type-time">روز</p>
                    </div>
                  </div>
                </div>
                <span class="colun-1">:</span> </div>
              <div class="clock-item clock-hours countdown-time-value">
                <div class="wrap">
                  <div class="inner">
                    <div id="canvas-hours" class="clock-canvas"></div>
                    <div class="text">
                      <p class="val">0</p>
                      <p class="type-hours type-time">ساعت</p>
                    </div>
                  </div>
                </div>
                <span class="colun-2">:</span> </div>
              <div class="clock-item clock-minutes countdown-time-value">
                <div class="wrap">
                  <div class="inner">
                    <div id="canvas-minutes" class="clock-canvas"></div>
                    <div class="text">
                      <p class="val">0</p>
                      <p class="type-minutes type-time">دقیقه</p>
                    </div>
                  </div>
                </div>
                <span class="colun-3">:</span> </div>
              <div class="clock-item clock-seconds countdown-time-value">
                <div class="wrap">
                  <div class="inner">
                    <div id="canvas-seconds" class="clock-canvas"></div>
                    <div class="text">
                      <p class="val">0</p>
                      <p class="type-seconds type-time">ثانیه</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      <%--<strong class="logo"><a href="index.html"><img src="/GolestaneShohada/Design/Image/logo.png" alt="logo1"/></a></strong>--%>
      </div>
    </section>
    <!--Logo Row End--> 
    
    <!--Navigation Row Start-->
    <section class="navigation-row">
      <div class="container">
        <div role="navigation" class="navbar-inverse">
          <div class="container">
            <div class="navbar-header">
              <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
            </div>
            
              
                  <form id="form2" runat="server" >
                      
                     
                      <div class="collapse navbar-collapse">
                      <nav>
                      <uc2:UscDynamicMenu runat="server"  MenuID="nav" ID="UscDynamicMenu" />
                      </nav>
                      </div>
                      </form>
                        
           
           
            <!--/.nav-collapse --> 
          </div>
        </div>
      </div>
    </section>
    <!--Navigation Row End--> 
  </header>
  <!--Header End--> 
  
  <!--Banner Start-->
  <section id="banner">
    <ul id="home-banner">
        <asp:ListView ID="ListView1" runat="server">
            <ItemTemplate>
                 <li> <img src='<%# "/files/photoItems/"+ DataBinder.Eval(Container.DataItem, "PhotoName") %>' 
                     alt='<%#  Eval( "ItemTopic") %>' >
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
              <audio preload="auto" controls="controls">
                <source src="/GolestaneShohada/Media/Audio/kharazi.mp3" />
 
              </audio>
            </div>
          </div>
        </div>
          <strong class="title">شهید خرازی</strong>
        
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
              <div class="col-md-4 col-sm-6">
            <div class="widget-box active">
              <div class="round"><i class="fa fa-map-marker"></i></div>
              <h3>مناطق عملیاتی</h3>
              <p>مناطق عملیاتی در جنگ کدام ها بوده اند و چه شهدایی در این مناطق به شهادت رسیده اند.</p>
              <a href="/GolestaneShohada/Design/fa/WarMap.aspx" class="btn-widget">مناطق</a> </div>
          </div>
          <%--     <div class="col-md-3 col-sm-6">
            <div class="widget-box active">
              <div class="round"><i class="fa fa-gears"></i></div>
              <h3>یگان های عملیاتی</h3>
              <p>یگان های عملیاتی را جستجو نماییم .</p>
              <a href="#" class="btn-widget">یگان ها</a> </div>
          </div>--%>
          <div class="col-md-4 col-sm-6">
            <div class="widget-box">
              <div class="round"><i class="fa fa-map"></i></div>
              <h3>جستجوی عملیاتها</h3>
              <p> آشنایی با عملیاتهای انجام شده و نقطه اثر هر کدام از عملیاتها بر روی نقشه.</p>
              <a href="/GolestaneShohada/Design/fa/amliyatlist.aspx" class="btn-widget">جستجو</a> </div>
          </div>
       
          <div class="col-md-4 col-sm-6">
            <div class="widget-box active">
              <div class="round"><i class="fa fa-users"></i></div>
              <h3>شهدا</h3>
              <p>شهید خود را بر اساس اطلاعات شخصی جستجو کنیم و افکارش را بیشتر بشناسیم.</p>
              <a href="/GolestaneShohada/Design/fa/shohadalist.aspx" class="btn-widget">جستجو</a> </div>
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
              <div class="frame"> <a href="#"><img src="images/latest-sermons-img-1.jpg" alt="img"/></a>
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
              <div class="frame"> <a href="#"><img src="images/latest-sermons-img-2.jpg" alt="img"/></a>
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
    <section class="quote-box slide" id="slide1"   >
      <div class="container">
        <h3>ما را با اندروید دنبال کنید</h3>
        <p>
            نرم افزار کانال آسمانیها
        </p>
          <p>

          <a href="/GolestaneShohada/App/asemaniha.apk"  ><img src="/GolestaneShohada/Design/Image/Android-Apps.png" /></a> 
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
              <div class="frame"> <a href="/GolestaneShohada/Design/fa/ReadItem.aspx?itemID=<%# DataBinder.Eval(Container.DataItem, "ItemID")%>">
                  <img  style="width:263px;height:320px" src='<%# "/files/photoItems/"+ DataBinder.Eval(Container, "DataItem.PhotoName") %>'
                               alt='<%# DataBinder.Eval(Container.DataItem, "ItemTopic") %>'></a>
                <div class="date"><strong class="dat"><%# DataBinder.Eval(Container.DataItem, "dayE") %></strong><strong class="mnt">تیر</strong></div>
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
                    <a href="/GolestaneShohada/Design/fa/ReadItem.aspx?itemID=<%# DataBinder.Eval(Container.DataItem, "ItemID")%>" class="btn-participate">بیشتر</a> </div>
                </div>
              </div>
            </div>
          </div>
                        </div>
                </ItemTemplate>
            </asp:ListView>
          
        </div>
        <a href="/GolestaneShohada/Design/fa/eventarchive.aspx" class="view-calender">مشاهده همه رویدادها</a> </div>
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
    <section class="purchase-section slide" id="slide2"  data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="holder">
          <div class="heading-1">
            <h4>نقشه گلستان شهدا اصفهان</h4>
          </div> 
          <div class="heading-2">
            <h5>شهدا را بر اساس محل مزار جستجو نمایید</h5>
          </div>
          <a href="/GolestaneShohada/Design/fa/GolestanMap.aspx" class="btn-purchase">جستجو</a> </div>
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
                    <img style="max-width:262px;max-height:264px" src='<%# "/files/photoItems/"+ DataBinder.Eval(Container, "DataItem.PhotoName") %>'
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
                <li> <img src="/GolestaneShohada/Design/Image/sample-photo.jpg" alt="img" />
                </li>
                <li> <img src="/GolestaneShohada/Design/Image/sample-photo.jpg" alt="img" />
                </li>
                <li> <img src="/GolestaneShohada/Design/Image/sample-photo.jpg" alt="img" />
                </li>
              </ul>
              <div id="bx-pager"> <a data-slide-index="0" href="#"><img src="/GolestaneShohada/Design/Image/thumb-sample.jpg" alt="img" /></a> <a data-slide-index="1" href="#"><img src="/GolestaneShohada/Design/Image/thumb-sample.jpg" alt="img" /></a> <a data-slide-index="2" href="#"><img src="/GolestaneShohada/Design/Image/thumb-sample.jpg" alt="img" /></a> </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--News Timelines Row End--> 
    
    <!--Our Preachers Box Start-->
<%--    <section class="our-preachers-box">
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
    </section>--%>
    <!--Our Preachers Box End--> 
    
  </div>
  <!-- Main End--> 
  
  <!-- Footer Area Start-->
  <footer id="footer">
    <section class="footer-section">
      <div class="container" >
        <div class="row">
          <div class="col-md-3 col-sm-6">
            <div class="footer-box-1" style="text-align:justify">
              <h4>فرهنگسرای پایداری</h4>
                <p>
                    فرهنگسرای پایداری در سال 1387 به همت شهرداری منطقه 6 آماده و جهت بهره برداری در اختیار سازمان فرهنگی تفریحی شهرداری
                    اصفهان در محله ی همت آباد قرار گرفت، و پس از مدتی به مکان فعلی واقع در مجموعه ی فرهنگی ستارگان جنب گلستان شهدا انتقال یافت
                </p>
            </div>
          </div>
          <div class="col-md-3 col-sm-6">
               <div class="footer-box-1" style="text-align:right">
              <h4>دسترسی آسان</h4>
              <ul  >
                <li>
                  <div  > <strong class="name">  <a href="/GolestaneShohada/Design/fa/shohadalist.aspx">جستجو شهدا</a></strong>
                   </div>
                </li>
             
              </ul>
            </div>
          </div>
          <div class="col-md-3 col-sm-6">
             <div class="footer-box-1" style="text-align:right">
              <h4>سایتهای مرتبط</h4>
             <ul  >
                <li>
                  <div  > <strong class="name">  <a href="http://new.isfahan.ir/Index.aspx?tempname=Isfahan95&lang=1&sub=0">شهرداری اصفهان</a></strong>
                   </div>
                </li>
               <li>
                  <div  > <strong class="name">  <a href="http://www.esfahanfarhang.ir/s/MainFa/211/">سازمان فرهنگی تفریحی شهرداری اصفهان</a></strong>
                   </div>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="footer-box-1" style="text-align:right">
              <h4>ارتباط</h4>
              <address>
              <p>اصفهان خیابان سجاد</p>
              <ul  >
                <li><i class="fa fa-phone"></i>031-36622160</li>
                <li><i class="fa fa-print"></i>031-36622177</li>
                <li><i class="fa fa-envelope-o"></i>paidari_esf@yahoo.com</li>
              </ul>
              </address>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--Footer Social Row Start-->
    <section class="footer-social">
      <div class="container">
        <ul>
          <li><a href="#" class="social-color-3"><i class="fa fa-linkedin"></i></a></li>
          
        </ul>
      </div>
    </section>
    <!--Footer Social Row End--> 
    <!-- Copyrights Section Start-->
    <section class="copyrights-section">
      <div class="container"> <strong class="copy"><span class="bold"> پیاده سازی و اجرا توسط <a > مرورگران</a></span> </strong> </div>
    </section>
    <!-- Copyrights Section End--> 
  </footer>
  <!-- Footer Area End--> 
</div>
<!--Wrapper End--> 
<!--Jquery 1.11.3--> 
<script src="/GolestaneShohada/Design/Js/jquery-1.11.3.min.js"></script> 
<!--Bootstrap Js--> 
<script src="/GolestaneShohada/Design/Js/bootstrap.js"></script> 
<!--Respond Js--> 
<script src="/GolestaneShohada/Design/Js/respond.js" ></script> 
<!--Next Event Countdown--> 
<script src="/GolestaneShohada/Design/Js/kinetic.js"></script> 
<!--Next Event Countdown--> 
<script src="/GolestaneShohada/Design/Js/jquery.final-countdown.js"></script> 
<!--Parallax Effect Js--> 
<script src="/GolestaneShohada/Design/Js/jquery.stellar.min.js"></script> 
<!--Latest Event Contdown Js--> 
<script src="/GolestaneShohada/Design/Js/jquery.plugin.js"></script> 
<!--Latest Event Contdown Js--> 
<script src="/GolestaneShohada/Design/Js/jquery.countdown.js"></script> 
<!--Bxslider Js--> 
<script src="/GolestaneShohada/Design/Js/jquery.bxslider.min.js"></script> 
<!--Content Slider Js--> 
<script src="/GolestaneShohada/Design/Js/jquery.content_slider.js"></script> 
<!-- Style Switcher --> 
<script src="/GolestaneShohada/Design/Js/styleswitch.js"></script> 
<script src="/GolestaneShohada/Design/Js/jquery.tabSlideOut.v1.3.js"></script> 
<!--MP3 Player JS--> 
<script src="/GolestaneShohada/Design/Js/audioplayer.js"></script> 
<!--Event Timer Js--> 
<script type="text/javascript" src="/GolestaneShohada/Design/Js/TimeCircles.js"></script> 
<!--Custome Js--> 
<script src="/GolestaneShohada/Design/Js/custom.js"></script>
<script type="text/javascript">/* <![CDATA[ */(function (d, s, a, i, j, r, l, m, t) { try { l = d.getElementsByTagName('a'); t = d.createElement('textarea'); for (i = 0; l.length - i; i++) { try { a = l[i].href; s = a.indexOf('/cdn-cgi/l/email-protection'); m = a.length; if (a && s > -1 && m > 28) { j = 28 + s; s = ''; if (j < m) { r = '0x' + a.substr(j, 2) | 0; for (j += 2; j < m && a.charAt(j) != 'X'; j += 2) s += '%' + ('0' + ('0x' + a.substr(j, 2) ^ r).toString(16)).slice(-2); j++; s = decodeURIComponent(s) + a.substr(j, m - j) } t.innerHTML = s.replace(/</g, '&lt;').replace(/>/g, '&gt;'); l[i].href = 'mailto:' + t.value } } catch (e) { } } } catch (e) { } })(document);/* ]]> */</script></body>
    <script type="text/javascript">
        var date = (new Date("11/01/2015 13:30"));

        var end = Math.floor((new Date("<%= this.StartAmaliat.ToString() %>")).getTime() / 1000);


        var start = Math.floor((new Date("1/1/2010")).getTime() / 1000);

        var now = Math.floor((new Date).getTime() / 1000);

        $(document).ready(function () {
            if ($('.countdown').length) {
                $('.countdown').final_countdown({
                    'start': start,
                    'end': end,
                    'now': now
                });
            }

        })
    </script>
<!-- Mirrored from html.crunchpress.com/prayer/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 07 Apr 2016 06:56:30 GMT -->
</html>
