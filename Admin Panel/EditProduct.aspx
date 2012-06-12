<%@ Page Title=""
  Language="C#"
  MasterPageFile="~/Admin Panel/Admin.master"
  AutoEventWireup="true"
  CodeFile="EditProduct.aspx.cs"
  Inherits="Admin_Panel_EditProduct" %>

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
  <br />
  <asp:TextBox ID="txtContactsSearch"
    AutoComplete="off"
    runat="server"></asp:TextBox>
  <asp:AutoCompleteExtender
    ServiceMethod="SearchTitles"
    MinimumPrefixLength="1"
    CompletionInterval="100"
    CompletionSetCount="5"
    TargetControlID="txtContactsSearch"
    ID="AutoCompleteExtender1"
    runat="server"
    FirstRowSelected="true"
    Enabled="True"
    ShowOnlyCurrentWordInCompletionListItem="True">
  </asp:AutoCompleteExtender>
  <br />
  <br />
  <asp:SqlDataSource
    ID="SqlDataSource1"
    runat="server"
    EnableCaching="True">
  </asp:SqlDataSource>
  <asp:FormView ID="FormView1"
    runat="server">
  </asp:FormView>
  <br />
</asp:Content>