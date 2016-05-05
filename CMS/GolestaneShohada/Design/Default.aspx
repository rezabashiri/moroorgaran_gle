<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CMS.GolestaneShohada.Design.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from html.crunchpress.com/prayer/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 07 Apr 2016 06:51:01 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>فرهنگستان پایداری اصفهان</title>
<!--Custom Css-->
<link href="css/custom.css" rel="stylesheet" type="text/css"/>
<!--Bootstrap 3.1.1 Css-->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
<!--RESPONSIVE Css-->
<link rel="stylesheet" href="css/responsive.css" />
<!--Audio Player Css-->
<link rel="stylesheet" href="css/audioplayer.css" />
<!--Color Css-->
<link href="css/color.css" rel="stylesheet" type="text/css"/>
<!--Font Awesome-->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<!--Fevicon-->
<link rel="icon" href="images/favicon.ico" type="image/x-icon"/>
<!--Google Fonts-->
<%--<link href='http://fonts.googleapis.com/css?family=Noto+Serif:400,700,400italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600' rel='stylesheet' type='text/css'>--%>
<!--Bxslider Css-->
<link href="css/jquery.bxslider.css" rel="stylesheet" type="text/css" />
<!--Content Slider Css-->
<link href="css/content_slider_style.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.Js/1.4.2/respond.min.js"></script>
<![endif]-->
<!-- Color Css Files Start -->
<link rel="alternate stylesheet" type="text/css" href="css/color-3.css" title="styles3" media="screen" />
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
        <div class="left"> <strong class="ph"><i class="fa fa-phone"></i>(123) 456 7980</strong> <a href="mailto:" class="email"><i class="fa fa-envelope"></i><span class="__cf_email__" data-cfemail="7a13141c153a0a081b031f0854191517">[email&#160;protected]</span><script data-cfhash='f9e31' type="text/javascript">/* <![CDATA[ */!function (t, e, r, n, c, a, p) { try { t = document.currentScript || function () { for (t = document.getElementsByTagName('script'), e = t.length; e--;) if (t[e].getAttribute('data-cfhash')) return t[e] }(); if (t && (c = t.previousSibling)) { p = t.parentNode; if (a = c.getAttribute('data-cfemail')) { for (e = '', r = '0x' + a.substr(0, 2) | 0, n = 2; a.length - n; n += 2) e += '%' + ('0' + ('0x' + a.substr(n, 2) ^ r).toString(16)).slice(-2); p.replaceChild(document.createTextNode(decodeURIComponent(e)), c) } p.removeChild(t) } } catch (u) { } }()/* ]]> */</script></a> </div>
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
        <div class="event-timer"> <strong class="title">Next Event:</strong>
          <div class="countdown countdown-container "
     data-start="1362139200"
     data-end="1388461320"
     data-now="1387461319"
     data-border-color="rgba(255, 255, 255,1)">
            <div class="clock">
              <div class="clock-item clock-days countdown-time-value">
                <div class="wrap">
                  <div class="inner">
                    <div id="canvas-days" class="clock-canvas"></div>
                    <div class="text">
                      <p class="val">0</p>
                      <p class="type-days type-time">DAYS</p>
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
                      <p class="type-hours type-time">HRS</p>
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
                      <p class="type-minutes type-time">MNTS</p>
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
                      <p class="type-seconds type-time">SECS</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      <strong class="logo"><a href="index.html"><img src="/GolestaneShohada/Design/fa/images/logo.png" alt="logo1"/></a></strong>
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
            <div class="collapse navbar-collapse">
              <nav>
                <ul id="nav">
                  <li class="active"><a href="Default.aspx">خانه</a></li>
                  <li><a href="#">درباره ما</a></li>
                  <li><a href="#">منو یک</a>
                    <ul>
                      <li><a href="#">زیر منو یک</a></li>
                      <li><a href="#">زیر منو دو</a></li>
                    </ul>
                  </li>
                  <li><a href="#">اخبار</a></li>
                  <li><a href="#">بلاگ</a></li>
                  <li><a href="#">ارتباط با ما</a></li>
                </ul>
              </nav>
            </div>
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
          <h2><span class="color"></span>الزمالة.
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
              <a href="#" class="btn-widget">جستجو</a> </div>
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
                        <span class="countdown-section"><span class="countdown-amount"><%# DataBinder.Eval(Container.DataItem, "dayE") %></span><span class="countdown-period">Day</span></span>
                        <span class="countdown-section"><span class="countdown-amount"><%# DataBinder.Eval(Container.DataItem, "HourE") %></span><span class="countdown-period">Hrs</span></span>
                        <span class="countdown-section"><span class="countdown-amount"><%# DataBinder.Eval(Container.DataItem, "minE") %></span><span class="countdown-period">Mins</span></span>
                        <span class="countdown-section"><span class="countdown-amount">12</span><span class="countdown-period">Sec</span></span></span></div>
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
  
  <!-- Footer Area Start-->
  <footer id="footer">
    <section class="footer-section">
      <div class="container">
        <div class="row">
          <div class="col-md-3 col-sm-6">
            <div class="footer-box-1">
              <h4>درباره ما</h4>
              <p>یک پاراگراف در مورد فعالیت سایت در اسنجا نوشته می شود. یک پاراگراف در مورد فعالیت سایت در اسنجا نوشته می شود. یک پاراگراف در مورد فعالیت سایت در اسنجا نوشته می شود. یک پاراگراف در مورد فعالیت سایت در اسنجا نوشته می شود. یک پاراگراف در مورد فعالیت سایت در اسنجا نوشته می شود. </p>
            </div>
          </div>
          <div class="col-md-3 col-sm-6">
            
          </div>
          <div class="col-md-3 col-sm-6">
         
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="footer-box-1">
              <h4>ارتباط</h4>
              <address>
              <p>آدرس<br></p>
              <ul>
                <li><i class="fa fa-phone"></i>03112345678</li>
                <li><i class="fa fa-print"></i>03112345678</li>
                <li><i class="fa fa-envelope-o"></i>info@golestan.com</li>
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
      <div class="container"> <strong class="copy"><span class="bold"></span> </strong> </div>
    </section>
    <!-- Copyrights Section End--> 
  </footer>
  <!-- Footer Area End--> 
</div>
<!--Wrapper End--> 
<!--Jquery 1.11.3--> 
<script src="Js/jquery-1.11.3.min.js"></script> 
<!--Bootstrap Js--> 
<script src="Js/bootstrap.js"></script> 
<!--Respond Js--> 
<script src="Js/respond.js" ></script> 
<!--Next Event Countdown--> 
<script src="Js/kinetic.js"></script> 
<!--Next Event Countdown--> 
<script src="Js/jquery.final-countdown.js"></script> 
<!--Parallax Effect Js--> 
<script src="Js/jquery.stellar.min.js"></script> 
<!--Latest Event Contdown Js--> 
<script src="Js/jquery.plugin.js"></script> 
<!--Latest Event Contdown Js--> 
<script src="Js/jquery.countdown.js"></script> 
<!--Bxslider Js--> 
<script src="Js/jquery.bxslider.min.js"></script> 
<!--Content Slider Js--> 
<script src="Js/jquery.content_slider.js"></script> 
<!-- Style Switcher --> 
<script src="Js/styleswitch.js"></script> 
<script src="Js/jquery.tabSlideOut.v1.3.js"></script> 
<!--MP3 Player JS--> 
<script src="Js/audioplayer.js"></script> 
<!--Event Timer Js--> 
<script type="text/javascript" src="Js/TimeCircles.js"></script> 
<!--Custome Js--> 
<script src="Js/custom.js"></script>
<script type="text/javascript">/* <![CDATA[ */(function (d, s, a, i, j, r, l, m, t) { try { l = d.getElementsByTagName('a'); t = d.createElement('textarea'); for (i = 0; l.length - i; i++) { try { a = l[i].href; s = a.indexOf('/cdn-cgi/l/email-protection'); m = a.length; if (a && s > -1 && m > 28) { j = 28 + s; s = ''; if (j < m) { r = '0x' + a.substr(j, 2) | 0; for (j += 2; j < m && a.charAt(j) != 'X'; j += 2) s += '%' + ('0' + ('0x' + a.substr(j, 2) ^ r).toString(16)).slice(-2); j++; s = decodeURIComponent(s) + a.substr(j, m - j) } t.innerHTML = s.replace(/</g, '&lt;').replace(/>/g, '&gt;'); l[i].href = 'mailto:' + t.value } } catch (e) { } } } catch (e) { } })(document);/* ]]> */</script></body>

<!-- Mirrored from html.crunchpress.com/prayer/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 07 Apr 2016 06:56:30 GMT -->
</html>
