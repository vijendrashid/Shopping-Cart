<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true" CodeFile="DropdownlistTEST.aspx.cs" Inherits="Admin_Panel_DropdownlistTEST" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminPanelhead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminPanelMaster" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" EnableModelValidation="True" DefaultMode="Insert" 
    DataSourceID="SqlDataSource1">
        <InsertItemTemplate>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                SelectedValue='<%# Bind("Category") %>'>
                <asp:ListItem>Mobile</asp:ListItem>
                <asp:ListItem>Tab</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CommandName="Insert" Text="Submit" />
        </InsertItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:h2hConnectionString %>" 
        SelectCommand="SELECT [category] FROM [list]"
        InsertCommand="INSERT list VALUES (@category)"></asp:SqlDataSource>
</asp:Content>

