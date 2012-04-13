<%@ Page Title="" Language="C#" MasterPageFile="~/childShopping.master" AutoEventWireup="true" %>

<asp:Content ID="content1" ContentPlaceHolderID="ChildMaster" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="order_id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="order_id" HeaderText="order_id" ReadOnly="True" 
            SortExpression="order_id" />
        <asp:BoundField DataField="order_date" HeaderText="order_date" 
            SortExpression="order_date" />
        <asp:BoundField DataField="total_amount" HeaderText="total_amount" 
            SortExpression="total_amount" />
        <asp:BoundField DataField="quantity" HeaderText="quantity" 
            SortExpression="quantity" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server"
    SelectCommand="SELECT [order_id], [order_date], [total_amount], [quantity] FROM [Order_details]">
</asp:SqlDataSource>
</asp:Content>
