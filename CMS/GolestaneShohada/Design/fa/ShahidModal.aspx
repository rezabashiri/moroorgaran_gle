<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShahidModal.aspx.cs" Inherits="CMS.GolestaneShohada.Design.fa.ShahidModal" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="/GolestaneShohada/Design/css/custom.css?ver=1.0.1" rel="stylesheet" type="text/css"/>
<!--Bootstrap 3.1.1 Css-->
<link href="/GolestaneShohada/Design/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<!--RESPONSIVE Css-->
<link rel="stylesheet" href="/GolestaneShohada/Design/css/responsive.css" />
    <link href="/GolestaneShohada/Design/css/jquery.bxslider.css" rel="stylesheet" type="text/css"/>
<!--Content Slider Css-->
<link href="/GolestaneShohada/Design/css/content_slider_style.css" rel="stylesheet" type="text/css" />

<link href="/GolestaneShohada/Design/css/color.css" rel="stylesheet" type="text/css"/>

<script src="/GolestaneShohada/Design/Js/jquery-1.11.3.min.js"></script> 
    <title>جستجوی شهدا</title>

 
</head>
<body>
       <script type="text/javascript">
           $(document).ready(function () {
               if (window.opener) {
                   var ghateid = window.opener.GhateID;
                   var url = "<%= new tkv.Utility.WebConfigurationHelper().GetAppSettingValue("GolestanWebService") %>";
                if (!url) {
                    alert("خطا در برقراری ارتباط با سرور،بامدیر سیستم تماس بگیرید");
                    window.close();
                }

                $.ajax({
                    type: "POST",
                    url: url + "/GetShahidByGhate",
                    data: '{"IDGhate":"' + ghateid + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",

                    success: function (msg) {
                        var grid = $find('<%= RadListView1.ClientID %>');
                        grid.set_dataSource(msg.d);
                        grid.dataBind();

                        },
                        error: function (xhr, status, error) {

                            //alert(xhr.responseText);

                        }
                    });

               }
               function GetImageLinke(serverlink) {
                   var len = serverlink.length;
                   var sub = serverlink.substring(1, len - 1);
                   return sub;
               }
        });
    </script>
    <form id="form1" runat="server">
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
    <div>
        <telerik:RadListView ID="RadListView1" runat="server">
            <ClientSettings>
            <DataBinding ItemPlaceHolderID="placeholder1">
                 <LayoutTemplate>
                     <ul id="placeholder1">

                     </ul>
                 </LayoutTemplate>
                <ItemTemplate >
                          <li >
                           
                   <div class="sermon-box">
                   <div class="frame"> <img src= "GetImageLinke ( #= VirtualAddress # )" alt="img"></img></div> 
                  <div class="text-box">
                    <h2> #=  Name #&nbsp #=  Family #</h2>
                    <div class="detail-row">
                      <ul>
                         
                        <li><a href="javascript:void(0);"><i class="fa fa-map-pin"></i>متولد:  #=  NameShahrestan # </a></li>
                     <li><a href="javascript:void(0);"><i class="fa fa-calendar"></i>تاریخ تولد: #= TarikheTavalod #</a></li>
                          <li><a href="javascript:void(0);"><i class="fa fa-map-marker"></i>شغل:  #=  Shoghl #</a></li>
                        <li><a href="javascript:void(0);"><i class="fa fa-tint"></i>تاریخ شهادت:  #= TarikheShahadat #</a></li> 
                      </ul>
                    </div>
                       <%--<a href= # CreateLink(Eval("ID")) %>' ID="HyperLink1" runat="server"  CssClass="readmore">بیشتر بدانید</a>--%>
                  </div>
                </div>
                          
           
                                
              </li>
                </ItemTemplate>
            </DataBinding>    
            </ClientSettings>
        </telerik:RadListView>
    </div>
    </form>
</body>
</html>
