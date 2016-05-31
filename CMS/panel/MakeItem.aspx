<%@ Page Language="C#" AutoEventWireup="true" Inherits="panel_MakeItem"
    MasterPageFile="~/masterpages/MgrMaster.Master" EnableEventValidation="false" ValidateRequest="false" Codebehind="MakeItem.aspx.cs" %>

<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="MKB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <title>ایجاد و ویرایش مطلب جدید</title>
    <meta name="robots" content="nosnippet"/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <meta name="author" content="مرورگران"/>

    <script type="text/javascript" src="../js/tinymce/tinymce.min.js"></script>
   <script type="text/javascript">
       tinymce.init({
           selector: ".MyEditor",
           theme: 'modern',
           plugins: [
             'advlist autolink lists link image charmap print preview hr anchor pagebreak',
             'searchreplace wordcount visualblocks visualchars code fullscreen',
             'insertdatetime media nonbreaking save table contextmenu directionality',
             'emoticons template paste textcolor colorpicker textpattern imagetools'
           ],
           toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
           toolbar2: 'print preview media | forecolor backcolor emoticons',
           image_advtab: true,
           valid_elements: "@[id|class|style|title|dir<ltr?rtl|lang|xml::lang|onclick|ondblclick|"
+ "onmousedown|onmouseup|onmouseover|onmousemove|onmouseout|onkeypress|"
+ "onkeydown|onkeyup],a[rel|rev|charset|hreflang|tabindex|accesskey|type|"
+ "name|href|target|title|class|onfocus|onblur],strong/b,em,i,strike,u,"
+ "#p,-ol[type|compact],-ul[type|compact],-li,br,img[longdesc|usemap|"
+ "src|border|alt=|title|hspace|vspace|width|height|align],-sub,-sup,"
+ "-blockquote,-table[border=0|cellspacing|cellpadding|width|frame|rules|"
+ "height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|"
+ "height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,"
+ "#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor"
+ "|scope],#th[colspan|rowspan|width|height|align|valign|scope],caption,-div,"
+ "-span,-code,-pre,address,-h1,-h2,-h3,-h4,-h5,-h6,hr[size|noshade],-font[face"
+ "|size|color],dd,dl,dt,cite,abbr,acronym,del[datetime|cite],ins[datetime|cite],"
+ "object[classid|width|height|codebase|*],param[name|value|_value],embed[type|width"
+ "|height|src|*],script[src|type],map[name],area[shape|coords|href|alt|target],bdo,"
+ "button,col[align|char|charoff|span|valign|width],colgroup[align|char|charoff|span|"
+ "valign|width],dfn,fieldset,form[action|accept|accept-charset|enctype|method],"
+ "input[accept|alt|checked|disabled|maxlength|name|readonly|size|src|type|value],"
+ "kbd,label[for],legend,noscript,optgroup[label|disabled],option[disabled|label|selected|value],"
+ "q[cite],samp,select[disabled|multiple|name|size],small,"
+ "textarea[cols|rows|disabled|name|readonly],tt,var,big,iframe[src|allowfullscreen]"
       });
    </script>
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContentPH">
     
    <div class="clear">
    </div>
    <div class="confirmMSG" id="confirmDiv" visible="false" runat="server">
        <asp:Label ID="lblOk" runat="server"></asp:Label>
    </div>
    <div class="clearFloat">
    </div>
    <div class="errorMSG" id="errorDiv" runat="server" visible="false">
        <asp:Label ID="lblError" runat="server"></asp:Label>
    </div>
    <div class="clear">
    </div>
    <div id="title_bar">
        <h1>
            <asp:Label ID="lblTitle" runat="server"></asp:Label></h1>
        <span>
            <asp:Label ID="lblSpanTitle" runat="server"></asp:Label></span>
    </div>
    <div class="clear">
    </div>
    <div id="showback">
        <div class="row  ">
            <div class="col-sm-2 text-left">
                عنوان مطلب<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="txtTopic" Text="*" ErrorMessage="عنوان مطلب را وارد کنید" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                :
            </div>
            <div class="col-sm-8 text-right">
                <asp:TextBox ID="txtTopic" runat="server" CssClass="Mytxt persian form-control"
                    Width="500px" MaxLength="100"></asp:TextBox>
            </div>
        </div>
        <!-- end of row -->
        <div class="row  ">
            <div class="col-sm-2 text-left">
                گروه:
            </div>
            <div class="col-sm-8 text-right">
                <asp:DropDownList ID="drpGrpNews" runat="server" CssClass="Mydrp form-control">
                </asp:DropDownList>
            </div>
        </div>
        <!-- end of row -->
        <div class="clear">
        </div>
        <div class="row  " id="DivPhoto" runat="server" visible="false">
            <div class="col-sm-2 text-left">
                تصویر فعلی:
            </div>
            <div class="col-sm-8 text-right">
                <asp:Image ID="imgItem" runat="server" Height="150px" Width="220px" />
            </div>
        </div>
        <!-- end of row -->
        <div class="clear">
        </div>
        <div class="row  ">
            <div class="col-sm-2 text-left">
                <asp:Label ID="lblPhoto" runat="server" Text="تصویر مطلب:" Font-Size="13px"></asp:Label>
                <br />
                <asp:Label ID="Label1" runat="server" Text="حداکثر حجم 150 کیلوبایت"></asp:Label>
            </div>
            <div class="col-sm-8 text-right">
             <%--   <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="Server" />--%>
                <asp:AsyncFileUpload ID="AsyncFileUpload1" runat="server" />
            </div>
        </div>
        <div class="clear">
        </div>
        <!-- end of row -->
        <div class="row  ">
            <div class="col-sm-2 text-left">
                <asp:Label ID="lblSummary" runat="server" Text="خلاصه مطلب" Font-Size="12px"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSummary"
                    ErrorMessage="خلاصه مطلب را وارد کنید" Text="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                :
            </div>
            <div class="col-sm-8 text-right">
                <asp:TextBox ID="txtSummary" runat="server" CssClass="Mytxt persian form-control" Height="50px" TextMode="MultiLine"
                    Width="97%"></asp:TextBox>
            </div>
        </div>
        <!-- end of row -->
        <div class="clear">
        </div>
        <div class="row " id="DivBody" runat="server">
            <div class="col-sm-2 text-left">
                متن کامل
                :
            </div>
            <div class="col-sm-8 text-right">
                    <textarea id="editor" class="MyEditor" runat="server" name="content" style="width: 100%;height:500px;"></textarea>
            </div>
        </div>
        <!-- end of row -->
        <div class="clear">
        </div>
        <div class="row "  id="DivExFile" runat="server">
            <div class="col-sm-2 text-left">
                فایل فعلی:
            </div>
            <div class="col-sm-8 text-right">
                <asp:LinkButton ID="lnkBtnExFile" runat="server" OnClick="lnkBtnExFile_Click"></asp:LinkButton>
            </div>
        </div>
        <div class="clear">
        </div>
        <div class="row  " id="DivUplode" runat="server">
            <div class="col-sm-2 text-left">
                <asp:Label ID="lblFile" runat="server" Text="فایل جهت دانلود:"></asp:Label>
            </div>
            <div class="col-sm-8 text-right">
                <asp:AsyncFileUpload ID="AsyncFileUpload2" runat="server" />
                <br />
            </div>
        </div>
        <!-- end of row -->
        <div class="clear">
        </div>
        <div class="first_row color1">
            وضعیت مطلب
        </div>
        <div class="row  ">
            <div class="col-sm-2 text-left">
                نمایش در صفحه اول:
            </div>
            <div class="col-sm-8 text-right">
                <asp:DropDownList ID="drpFreshStat" runat="server" CssClass="Mydrp persian form-control">
                </asp:DropDownList>
            </div>
        </div>
        <!-- end of row -->
        <div class="row  ">
            <div class="col-sm-2 text-left">
                وضعیت نظردهی:
            </div>
            <div class="col-sm-8 text-right">
                <asp:DropDownList ID="drpCommentStat" runat="server" CssClass="Mydrp persian form-control">
                </asp:DropDownList>
            </div>
        </div>
        <!-- end of row -->
        <div class="row  ">
            <div class="col-sm-2 text-left">
                وضعیت انتشار:
            </div>
            <div class="col-sm-8 text-right">
                <asp:DropDownList ID="drpPubStat" runat="server" CssClass="Mydrp persian form-control">
                </asp:DropDownList>
            </div>
        </div>
        <!-- end of row -->
        <div class="first_row color1">
            زمان و تاریخ انتشار مطلب
        </div>
        <div class="row  ">
            <div class="col-sm-2 text-left">
                تاریخ انتشار:
            </div>
            <div class="col-sm-8 text-right">
                <asp:TextBox ID="txtDayPub" runat="server" CssClass="Mytxt persian" Width="25px"
                    MaxLength="2"></asp:TextBox>
                /
                <asp:TextBox ID="txtmonthPub" runat="server" CssClass="Mytxt persian" Width="25px"
                    MaxLength="2"></asp:TextBox>
                /
                <asp:TextBox ID="txtYearPub" runat="server" CssClass="Mytxt persian" Width="50px"
                    MaxLength="4"></asp:TextBox>
            </div>
        </div>
        <!-- end of row -->
        <div class="row  ">
            <div class="col-sm-2 text-left">
                زمان انتشار:
            </div>
            <div class="col-sm-8 text-right">
                <MKB:TimeSelector ID="TimeSelector1" runat="server" CssClass="english right" SelectedTimeFormat="TwentyFour"
                    DisplaySeconds="False">
                </MKB:TimeSelector>
            </div>
        </div>
        <!-- end of row -->
        <div class="last_row color3">
            <asp:Button ID="btnSubmit" runat="server" Text="درج مطلب" CssClass="btn btn-theme03" Style="float: left; margin-left: 10px;" OnClick="btnSubmit_Click1"/>
        </div>
    </div>
</asp:Content>
