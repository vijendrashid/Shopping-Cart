<%@ Page Title="" Language="C#" MasterPageFile="~/childShopping.master" AutoEventWireup="true" %>

<asp:Content ID="content1" ContentPlaceHolderID="ChildMaster" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
            CellPadding="4" DataKeyNames="order_no" DataSourceID="SqlDataSource1" EnableModelValidation="True"
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="order_no" HeaderText="Order No." InsertVisible="False"
                    ReadOnly="True" SortExpression="order_no" />
                <asp:BoundField DataField="products_title" HeaderText="Products" SortExpression="products_title" />
                <asp:BoundField DataField="total_amount" HeaderText="Amount" SortExpression="total_amount" />
                <asp:BoundField DataField="o_status" HeaderText="Status" SortExpression="o_status" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
            SelectCommand="SELECT [order_no], [products_title], [total_amount], [o_status] FROM [Order_details]>
        </asp:SqlDataSource>
    </div>
</asp:Content>
