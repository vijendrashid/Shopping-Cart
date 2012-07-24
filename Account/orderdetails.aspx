<%@ Page Title=""
  Language="C#"
  MasterPageFile="~/childShopping.master"
  AutoEventWireup="true" %>

<%@ OutputCache
  CacheProfile="Cache1Hour" %>
<asp:Content ID="Content1"
  ContentPlaceHolderID="ChildMaster"
  runat="Server">
  <p>
    <asp:GridView ID="GridView1"
      runat="server"
      AutoGenerateColumns="False"
      DataSourceID="SqlDataSource1"
      EnableModelValidation="True"
      CellPadding="4"
      ForeColor="#333333"
      GridLines="None">
      <AlternatingRowStyle
        BackColor="White" />
      <Columns>
        <asp:BoundField
          DataField="order_id"
          HeaderText="order_id"
          InsertVisible="False"
          ReadOnly="True"
          SortExpression="order_id" />
        <asp:BoundField
          DataField="products_title"
          HeaderText="products_title"
          SortExpression="products_title" />
        <asp:BoundField
          DataField="O_price"
          HeaderText="O_price"
          SortExpression="O_price" />
        <asp:BoundField
          DataField="o_status"
          HeaderText="o_status"
          SortExpression="o_status" />
      </Columns>
      <EditRowStyle BackColor="#2461BF" />
      <FooterStyle BackColor="#507CD1"
        Font-Bold="True"
        ForeColor="White" />
      <HeaderStyle BackColor="#507CD1"
        Font-Bold="True"
        ForeColor="White" />
      <PagerStyle BackColor="#2461BF"
        ForeColor="White"
        HorizontalAlign="Center" />
      <RowStyle BackColor="#EFF3FB" />
      <SelectedRowStyle
        BackColor="#D1DDF1"
        Font-Bold="True"
        ForeColor="#333333" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource
      ID="SqlDataSource1"
      runat="server"
      ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
      SelectCommand="SELECT [order_id], [products_title], [O_price], [o_status] FROM [Order_details] WHERE ([order_id] = @order_id)">
      <SelectParameters>
        <asp:QueryStringParameter
          Name="order_id"
          QueryStringField="order_id" />
      </SelectParameters>
    </asp:SqlDataSource>
  </p>
</asp:Content>