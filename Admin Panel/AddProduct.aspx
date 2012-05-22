<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true"
    CodeFile="AddProduct.aspx.cs" Inherits="Admin_Panel_AddProduct" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="addproductHead" ContentPlaceHolderID="AdminPanelhead" runat="Server">
</asp:Content>
<asp:Content ID="addproductbody" ContentPlaceHolderID="AdminPanelMaster" runat="Server">
    <br />
    <br />
    <asp:Label ID="lbl_sku" runat="server" Text="SKU : "></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtSku" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbl_pro_name" runat="server" Text="Product Title :"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtPro_Title" runat="server" MaxLength="30"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblWeight" runat="server" Text="Weight : "></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtWeight" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblMetaKeywords" runat="server" Text="Meta Keywords(optional) : "></asp:Label>
    <br />
    <asp:TextBox ID="txtMetaKeywords" runat="server" MaxLength="298" Columns="40" Rows="5"
        TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblMetaDescription" runat="server" Text="Meta Description : "></asp:Label>
    <br />
    <asp:TextBox ID="txtMetaDescription" runat="server" MaxLength="298" Columns="40"
        Rows="4" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblCategory" runat="server" Text="Category :"></asp:Label>
    <asp:DropDownList ID="ddlCategory" runat="server">
        <asp:ListItem>Touch Screen</asp:ListItem>
        <asp:ListItem>Qwerty</asp:ListItem>
        <asp:ListItem>Tab</asp:ListItem>
        <asp:ListItem>Accessories</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="lbl_brand" runat="server" Text="Brand :"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtBrand" runat="server" MaxLength="30"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbl_colour" runat="server" Text="Colour :"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtColour" runat="server" MaxLength="20"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbl_featr" runat="server" Text="Features :"></asp:Label>
    <br />
    <CKEditor:CKEditorControl ID="ckeditorFeatures" runat="server"></CKEditor:CKEditorControl>
    <br />
    <br />
    <asp:Label ID="lbl_descp" runat="server" Text="Description :"></asp:Label>
    <CKEditor:CKEditorControl ID="ckeditorDescription" runat="server"></CKEditor:CKEditorControl>
    <br />
    <br />
    <asp:Label ID="lbl_price" runat="server" Text="Price :"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbl_mrktprc" runat="server" Text="Market Price :"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtMrkt_price" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbl_Qty" runat="server" Text="Quantity :"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtQty" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbl_dlvrddays" runat="server" Text="Delivered Days :"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtDelivrd_Days" runat="server" MaxLength="2"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbl_productFolderName" runat="server" Text="Product Folder Name : "></asp:Label>
    <asp:TextBox ID="txtProductFolderName" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:FileUpload ID="fupl_img1" runat="server" />
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
    <div>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CommandName="Insert" OnClick="btnSubmit_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnReset" runat="server" Text="Reset" CommandName="Cancel" /></div>
    <br />
    <br />
</asp:Content>
