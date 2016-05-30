<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MapTest.aspx.cs" Inherits="CMS.MapTest" %>

<%@ Register Src="~/GolestaneShohada/Controls/UscShahidMaghbare.ascx" TagPrefix="uc2" TagName="UscShahidMaghbare" %>
<%@ Register Src="~/GolestaneShohada/Controls/UscNaghsheGolestanShohada.ascx" TagPrefix="uc2" TagName="UscNaghsheGolestanShohada" %>
<%@ Register Src="~/GolestaneShohada/Controls/UscNaghsheManategheJangi.ascx" TagPrefix="uc2" TagName="UscNaghsheManategheJangi" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script src="/GolestaneShohada/Design/Js/jquery-1.11.3.min.js"></script> 

    <%--<script type="text/javascript" src="GolestaneShohada/Design/Js/seadragon-min.js" lang="ja"></script>--%>
    	 
    <script src="js/jquery-migrate-1.2.1.min.js"></script>
     
	<script type="text/javascript" src="/GolestaneShohada/Design/Js/jquery.ui.datepicker-cc.all.min.js"></script>
      <script type="text/javascript">
          $(function() {
              // حالت پیشفرض
           
              $('#datepicker0').datepicker({
                  changeMonth: true,
                  changeYear: true
              });
          });
          </script>
</head>
<body>
  
    <form id="form1" runat="server">
    
       
               <%--     <asp:ScriptManager ID="ScriptManager1" runat="server">
                <Scripts>
                    <asp:ScriptReference Path="~/GolestaneShohada/Design/Js/OpenSeadragon.js" />
                </Scripts>
            </asp:ScriptManager>--%>
        <input type="text" id="datepicker0" />
            <table id="output">
      <tr>
        <th class="name"> </th>
        <th class="value">Pixels</th>

        <th class="value">Points</th>
      </tr>
      <tr>
        <th>Mouse position</th>

        <td id="mousePixels">-</td>
        <td id="mousePoints">-</td>
      </tr>
      <tr>

        <th>Viewport dimensions</th>
        <td id="viewportSizePixels">-</td>
        <td id="viewportSizePoints">-</td>

      </tr>
    </table>  
              
      <%--  <uc2:UscNaghsheGolestanShohada runat="server" ID="UscNaghsheGolestanShohada" />
        <uc1:FullSearchAmaliat ID="usc" runat="server"></uc1:FullSearchAmaliat>--%>
         <uc1:DateTime ID="ucsDateTime" runat="server" />
        <asp:Button Text="test" ID="btnte" runat="server" OnClick="btnte_Click" />
            <jq:JQLoader ID="JQLoader1" runat="server" />
             <jq:JQDatePicker ID="JQDatePicker1"  runat="server"></jq:JQDatePicker>
        <%--<uc2:UscNaghsheManategheJangi runat="server" id="UscNaghsheManategheJangi" />--%>
    </form>
</body>
</html>
