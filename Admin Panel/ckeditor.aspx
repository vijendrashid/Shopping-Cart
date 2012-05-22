<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true" CodeFile="ckeditor.aspx.cs" Inherits="Admin_Panel_ckeditor" %>

<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminPanelhead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminPanelMaster" Runat="Server">
    <CKEditor:CKEditorControl ID="EditorControl1" runat="server">
    </CKEditor:CKEditorControl>
    <CKEditor:CKEditorControl ID="EditorControl2" runat="server"></CKEditor:CKEditorControl>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
</asp:Content>

