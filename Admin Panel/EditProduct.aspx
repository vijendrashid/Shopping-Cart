<%@ Page Title=""
  Language="C#"
  MasterPageFile="~/Admin Panel/Admin.master"
  AutoEventWireup="true"
  CodeFile="EditProduct.aspx.cs"
  Inherits="Admin_Panel_EditProduct" %>

<%@ Register Assembly="CKEditor.NET"
  Namespace="CKEditor.NET"
  TagPrefix="CKEditor" %>
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
  <asp:SqlDataSource
    ID="SqlDataSource1"
    runat="server"
    EnableCaching="True"
    ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
    SelectCommand="SELECT [prod_id], [prod_title], [stock], [O_price], [m_price], [days_delivered], [prod_description], [prod_features], [meta_keywords_optional], [meta_description] FROM [Product_Details]"
    UpdateCommand="UPDATE Product_Details SET prod_title=@prod_title, stock=@stock, O_price=@O_price, m_price=@m_price, days_delivered=@days_delivered, prod_features=@prod_features, meta_keywords_optional=@meta_keywords_optional, meta_description=@meta_description WHERE prod_id=@prod_id "
    FilterExpression="prod_title LIKE '%{0}%'">
    <FilterParameters>
      <asp:ControlParameter
        ControlID="txtTitleSearch"
        Name="prod_title"
        PropertyName="Text"
        Type="String" />
    </FilterParameters>
  </asp:SqlDataSource>
  <asp:UpdatePanel
    ID="UpdatePanel1"
    runat="server">
    <ContentTemplate>
      <asp:TextBox ID="txtTitleSearch"
        runat="server"
        AutoPostBack="True"></asp:TextBox>
      <br />
      <br />
      <asp:FormView ID="FormView1"
        runat="server"
        AllowPaging="True"
        CellPadding="4"
        DataSourceID="SqlDataSource1"
        EnableModelValidation="True"
        ForeColor="#333333"
        DefaultMode="Edit"
        Width="750px"
        DataKeyNames="prod_id">
        <EditItemTemplate>
          <asp:LinkButton
            ID="UpdateButton"
            runat="server"
            CausesValidation="True"
            CommandName="Update"
            Text="Update" />
          &nbsp;<asp:LinkButton
            ID="UpdateCancelButton"
            runat="server"
            CausesValidation="False"
            CommandName="Cancel"
            Text="Cancel" />
          <br />
          <br />
          prod_title:<asp:TextBox
            ID="prod_titleTextBox"
            runat="server"
            Text='<%# Bind("prod_title") %>'></asp:TextBox>
          <br />
          <br />
          stock:
          <asp:TextBox ID="stockTextBox"
            runat="server"
            Text='<%# Bind("stock") %>'></asp:TextBox>
          <br />
          <br />
          O_price:
          <asp:TextBox ID="O_priceTextBox"
            runat="server"
            Text='<%# Bind("O_price") %>' />
          <br />
          <br />
          m_price:
          <asp:TextBox ID="m_priceTextBox"
            runat="server"
            Text='<%# Bind("m_price") %>' />
          <br />
          <br />
          days_delivered:
          <asp:TextBox ID="days_deliveredTextBox"
            runat="server"
            Text='<%# Bind("days_delivered") %>' />
          <br />
          <br />
          prod_description:<br />
          <CKEditor:CKEditorControl
            ID="prod_descriptionCKEditorControl"
            runat="server"
            Text='<%# Bind("prod_description") %>'></CKEditor:CKEditorControl>
          <br />
          <br />
          prod_features:<br />
          <CKEditor:CKEditorControl
            ID="prod_featuresCKEditorControl"
            runat="server"
            Text='<%# Bind("prod_features") %>'></CKEditor:CKEditorControl>
          <br />
          <br />
          meta_keywords_optional:<br />
          <asp:TextBox ID="meta_keywords_optionalTextBox"
            runat="server"
            Text='<%# Bind("meta_keywords_optional") %>'
            Columns="80" Rows="5"
            TextMode="MultiLine" />
          <br />
          <br />
          meta_description:<br />
          <asp:TextBox ID="meta_descriptionTextBox"
            runat="server"
            Text='<%# Bind("meta_description") %>'
            Columns="80" Rows="5"
            TextMode="MultiLine" />
          <br />
          <br />
          <br />
        </EditItemTemplate>
        <EmptyDataTemplate>
          <asp:Label ID="Label1"
            runat="server"
            Text="No Product found with this Title!!"
            ForeColor="Gray"></asp:Label>
        </EmptyDataTemplate>
        <EditRowStyle BackColor="#EFF0F0" />
        <FooterStyle BackColor="#5D7B9D"
          ForeColor="White"
          Font-Bold="True" />
        <HeaderStyle BackColor="#5D7B9D"
          Font-Bold="True"
          ForeColor="White" />
        <PagerStyle BackColor="#284775"
          ForeColor="White"
          HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3"
          ForeColor="#333333" />
      </asp:FormView>
    </ContentTemplate>
  </asp:UpdatePanel>
  <br />
</asp:Content>
