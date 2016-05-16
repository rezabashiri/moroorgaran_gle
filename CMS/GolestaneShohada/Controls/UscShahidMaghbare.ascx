<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UscShahidMaghbare.ascx.cs" Inherits="CMS.GolestaneShohada.Controls.UscShahidMaghbare" %>

 <%--<script type="text/javascript" src="GolestaneShohada/Design/Js/seadragon-min.js" lang="ja"></script>--%>
    <script type="text/javascript" src="/GolestaneShohada/Design/Js/MaghbareShahid.js" lang="ja"></script>
<script type="text/javascript">
    
        var id =   <%= GhateID %> ;
   
        setnum(id);
    
</script>
   <style type="text/css">
            #container
            {
                width: 390px;
                height: 220px;
                background-color: black;
                border: 1px solid black;
                color: white;   /* for error messages, etc. */
            }
 
          .overlay
      {
        border: 1px solid white;
      }
        </style>
   <div id="container"  >
      
          
    </div>