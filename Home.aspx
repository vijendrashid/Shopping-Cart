<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
</asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server">
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <iframe runat="server" id="productVideo" width="420" height="315" src="" frameborder="0"
            allowfullscreen="0"></iframe>
    </asp:Panel>
</asp:Content>
