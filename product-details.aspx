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
<asp:Content ID="productDetailsBody" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:SqlDataSource ID="DetailsSql" runat="server" ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
        SelectCommand="SELECT [prod_id], [category], [prod_color], [prod_title], [prod_features], [O_price], [m_price], [prod_img1], [discount_percent], [prod_description] FROM [Product_Details] WHERE [prod_id] = @prod_id">
        <SelectParameters>
            <asp:QueryStringParameter Name="prod_id" QueryStringField="prod_id" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div id="gallery">
        <ul id="ul1" runat="server">
        </ul>
    </div>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="prod_id" DataSourceID="DetailsSql"
        EnableModelValidation="True">
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <div style="color: #333; line-height: 35px; margin: 0 200px 0 50px;">
                <div style="display: block; text-align: left;">
                    <h1 style="display: inline;">
                        <%# Eval("prod_title") %></h1>
                    <span>(<%# Eval("prod_color")%>)</span>
                </div>
                <div style="display: block; text-align: left;">
                    <div style="display: inline; color: Gray;">
                        <span>Price : </span>
                    </div>
                    <span style="text-decoration: line-through;">Rs.
                        <%# Eval("m_price", "{0:##}") %></span> <span id="pricecolor" style="color: Red;
                            font-size: 24px;">Rs.
                            <%# Eval("O_price", "{0:##}") %></span></span>
                </div>
                <div style="display: block; text-align: left;">
                    <span style="display: inline; color: Gray;">Discount : </span><span style="font-size: 25px;">
                        <%# Eval("discount_percent", "{0:N2}") %>
                        %</span></div>
                <div style="display: block; text-align: left;">
                    <span style="display: inline-table; color: Gray;">Features : </span><span>
                        <%# Eval("prod_features") %></span>
                </div>
                <span>
                    <asp:Button ID="btnBuyNow" runat="server" Text="Buy This Now" />
                </span>
                <div>
                    <span style="font-size: 20px;">Description : </span><span>
                        <%# Eval("prod_description") %></span>
                </div>
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
