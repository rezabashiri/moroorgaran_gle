<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pershahid.aspx.cs" Inherits="CMS.GolestaneShohada.Design.fa.pershahid" MasterPageFile="~/GolestaneShohada/Design/MasterPage/WebMaster.Master" %>

<%@ Register Src="~/GolestaneShohada/Controls/UscShahidMaghbare.ascx" TagPrefix="uc2" TagName="UscShahidMaghbare" %>


<asp:Content ID="content0" runat ="server" ContentPlaceHolderID="head">
    <script type="text/javascript" src="/GolestaneShohada/Design/Js/seadragon-min.js" lang="ja"></script>


    <style type="text/css" >
        #map-canvas {
            width:263px;
            height:152px;
           
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPageHeading">
    <br />

    <h1><i class="fa fa-bookmark"></i> شهید <asp:Label ID="lblName" runat="server" ></asp:Label>&nbsp;<asp:Label ID="lblFamily" runat="server" ></asp:Label></h1>        
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
                <div class="sidebar-latest-news">
                  <h3>سخن آشنایان</h3>
                  <ul>
                      <asp:ListView ID="ListView2" runat="server" OnItemDataBound="ListView2_ItemDataBound">
                          <ItemTemplate>
                                <li>
                      <div class="text-box">
                          <strong class="title"><%# DataBinder.Eval(Container.DataItem, "NameAhena")%>&nbsp;<%# DataBinder.Eval(Container.DataItem, "FamilAshena")%></strong><p><%# DataBinder.Eval(Container.DataItem, "Kholase")%></p>
                        <a href="#" class="readmore" data-toggle="modal" data-target="#ShowMoreModal" data-AshnaID='<%# DataBinder.Eval(Container.DataItem, "ID")%>'>ادامه</a></div>
                    </li>
                          </ItemTemplate>
                      </asp:ListView>
                  </ul>
                </div>
<div class="modal fade" id="ShowMoreModal" tabindex="-1" role="dialog">
<div class="modal-dialog modal-lg" role="document" id="modalDrag">
<div class="modal-content persian">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal">&times;</button>
<h5 class="modal-title"><i class="fa fa-pencil"></i>&nbsp;ادامه سخن</h5>
<input id="lblashna" runat="server" type="hidden" class="english form-control AshID">
</div>
<div class="modal-body">
<div class="box-body">
    <p>
        <asp:Label ID="lblMore" runat="server" Text="Label"></asp:Label></p>
