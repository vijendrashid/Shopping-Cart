<%@ Page Title=""
  Language="C#"
  MasterPageFile="~/childShopping.master"
  AutoEventWireup="true" %>

<%@ OutputCache
  CacheProfile="Cache1Hour" %>
<asp:Content ID="content1"
  ContentPlaceHolderID="ChildMaster"
  runat="server">
  <div>
    <asp:GridView ID="GridView1"
      runat="server"
      AllowSorting="True"
      AutoGenerateColumns="False"
      CellPadding="4"
      DataSourceID="SqlDataSource1"
      EnableModelValidation="True"
      ForeColor="#333333"
      GridLines="None"
      DataKeyNames="order_id,email_id">
      <AlternatingRowStyle
        BackColor="White" />
      <Columns>
        <asp:BoundField
          DataField="order_id"
          HeaderText="order_id"
          SortExpression="order_id"
          InsertVisible="False"
          ReadOnly="True" />
        <asp:BoundField
          DataField="email_id"
          HeaderText="email_id"
          SortExpression="email_id"
          ReadOnly="True" />
        <asp:BoundField
          DataField="products_title"
          HeaderText="products_title"
          SortExpression="products_title" />
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
  </div>
  <asp:SqlDataSource
    ID="SqlDataSource1"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
    SelectCommand="SELECT [order_id], [email_id], [products_title], [o_status] FROM [Order_details] WHERE ([email_id] = @email_id)">
    <SelectParameters>
      <asp:ProfileParameter
        Name="email_id"
        PropertyName="PersonalInformation.EmailID" />
    </SelectParameters>
  </asp:SqlDataSource>
</asp:Content>