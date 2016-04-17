<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MapTest.aspx.cs" Inherits="CMS.MapTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <script type="text/javascript" src="GolestaneShohada/Design/Js/OpenSeadragon.js" lang="ja"></script>
    <%--   <script type="text/javascript"
              src="http://seadragon.com/ajax/0.8/seadragon-min.js">
        </script>--%>
      <script type="text/javascript">
          var viewer;

          function init() {
              viewer = new Seadragon.Viewer("container");
              viewer.openDzi("GolestaneShohada/Design/GolestanMap/GeneratedImages/dzc_output.xml");
          }

          // Seadragon Ajax tutorials:
          // http://seadragon.com/ajax/

          // Seadragon Ajax API reference:
          // http://seadragon.com/ajax/0.8/doc/

          // Seadragon Ajax community support:
          // http://getsatisfaction.com/livelabs/products/livelabs_seadragon_ajax/
      
              Seadragon.Utils.addEvent(window, "load", init);
    </script>
</head>
<body>

    <form id="form1" runat="server">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                <Scripts>
                    <asp:ScriptReference Path="~/GolestaneShohada/Design/Js/OpenSeadragon.js" />
                </Scripts>
            </asp:ScriptManager>
     <div id="container" style="width:800px;height:800px">
      
         
    </div>
        <%--<ajaxToolkit:Seadragon SourceUrl="~/GolestaneShohada/Design/GolestanMap/dzc_output.xml" ID="Seadragon1" runat="server"></ajaxToolkit:Seadragon>--%>
    </form>
</body>
</html>
