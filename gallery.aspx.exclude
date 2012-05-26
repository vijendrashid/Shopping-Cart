<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true"
    CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminPanelhead" runat="Server">
    <script type="text/javascript" src="javascripts/jquery.js"></script>
    <script type="text/javascript" src="javascripts/jquery.lightbox-0.5.js"></script>
    <link rel="stylesheet" type="text/css" href="CSS/jquery.lightbox-0.5.css" media="screen" />
    <!-- Ativando o jQuery lightBox plugin -->
    <script type="text/javascript">
        $(function () {
            $('#gallery a').lightBox();
        });
    </script>
    <style type="text/css">
        /* jQuery lightBox plugin - Gallery style */
        #gallery
        {
            background-color: #444;
            padding: 10px;
            width: 900px;
        }
        #gallery ul
        {
            list-style: none;
        }
        #gallery ul li
        {
            display: inline;
        }
        #gallery ul img
        {
            border: 5px solid #3e3e3e;
            border-width: 5px 5px 20px;
        }
        #gallery ul a:hover img
        {
            border: 5px solid #fff;
            border-width: 5px 5px 20px;
            color: #fff;
        }
        #gallery ul a:hover
        {
            color: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminPanelMaster" runat="Server">
    <div id="gallery">
        <ul id="ul1" runat="server">
            <%--<li><a href="photos/image1.jpg" title="Utilize a flexibilidade dos seletores da jQuery e crie um grupo de imagens como desejar. $('#gallery').lightBox();">
                <img src="photos/thumb_image1.jpg" width="72" height="72" alt="" />
            </a></li>
            <li><a href="photos/image2.jpg" title="Utilize a flexibilidade dos seletores da jQuery e crie um grupo de imagens como desejar. $('#gallery a').lightBox();">
                <img src="photos/thumb_image2.jpg" width="72" height="72" alt="" />
            </a></li>
            <li><a href="photos/image3.jpg" title="Utilize a flexibilidade dos seletores da jQuery e crie um grupo de imagens como desejar. $('#gallery a').lightBox();">
                <img src="photos/thumb_image3.jpg" width="72" height="72" alt="" />
            </a></li>
            <li><a href="photos/image4.jpg" title="Utilize a flexibilidade dos seletores da jQuery e crie um grupo de imagens como desejar. $('#gallery a').lightBox();">
                <img src="photos/thumb_image4.jpg" width="72" height="72" alt="" />
            </a></li>
            <li><a href="photos/image5.jpg" title="Utilize a flexibilidade dos seletores da jQuery e crie um grupo de imagens como desejar. $('#gallery a').lightBox();">
                <img src="photos/thumb_image5.jpg" width="72" height="72" alt="" /> </li>--%>
        </ul>
    </div>
    <br />
    <br />
</asp:Content>