</div>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-default" data-dismiss="modal">بستن</button>
</div>
</div>
</div>
</div>
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">

            <div class="fram-holder">
              <div class="right">
                <div class="date-box"><strong class="title">تاریخ شهادت</strong> <strong class="day">
                    <asp:Label ID="lbldayofWeek" runat="server"></asp:Label></strong> <strong class="date">
                        <asp:Label ID="lblDay" runat="server" ></asp:Label></strong> <strong class="mnt">
                            <asp:Label ID="lblMonth" runat="server"></asp:Label></strong> <strong class="year">
                                <asp:Label ID="lblyear" runat="server" ></asp:Label></strong> </div>
                <ul>
                  <li><span><i class="fa fa-calendar"></i>متولد <asp:Label ID="lblTavalod" runat="server"></asp:Label></span></li>
                  <li><span><i class="fa fa-user"></i>فرزند <asp:Label ID="lblFather" runat="server" ></asp:Label></span></li>
                  <li><span><i class="fa fa-map"></i>اهل <asp:Label ID="lblShahr" runat="server"></asp:Label></span></li>
                  <li><span><i class="fa fa-map-marker"></i>قطعه <asp:Label ID="lblGhete" runat="server"></asp:Label></span></li>
                  <li><span><i class="fa fa-map-marker"></i>عملیات منجر به شهادت: <asp:Label ID="lblamaliat" runat="server"></asp:Label></span></li>
                    <li><span><i class="fa fa-map-marker"></i><asp:Label ID="lblSemat" runat="server"></asp:Label></span></li>
                    <li><span><i class="fa fa-map-marker"></i><asp:Label ID="lblYegan" runat="server"></asp:Label></span></li>
                    <li><span><i class="fa fa-map-marker"></i><asp:Label ID="lblNiroo" runat="server"></asp:Label></span></li>
                </ul></div>
              <div class="event-frame"> <a href="#">
                  <asp:Image ID="Image1" runat="server" /></a>
              
                     <div class="map-row">
                  <div class="event-detail-timer">
                      <strong class="title">
                          محل شهادت
                      </strong>
                      <div >
                          <div class="map-box">
                              <div id="map-canvas"></div>
                    <%--<div id="Div1" class="map_canvas-2 active" style="position: relative; overflow: hidden; transform: translateZ(0px); background-color: rgb(229, 227, 223);"><div class="gm-style" style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;"><div style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0; cursor: url(&quot;http://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;) 8 8, default;"><div style="position: absolute; left: 0px; top: 0px; z-index: 1; width: 100%; transform-origin: 0px 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0);"><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;"><div style="position: absolute; left: 0px; top: 0px; z-index: 0;"><div aria-hidden="true" style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;"><div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 0px; top: -216px;"></div><div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 0px; top: 40px;"></div><div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 256px; top: -216px;"></div><div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 256px; top: 40px;"></div></div></div></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;"></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;"></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;"><div style="position: absolute; left: 0px; top: 0px; z-index: -1;"><div aria-hidden="true" style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;"><div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 0px; top: -216px;"></div><div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 0px; top: 40px;"></div><div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 256px; top: -216px;"></div><div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 256px; top: 40px;"></div></div></div></div><div style="position: absolute; z-index: 0; transform: translateZ(0px); left: 0px; top: 0px;"><div style="overflow: hidden;"></div></div><div style="position: absolute; left: 0px; top: 0px; z-index: 0;"><div aria-hidden="true" style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;"><div style="transform: translateZ(0px); position: absolute; left: 0px; top: -216px; transition: opacity 200ms ease-out;"><img src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i12!2i2074!3i1408!4i256!2m3!1e0!2sm!3i345014245!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=118441" draggable="false" alt="" style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 40px; transition: opacity 200ms ease-out;"><img src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i12!2i2074!3i1409!4i256!2m3!1e0!2sm!3i345014245!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=23391" draggable="false" alt="" style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div><div style="transform: translateZ(0px); position: absolute; left: 256px; top: -216px; transition: opacity 200ms ease-out;"><img src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i12!2i2075!3i1408!4i256!2m3!1e0!2sm!3i345014245!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=64898" draggable="false" alt="" style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div><div style="transform: translateZ(0px); position: absolute; left: 256px; top: 40px; transition: opacity 200ms ease-out;"><img src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i12!2i2075!3i1409!4i256!2m3!1e0!2sm!3i345014245!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=100919" draggable="false" alt="" style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div></div></div></div><div class="gm-style-pbc" style="position: absolute; left: 0px; top: 0px; z-index: 2; width: 100%; height: 100%; transition-duration: 0.3s; opacity: 0; display: none;"><p class="gm-style-pbt">Use two fingers to move the map</p></div><div style="position: absolute; left: 0px; top: 0px; z-index: 3; width: 100%; height: 100%;"></div><div style="position: absolute; left: 0px; top: 0px; z-index: 4; width: 100%; transform-origin: 0px 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0);"><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;"></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;"></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;"></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;"><div style="cursor: default; position: absolute; width: 53px; height: 36px; left: 169px; top: 16px; z-index: 16;"><div style="position: absolute; left: 0px; top: 0px;"><div style="width: 0px; height: 0px; border-right-width: 10px; border-right-style: solid; border-right-color: transparent; border-left-width: 10px; border-left-style: solid; border-left-color: transparent; border-top-width: 24px; border-top-style: solid; border-top-color: rgba(0, 0, 0, 0.0980392); position: absolute; left: 17px; top: 36px;"></div><div style="position: absolute; left: 0px; top: 0px; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; width: 53px; height: 36px; background-color: rgba(0, 0, 0, 0.2);"></div><div style="border-top-width: 24px; position: absolute; left: 17px; top: 33px;"><div style="position: absolute; overflow: hidden; left: -6px; top: -1px; width: 16px; height: 30px;"><div style="position: absolute; left: 6px; transform: skewX(22.6deg); transform-origin: 0px 0px 0px; height: 24px; width: 10px; box-shadow: rgba(0, 0, 0, 0.6) 0px 1px 6px; background-color: rgb(255, 255, 255);"></div></div><div style="position: absolute; overflow: hidden; top: -1px; left: 10px; width: 16px; height: 30px;"><div style="position: absolute; left: 0px; transform: skewX(-22.6deg); transform-origin: 10px 0px 0px; height: 24px; width: 10px; box-shadow: rgba(0, 0, 0, 0.6) 0px 1px 6px; background-color: rgb(255, 255, 255);"></div></div></div><div style="position: absolute; left: 1px; top: 1px; border-radius: 2px; width: 51px; height: 34px; background-color: rgb(255, 255, 255);"></div></div><div class="gm-style-iw" style="top: 9px; position: absolute; left: 15px; width: 23px;"><div style="display: inline-block; overflow: auto; max-height: 654px; max-width: 654px;"></div></div><div style="width: 13px; height: 13px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 10px; z-index: 10000; cursor: pointer;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png" draggable="false" style="position: absolute; left: -2px; top: -336px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div></div></div></div></div><div style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;"><a target="_blank" href="https://maps.google.com/maps?ll=48.85661,2.35222&amp;z=12&amp;t=m&amp;hl=en-US&amp;gl=US&amp;mapclient=apiv3" title="Click to see this area on Google Maps" style="position: static; overflow: visible; float: none; display: inline;"><div style="width: 66px; height: 26px; cursor: pointer;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/google_white5.png" draggable="false" style="position: absolute; left: 0px; top: 0px; width: 66px; height: 26px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div></a></div><div style="padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 256px; height: 110px; position: absolute; left: 45px; top: 5px; background-color: white;"><div style="padding: 0px 0px 10px; font-size: 16px;">Map Data</div><div style="font-size: 13px;">Map data ©2016 Google</div><div style="width: 13px; height: 13px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 12px; z-index: 10000; cursor: pointer;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png" draggable="false" style="position: absolute; left: -2px; top: -336px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div></div><div class="gmnoprint" style="z-index: 1000001; position: absolute; right: 179px; bottom: 0px; width: 127px;"><div draggable="false" class="gm-style-cc" style="-webkit-user-select: none; height: 14px; line-height: 14px;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;"><a style="color: rgb(68, 68, 68); text-decoration: none; cursor: pointer; display: none;">Map Data</a><span>Map data ©2016 Google</span></div></div></div><div class="gmnoscreen" style="position: absolute; right: 0px; bottom: 0px;"><div style="font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);">Map data ©2016 Google</div></div><div class="gmnoprint gm-style-cc" draggable="false" style="z-index: 1000001; -webkit-user-select: none; height: 14px; line-height: 14px; position: absolute; right: 104px; bottom: 0px;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;"><a href="https://www.google.com/intl/en-US_US/help/terms_maps.html" target="_blank" style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);">Terms of Use</a></div></div><div style="width: 25px; height: 25px; overflow: hidden; display: none; margin: 10px 14px; position: absolute; top: 0px; right: 0px;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/sv5.png" draggable="false" class="gm-fullscreen-control" style="position: absolute; left: -52px; top: -86px; width: 164px; height: 112px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div><div draggable="false" class="gm-style-cc" style="-webkit-user-select: none; height: 14px; line-height: 14px; position: absolute; right: 0px; bottom: 0px;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;"><a target="_new" title="Report errors in the road map or imagery to Google" href="https://www.google.com/maps/@48.85661,2.35222,12z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3" style="font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;">Report a map error</a></div></div><div class="gmnoprint gm-bundled-control gm-bundled-control-on-bottom" draggable="false" controlwidth="28" controlheight="55" style="margin: 10px; -webkit-user-select: none; position: absolute; bottom: 69px; right: 28px;"><div class="gmnoprint" controlwidth="28" controlheight="55" style="position: absolute; left: 0px; top: 0px;"><div draggable="false" style="-webkit-user-select: none; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; border-radius: 2px; cursor: pointer; width: 28px; height: 55px; background-color: rgb(255, 255, 255);"><div title="Zoom in" style="position: relative; width: 28px; height: 27px; left: 0px; top: 0px;"><div style="overflow: hidden; position: absolute; width: 15px; height: 15px; left: 7px; top: 6px;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl.png" draggable="false" style="position: absolute; left: 0px; top: 0px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 120px; height: 54px;"></div></div><div style="position: relative; overflow: hidden; width: 67%; height: 1px; left: 16%; top: 0px; background-color: rgb(230, 230, 230);"></div><div title="Zoom out" style="position: relative; width: 28px; height: 27px; left: 0px; top: 0px;"><div style="overflow: hidden; position: absolute; width: 15px; height: 15px; left: 7px; top: 6px;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl.png" draggable="false" style="position: absolute; left: 0px; top: -15px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 120px; height: 54px;"></div></div></div></div><div class="gm-svpc" controlwidth="28" controlheight="28" style="box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; border-radius: 2px; width: 28px; height: 28px; cursor: url(&quot;http://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;) 8 8, default; display: none; position: absolute; background-color: rgb(255, 255, 255);"><div style="position: absolute; left: 1px; top: 1px;"></div></div><div class="gmnoprint" controlwidth="28" controlheight="0" style="display: none; position: absolute;"><div title="Rotate map 90 degrees" style="width: 28px; height: 28px; overflow: hidden; position: absolute; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; cursor: pointer; display: none; background-color: rgb(255, 255, 255);"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png" draggable="false" style="position: absolute; left: -141px; top: 6px; width: 170px; height: 54px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div><div class="gm-tilt" style="width: 0px; height: 0px; overflow: hidden; position: absolute; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; top: 0px; cursor: pointer; background-color: rgb(255, 255, 255);"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png" draggable="false" style="position: absolute; left: 0px; top: 0px; width: 170px; height: 54px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div></div></div></div></div>--%>
                              <%--<script src="http://www.webestools.com/google_map_gen.js?lati="+<%=  X %>+"&amp;long=&amp;zoom=14&amp;width=26&amp;height=152&amp;mapType=normal&amp;map_btn_normal=yes&amp;map_btn_satelite=yes&amp;map_btn_mixte=yes&amp;map_small=yes&amp;marqueur=yes&amp;info_bulle=%D8%B4%D8%B1%DA%A9%D8%AA%20%D8%A8%D9%87%DA%A9%D9%88" gt="" lt="" script="" br="" p="" type="text/javascript"></script>--%>
                   
                               </div>
                      </div>
                  </div>
                  <div class="map-box">
                       <uc2:UscShahidMaghbare runat="server" ID="UscShahidMaghbare" />
                  </div>
                </div>
              </div>
            </div>
    <div class="lineH blog-detail">
        <asp:ListView ID="ListView1" runat="server">
            <ItemTemplate>
                <h2><%# DataBinder.Eval(Container.DataItem, "NameNoeMatlab") %></h2>
                <blockquote><q><%# DataBinder.Eval(Container.DataItem, "Kholase") %></q> </blockquote>
                <p><%# DataBinder.Eval(Container.DataItem, "Tozihat") %></p>
            </ItemTemplate>
        </asp:ListView>
        </div>
        <script type="text/javascript"   src="http://maps.googleapis.com/maps/api/js?key=AIzaSyB2DiT3FNLpHAw407Iph1GNo8OT12ijhQg"></script>

        <script type="text/javascript" >
            var map;
            var myLatlng = new google.maps.LatLng( <%= Y %>,<%= X %>);
            function initialize() {
                var mapOptions = {
                    zoom: 8,
                    center: myLatlng
                }
                var doc = document.getElementById('map-canvas');
                map = new google.maps.Map(document.getElementById('map-canvas'),
                    mapOptions);
                marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map
                });
            }

            google.maps.event.addDomListener(window, 'load', initialize);
</script>
</asp:Content>
