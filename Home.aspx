<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="HomeHead" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
</asp:Content>
<asp:Content ID="HomeBody" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    
    <asp:SqlDataSource ID="HomeSql" runat="server" ConnectionString="<%$ ConnectionStrings:h2hConnectionString %>"
        SelectCommand="SELECT [prod_img1], [prod_img10], [prod_img11], [prod_img9], [prod_img2], [prod_img3], [prod_img4], [prod_img5], [prod_img6], [prod_img7], [prod_img8] FROM [Product_Details] where prod_img1 = @prod_img1">
    </asp:SqlDataSource>
</asp:Content>
