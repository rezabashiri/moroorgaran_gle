<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MapTest.aspx.cs" Inherits="CMS.MapTest" %>

<%@ Register Src="~/GolestaneShohada/Controls/UscShahidMaghbare.ascx" TagPrefix="uc2" TagName="UscShahidMaghbare" %>
<%@ Register Src="~/GolestaneShohada/Controls/UscNaghsheGolestanShohada.ascx" TagPrefix="uc2" TagName="UscNaghsheGolestanShohada" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="/assets/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="GolestaneShohada/Design/Js/seadragon-min.js" lang="ja"></script>
    <%--<script type="text/javascript" src="GolestaneShohada/Design/Js/MapCalculation.js" lang="ja"></script>--%>
    <%--   <script type="text/javascript"
              src="http://seadragon.com/ajax/0.8/seadragon-min.js">
        </script>--%>
      <script type="text/javascript">
       
    </script>
</head>
<body>
     <style type="text/css">
            #container
            {
                width: 600px;
                height: 400px;
                background-color: black;
                border: 1px solid black;
                color: white;   /* for error messages, etc. */
            }
              #output
      {
        width: 500px;
        border: none;
        margin: 1em 0em;
      }
      #output td
      {
        width: 50%;
      }
      #output .outputLabel
      {
        font-weight: bold;
      }
          .overlay
      {
        border: 1px solid white;
      }
        </style>
    <form id="form1" runat="server">
    
       
               <%--     <asp:ScriptManager ID="ScriptManager1" runat="server">
                <Scripts>
                    <asp:ScriptReference Path="~/GolestaneShohada/Design/Js/OpenSeadragon.js" />
                </Scripts>
            </asp:ScriptManager>--%>
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
          <%--<uc2:UscShahidMaghbare runat="server" ID="UscShahidMaghbare" />--%>        
        <uc2:UscNaghsheGolestanShohada runat="server" id="UscNaghsheGolestanShohada" />
        <%--<ajaxToolkit:Seadragon SourceUrl="~/GolestaneShohada/Design/GolestanMap/dzc_output.xml" ID="Seadragon1" runat="server"></ajaxToolkit:Seadragon>--%>
    </form>
</body>
</html>
