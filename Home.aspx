<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.DynamicData" TagPrefix="cc1" %>
<asp:Content ID="HomeHead" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
</asp:Content>
<asp:Content ID="HomeBody" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:SqlDataSource ID="homeSql" runat="server" ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
        SelectCommand="SELECT [prod_id], [prod_title], [prod_features], [O_price], [prod_img1], [discount_percent], [prod_description] FROM [Product_Details]">
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataSourceID="homeSql"
        EnableModelValidation="True" AutoGenerateColumns="False" DataKeyNames="prod_id">
        <Columns>
            <asp:BoundField DataField="prod_id" HeaderText="prod_id" InsertVisible="False" ReadOnly="True"
                SortExpression="prod_id" />
            <asp:BoundField DataField="prod_title" HeaderText="prod_title" SortExpression="prod_title" />
            <asp:BoundField DataField="prod_features" HeaderText="prod_features" SortExpression="prod_features" />
            <asp:BoundField DataField="O_price" HeaderText="O_price" SortExpression="O_price" />
            <asp:BoundField DataField="prod_img1" HeaderText="prod_img1" SortExpression="prod_img1" />
            <asp:BoundField DataField="discount_percent" HeaderText="discount_percent" ReadOnly="True"
                SortExpression="discount_percent" />
            <asp:BoundField DataField="prod_description" HeaderText="prod_description" SortExpression="prod_description" />
            <asp:HyperLinkField />
            <asp:ImageField>
            </asp:ImageField>
        </Columns>
    </asp:GridView>
</asp:Content>
