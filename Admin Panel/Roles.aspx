<%@ Page Title=""
  Language="C#"
  MasterPageFile="~/Admin Panel/Admin.master"
  AutoEventWireup="true"
  CodeFile="Roles.aspx.cs"
  Inherits="Admin_Panel_Roles" %>

<asp:Content ID="Content1"
  ContentPlaceHolderID="AdminPanelhead"
  runat="Server">
</asp:Content>
<asp:Content ID="Content2"
  ContentPlaceHolderID="AdminPanelMaster"
  runat="Server">
  <asp:SqlDataSource
    ID="SqlDataSource1"
    runat="server">
  </asp:SqlDataSource>
  <asp:GridView ID="gvRoles"
    runat="server"
    DataSourceID="SqlDataSource1"
    EnableModelValidation="True"
    OnDataBinding="gvRoles_DataBinding">
  </asp:GridView>
</asp:Content>
