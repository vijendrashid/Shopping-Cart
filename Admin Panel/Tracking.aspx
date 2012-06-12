<%@ Page Title=""
  Language="C#"
  MasterPageFile="~/Admin Panel/Admin.master"
  AutoEventWireup="true"
  CodeFile="Tracking.aspx.cs"
  Inherits="Admin_Panel_Tracking" %>

<%@ Register Assembly="AjaxControlToolkit"
  Namespace="AjaxControlToolkit"
  TagPrefix="asp" %>
<asp:Content ID="Content1"
  ContentPlaceHolderID="AdminPanelhead"
  runat="Server">
</asp:Content>
<asp:Content ID="Content2"
  ContentPlaceHolderID="AdminPanelMaster"
  runat="Server">
  <div style="margin-left: 25px;">
    <br />
    <asp:TextBox ID="txtEnterOrderID"
      runat="server"
      AutoCompleteType="Search"
      AutoPostBack="True"></asp:TextBox>
    <asp:TextBoxWatermarkExtender
      ID="TextBoxWatermarkExtender1"
      runat="server"
      TargetControlID="txtEnterOrderID"
      WatermarkText="Enter Order ID">
    </asp:TextBoxWatermarkExtender>
    <br />
    <br />
  </div>
  <asp:SqlDataSource
    ID="SqlDataSource1"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
    SelectCommand="SELECT [order_id], [o_status], [location], [phone_number], [shipping_address], [is_sold], [date_modified] FROM [Order_details] WHERE order_id LIKE @order_id+'%'"
    UpdateCommand="UPDATE Order_details SET o_status=@o_status, location=@location, is_sold=@is_sold WHERE order_id=@order_id"
    EnableCaching="True">
    <SelectParameters>
      <asp:ControlParameter
        Name="order_id"
        ControlID="txtEnterOrderID"
        PropertyName="Text" />
    </SelectParameters>
  </asp:SqlDataSource>
  <asp:GridView ID="GridView1"
    runat="server"
    AutoGenerateColumns="False"
    DataSourceID="SqlDataSource1"
    EnableModelValidation="True"
    AutoGenerateEditButton="True"
    DataKeyNames="order_id"
    BackColor="White"
    BorderColor="#CCCCCC"
    BorderStyle="None"
    BorderWidth="1px"
    CellPadding="4"
    ForeColor="Black"
    GridLines="Horizontal">
    <Columns>
      <asp:BoundField
        DataField="order_id"
        HeaderText="order_id"
        InsertVisible="False"
        ReadOnly="True"
        SortExpression="order_id" />
      <asp:BoundField
        DataField="o_status"
        HeaderText="o_status"
        SortExpression="o_status" />
      <asp:BoundField
        DataField="location"
        HeaderText="location"
        SortExpression="location" />
      <asp:BoundField
        DataField="phone_number"
        HeaderText="phone_number"
        SortExpression="phone_number"
        ReadOnly="True" />
      <asp:TemplateField
        HeaderText="shipping_address"
        SortExpression="shipping_address">
        <ItemTemplate>
          <asp:Label ID="Label1"
            runat="server"
            Text='<%# Bind("shipping_address") %>'></asp:Label>
        </ItemTemplate>
      </asp:TemplateField>
      <asp:BoundField
        DataField="is_sold"
        HeaderText="is_sold"
        SortExpression="is_sold" />
      <asp:BoundField
        DataField="date_modified"
        HeaderText="date_modified"
        SortExpression="date_modified"
        ReadOnly="True" />
    </Columns>
    <FooterStyle BackColor="#CCCC99"
      ForeColor="Black" />
    <HeaderStyle BackColor="#333333"
      Font-Bold="True"
      ForeColor="White" />
    <PagerStyle BackColor="White"
      ForeColor="Black"
      HorizontalAlign="Right" />
    <SelectedRowStyle
      BackColor="#CC3333"
      Font-Bold="True"
      ForeColor="White" />
  </asp:GridView>
</asp:Content>