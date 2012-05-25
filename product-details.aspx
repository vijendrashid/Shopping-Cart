<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="product-details.aspx.cs" Inherits="product_details" %>

<asp:Content ID="head" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
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
            background-color: #FAFDFA;
            padding: 10px;
            width: auto;
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
<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:SqlDataSource ID="homeSql" runat="server" ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
        SelectCommand="SELECT [prod_id], [prod_title], [prod_features], [O_price], [prod_img1], [discount_percent], [prod_description] FROM [Product_Details] WHERE [prod_id] = @prod_id">
        <SelectParameters>
            <asp:QueryStringParameter Name="prod_id" QueryStringField="prod_id" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div id="gallery">
        <ul id="ul1" runat="server">
        </ul>
    </div>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="prod_id" DataSourceID="homeSql"
        EnableModelValidation="True">
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <div>
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Product Title :"></asp:Label>
                    
                    <asp:Label ID="prod_titleLabel" runat="server" Text='<%# Eval("prod_title") %>' />
                    <br />
                </div>
                <div>
                    Features :
                    <asp:Label ID="prod_featuresLabel" runat="server" Text='<%# Eval("prod_features") %>' /></div>
                <div>
                    Our Price :
                    <asp:Label ID="O_priceLabel" runat="server" Text='<%# Eval("O_price") %>' /></div>
                <div>
                    Discount :
                    <asp:Label ID="discount_percentLabel" runat="server" Text='<%# Eval("discount_percent") %>' /></div>
                <div>
                    Description :
                    <asp:Label ID="prod_descriptionLabel" runat="server" Text='<%# Eval("prod_description") %>' /></div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <br />
</asp:Content>
