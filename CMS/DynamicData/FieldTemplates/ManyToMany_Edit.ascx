<%@ Control Language="C#" CodeBehind="ManyToMany_Edit.ascx.cs" Inherits="DynamicWebApp.ManyToMany_EditField" %>
<%@ Register Assembly="DropDownCheckBoxes" Namespace="Saplin.Controls" TagPrefix="cc1" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

 
<div class ="col-sm-12" >
<%--<telerik:RadComboBox EnableCheckAllItemsCheckBox="true" RenderMode="Lightweight"  Skin="Web20"   DropDownAutoWidth="Enabled" AllowCustomText="true"   ID="cmbForignKeys" OnDataBound="cmbForignKeys_DataBound" runat="server">
    <ExpandAnimation Type="InOutBounce" />
 <ItemTemplate>
     <asp:CheckBox ID="chk" runat="server" />
 </ItemTemplate>
</telerik:RadComboBox>--%>
    <cc1:DropDownCheckBoxes ID="DropDownCheckBoxes1"   CssClass="form-control"   UseButtons="false" AutoPostBack="false" OnDataBound="cmbForignKeys_DataBound" Width="50px"  runat="server">
             <Style   DropDownBoxBoxWidth="290px"    ></Style>
        <Texts OkButton="انتخاب" CancelButton="انصراف" SelectBoxCaption="انتخاب" SelectAllNode="انتخاب همه" />
        
    </cc1:DropDownCheckBoxes>
    </div>