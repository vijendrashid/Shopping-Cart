<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="product-details.aspx.cs" Inherits="product_details" %>

<asp:Content ID="head" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
    <link rel="stylesheet" type="text/css" href="CSS/prettyPhoto.css" charset="utf-8"
        media="screen" />
    <script type="text/javascript" src="javascripts/jquery-1.3.2.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="javascripts/jquery-1.4.4.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="javascripts/jquery.prettyPhoto.js" charset="utf-8"></script>
</asp:Content>
<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="galleryDataList" runat="server" DataSourceID="homeSql" RepeatColumns="11"
        DataKeyField="prod_id">
        <ItemTemplate>
            <a href='<%#Eval("prod_img1") %>' rel="prettyPhoto[pp_gal]"
                title="You can add caption to pictures.">
                <img src='<%#Eval("prod_img1") %>' width="60" height="60"
                    alt='<%# Eval("prod_img1") %>' />
            </a>
        
            <br />
            prod_id:
            <asp:Label ID="prod_idLabel" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "folder_images") %>' />
            <br />
            <script type="text/javascript" charset="utf-8">
                $(document).ready(function () {
                    $("a[rel^='prettyPhoto']").prettyPhoto();
                });
            </script>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="homeSql" runat="server" ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
        SelectCommand="SELECT [prod_id], [prod_title], [prod_features], [O_price], [prod_img1], [folder_images], [discount_percent], [prod_description] FROM [Product_Details] WHERE [prod_id] = @prod_id">
        <SelectParameters>
            <asp:QueryStringParameter Name="prod_id" QueryStringField="prod_id" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="prod_id" DataSourceID="homeSql"
        EnableModelValidation="True">
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <span style="">prod_id:
                <asp:Label ID="prod_idLabel" runat="server" Text='<%# Eval("prod_id") %>' />
                <br />
                prod_title:
                <asp:Label ID="prod_titleLabel" runat="server" Text='<%# Eval("prod_title") %>' />
                <br />
                prod_features:
                <asp:Label ID="prod_featuresLabel" runat="server" Text='<%# Eval("prod_features") %>' />
                <br />
                O_price:
                <asp:Label ID="O_priceLabel" runat="server" Text='<%# Eval("O_price") %>' />
                <br />
                <br />
                discount_percent:
                <asp:Label ID="discount_percentLabel" runat="server" Text='<%# Eval("discount_percent") %>' />
                <br />
                prod_description:
                <asp:Label ID="prod_descriptionLabel" runat="server" Text='<%# Eval("prod_description") %>' />
                <br />
                <br />
            </span>
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
