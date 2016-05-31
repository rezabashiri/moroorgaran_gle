<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UscNaghsheManategheJangi.ascx.cs" Inherits="CMS.GolestaneShohada.Controls.UscNaghsheManategheJangi" %>
  

    <script type="text/javascript" >
         
        var map;
        google.maps.event.addDomListener(window, 'load', initialize);
        var center = new google.maps.LatLng('31.508993', '47.782261');
 

                function initialize() {
                    var mapOptions = {
                        zoom: 7,
                        center: center
                    }     
                    var doc = document.getElementById('map-canvas');
                    map = new google.maps.Map(doc,
                        mapOptions);

                    var url = "<%= new tkv.Utility.WebConfigurationHelper().GetAppSettingValue("GolestanWebService") %>";
                    if (!url) {
                        alert("خطا در برقراری ارتباط با سرور،بامدیر سیستم تماس بگیرید");
                        window.close();
                    }
                    $.ajax({
                        type: "POST",
                        url: url + "/GetAmaliaMantagheByIdAmaliat",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                     
                        success: function (msg) {
                            CrateMarkers(msg.d);
                          
                        },
                        error: function (xhr, status, error) {

                            alert("err" + error);

                        }
                    });
                    function CrateMarkers(result) {
                       
                        for (var i = 0; i < result.length; i++) {
                           
                            var myLatlng =  new google.maps.LatLng(result[i]['Y'], result[i]['X']);
                            var marker = new google.maps.Marker({
                                position: myLatlng,
                                map: map,
                                title: result[i]['NameNoghteAsar'],
                                animation: google.maps.Animation.DROP
                            });
                            attachMessage(marker, result[i]['NameNoghteAsar'], result[i]['NameMantaghe'], result[i]['NameAmaliat'], result[i]['IDAmaliat']);
                           
                         
                        }
                  
                    }
                    function attachMessage(marker, noghteasar,mogheyat,nameamaliat,idamalit) {
                        var infowindow = new google.maps.InfoWindow({
                            content: '<div>' + 'نام عملیات : ' + nameamaliat + '</br>' + ' نام موقعیت : ' + mogheyat + '</br>' + 'نام نقطه اثر :' + noghteasar + '</br>' + '<a href=PerAmaliyat.aspx?AmaliyatID=' + idamalit + '>اطلاعات بیشتر </a>' + '  </div>'
                        });

                        marker.addListener('click', function () {
                            infowindow.open(marker.get('map'), marker);
                        });
                    }
                }
       
        </script>
<style type="text/css">
    .map-convas {
    width:100%;
    height:700px;
    background-color:black;
    }
</style>
  <div class="map-convas" id="map-canvas"></div>