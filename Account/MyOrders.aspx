<%@ Page Title="" Language="C#" MasterPageFile="~/childShopping.master" AutoEventWireup="true" %>

<asp:Content ID="content1" ContentPlaceHolderID="ChildMaster" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
            CellPadding="4" DataKeyNames="order_no" DataSourceID="SqlDataSource1" EnableModelValidation="True"
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="order_no" HeaderText="order_no" InsertVisible="False"
                    ReadOnly="True" SortExpression="order_no" />
                <asp:BoundField DataField="products_title" HeaderText="products_title" 
                    SortExpression="products_title" />
                <asp:BoundField DataField="total_amount" HeaderText="total_amount" 
                    SortExpression="total_amount" />
                <asp:BoundField DataField="o_status" HeaderText="o_status" 
                    SortExpression="o_status" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" 
                    SortExpression="UserId" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
        <br />
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
        
        SelectCommand="SELECT [order_no], [products_title], [total_amount], [o_status], [UserId] FROM [Order_details] WHERE ([UserId] = @UserId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="UserId" QueryStringField="@UserId" 
                Type="Object" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
