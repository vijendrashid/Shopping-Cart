<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true"
    CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminPanelhead" runat="Server">
    <link rel="stylesheet" type="text/css" href="CSS/prettyPhoto.css" charset="utf-8"
        media="screen" />
    <script type="text/javascript" src="javascripts/jquery-1.3.2.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="javascripts/jquery-1.4.4.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="javascripts/jquery.prettyPhoto.js" charset="utf-8"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminPanelMaster" runat="Server">
    <asp:DataList ID="galleryDataList" RepeatColumns="5" runat="server" OnPreRender="galleryDataList_PreRender">
        <ItemTemplate>
            <a href='<%# Eval("Name","/{0}")%>' rel="prettyPhoto[pp_gal]" title="You can add caption to pictures.">
                <img src='<%# Eval("Name","/{0}")%>' width="60" height="60" alt='<%# Eval("Name") %>' />
            </a>
        </ItemTemplate>
    </asp:DataList>
    <script type="text/javascript" charset="utf-8">
        $(document).ready(function () {
            $("a[rel^='prettyPhoto']").prettyPhoto();
        });
    </script>
</asp:Content>
