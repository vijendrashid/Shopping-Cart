<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true"
    CodeFile="ckeditor.aspx.cs" Inherits="Admin_Panel_ckeditor" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminPanelhead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminPanelMaster" runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <InsertItemTemplate>
            <CKEditor:CKEditorControl ID="markup" runat="server" Text='<%# Bind("markup") %>'></CKEditor:CKEditorControl>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="INSERT">save</asp:LinkButton>
        </InsertItemTemplate>
        <ItemTemplate>
            <br />
            <%# Eval("markup") %>
            
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:h2hConnectionString %>"
        SelectCommand="SELECT [markup] FROM [ckEditor]" InsertCommand="INSERT ckeditor (markup) VALUES (@markup)">
    </asp:SqlDataSource>
</asp:Content>
