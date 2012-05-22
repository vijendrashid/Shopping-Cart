<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="product-details.aspx.cs" Inherits="product_details" %>

<asp:Content ID="head" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
</asp:Content>
<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:SqlDataSource ID="homeSql" runat="server" ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
        SelectCommand="SELECT [prod_id], [prod_title], [prod_features], [O_price], [prod_img1], [discount_percent], [prod_description] FROM [Product_Details]">
        <SelectParameters>
            <asp:QueryStringParameter
                Name="prod_id"
                QueryStringField="prod_id" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True"
        AutoGenerateRows="False" DataKeyNames="prod_id" DataSourceID="homeSql" EnableModelValidation="True">
        <Fields>
            <asp:BoundField DataField="prod_id" HeaderText="prod_id" InsertVisible="False" ReadOnly="True"
                SortExpression="prod_id" />
            <asp:BoundField DataField="prod_title" HeaderText="prod_title" SortExpression="prod_title" />
            <asp:BoundField DataField="prod_features" HeaderText="prod_features" SortExpression="prod_features" />
            <asp:BoundField DataField="O_price" HeaderText="O_price" SortExpression="O_price" />
            <asp:BoundField DataField="prod_img1" HeaderText="prod_img1" SortExpression="prod_img1" />
            <asp:BoundField DataField="discount_percent" HeaderText="discount_percent" ReadOnly="True"
                SortExpression="discount_percent" />
            <asp:BoundField DataField="prod_description" HeaderText="prod_description" SortExpression="prod_description" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
