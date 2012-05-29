<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true"
    CodeFile="AddProduct.aspx.cs" Inherits="Admin_Panel_AddProduct" %>

<%@ Register Assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.DynamicData" TagPrefix="cc1" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="addproductHead" ContentPlaceHolderID="AdminPanelhead" runat="Server">
</asp:Content>
<asp:Content ID="addproductbody" ContentPlaceHolderID="AdminPanelMaster" runat="Server">
    <%--<div class="button">
        <asp:Button ID="btnAdd" runat="server" Text="Add" />
        <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnSubmit_Click" /></div>
    <br />
    <asp:Label ID="lblProd_id" runat="server" Text="Product ID : " 
        AssociatedControlID="txtProd_id"></asp:Label>
    <asp:TextBox ID="txtProd_id" runat="server" OnTextChanged="txtProd_id_TextChanged"
        TextMode="MultiLine"></asp:TextBox>
    <asp:Button ID="btnGetData" runat="server" OnClick="btnGetData_Click" Text="Get Data" />
    <br />
    <br />--%>
    <asp:Label ID="lbl_sku" runat="server" Text="SKU : " 
        AssociatedControlID="txtSku"></asp:Label>
    <asp:TextBox ID="txtSku" runat="server" MaxLength="50"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvSku" runat="server" 
        ControlToValidate="txtSku" Display="Dynamic" >(Required)</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lbl_pro_name" runat="server" Text="Product Title :" 
        AssociatedControlID="txtPro_Title"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtPro_Title" runat="server" MaxLength="50"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvPro_title" runat="server" 
        ControlToValidate="txtPro_Title" Display="Dynamic">(Required)</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblWeight" runat="server" Text="Weight : " 
        AssociatedControlID="txtWeight"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtWeight" runat="server"></asp:TextBox>
    <asp:CompareValidator ID="cvWeight" runat="server" 
        ControlToValidate="txtWeight" Operator="DataTypeCheck" Type="Double"> (Invalid Weight)</asp:CompareValidator>
    <br />
    <br />
    <asp:Label ID="lblMetaKeywords" runat="server" 
        Text="Meta Keywords(optional) : " AssociatedControlID="txtMetaKeywords"></asp:Label>
    <br />
    <asp:TextBox ID="txtMetaKeywords" runat="server" MaxLength="298" Columns="40" Rows="5"
        TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblMetaDescription" runat="server" Text="Meta Description : " 
        AssociatedControlID="txtMetaDescription"></asp:Label>
    <br />
    <asp:TextBox ID="txtMetaDescription" runat="server" MaxLength="298" Columns="40"
        Rows="4" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvMetaDesc" runat="server" 
        ControlToValidate="txtMetaDescription" Display="Dynamic">(Required)</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblCategory" runat="server" Text="Category :" 
        AssociatedControlID="ddlCategory"></asp:Label>
    <asp:DropDownList ID="ddlCategory" runat="server">
        <asp:ListItem Selected="True">Touch Screen</asp:ListItem>
        <asp:ListItem>Qwerty</asp:ListItem>
        <asp:ListItem>Tab</asp:ListItem>
        <asp:ListItem>Dual Sim</asp:ListItem>
        <asp:ListItem>Accessories</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="lbl_brand" runat="server" Text="Brand :" 
        AssociatedControlID="txtBrand"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtBrand" runat="server" MaxLength="30"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvBrand" runat="server" 
        ControlToValidate="txtBrand" Display="Dynamic">(Required)</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lbl_colour" runat="server" Text="Colour :" 
        AssociatedControlID="txtColour"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtColour" runat="server" MaxLength="20"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbl_featr" runat="server" Text="Features :" 
        AssociatedControlID="ckeditorFeatures"></asp:Label>
    <br />
    <CKEditor:CKEditorControl ID="ckeditorFeatures" runat="server" Width="600px"></CKEditor:CKEditorControl>
    <asp:RequiredFieldValidator ID="rfvCKFeatures" runat="server" 
        ControlToValidate="ckeditorFeatures" Display="Dynamic">(Required)</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lbl_descp" runat="server" Text="Description :" 
        AssociatedControlID="ckeditorDescription"></asp:Label>
    <CKEditor:CKEditorControl ID="ckeditorDescription" runat="server" Width="600px"></CKEditor:CKEditorControl>
    <asp:RequiredFieldValidator ID="rfvCKDesc" runat="server" 
        ControlToValidate="ckeditorDescription" Display="Dynamic">(Required)</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lbl_price" runat="server" Text="Price :" 
        AssociatedControlID="txtPrice"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvPrice" runat="server" 
        ControlToValidate="txtPrice" Display="Dynamic">(Required)</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="cvPrice" runat="server" ControlToValidate="txtPrice" 
        Operator="DataTypeCheck" Type="Currency">(Invalid price)</asp:CompareValidator>
    <br />
    <br />
    <asp:Label ID="lbl_mrktprc" runat="server" Text="Market Price :" 
        AssociatedControlID="txtMrkt_price"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtMrkt_price" runat="server"></asp:TextBox>
    <asp:CompareValidator ID="cvMrktPrice" runat="server" 
        ControlToCompare="txtPrice" ControlToValidate="txtMrkt_price" Display="Dynamic" 
        ErrorMessage="(The Market price can not be small than Price)" 
        Operator="GreaterThanEqual" Type="Currency"></asp:CompareValidator>
    <br />
    <br />
    <asp:Label ID="lbl_Qty" runat="server" Text="Quantity :" 
        AssociatedControlID="txtQty"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtQty" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvQty" runat="server" 
        ControlToValidate="txtQty" Display="Dynamic">(Required)</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="cvQty" runat="server" ControlToValidate="txtQty" 
        Operator="DataTypeCheck" Type="Integer">(Invalid Quantity)</asp:CompareValidator>
    <br />
    <br />
    <asp:Label ID="lbl_dlvrddays" runat="server" Text="Delivered Days :"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtDelivrd_Days" runat="server" MaxLength="2"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvDelivrd_Days" runat="server" 
        ControlToValidate="txtDelivrd_Days" Display="Dynamic">(Required)</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="cvDelivrdDays" runat="server" 
        ControlToValidate="txtDelivrd_Days" Operator="DataTypeCheck" Type="Integer">(Invalid Delivered Days)</asp:CompareValidator>
    <br />
    <br />
    <%--<asp:Label ID="lbl_productFolderName" runat="server" Text="Product Folder Name : "></asp:Label>
    <asp:TextBox ID="txtProductFolderName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvProductFolderName" runat="server" 
        ControlToValidate="txtProductFolderName" Display="Dynamic">(Required)</asp:RequiredFieldValidator>
    <br />
    <br />--%>
    <asp:FileUpload ID="fupl_img1" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
        ControlToValidate="fupl_img1" Display="Dynamic">(Required)</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:FileUpload ID="fupl_img2" runat="server" />
    <br />
    <br />
    <asp:FileUpload ID="fupl_img3" runat="server" />
    <br />
    <br />
    <asp:FileUpload ID="fupl_img4" runat="server" />
    <br />
    <br />
    <asp:FileUpload ID="fupl_img5" runat="server" />
    <br />
    <br />
    <asp:FileUpload ID="fupl_img6" runat="server" />
    <br />
    <br />
    <asp:FileUpload ID="fupl_img7" runat="server" />
    <br />
    <br />
    <asp:FileUpload ID="fupl_img8" runat="server" />
    <br />
    <br />
    <asp:FileUpload ID="fupl_img9" runat="server" />
    <br />
    <br />
    <asp:FileUpload ID="fupl_img10" runat="server" />
    <br />
    <br />
    <asp:FileUpload ID="fupl_img11" runat="server" />
    <br />
    <br />
    <div class="button">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CommandName="Insert" OnClick="btnSubmit_Click" />
        <asp:Button ID="btnReset" runat="server" Text="Reset" CommandName="Cancel" /></div>
    <br />
    <br />
</asp:Content>
