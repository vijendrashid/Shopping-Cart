<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true" CodeFile="DropdownlistTEST.aspx.cs" Inherits="Admin_Panel_DropdownlistTEST" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminPanelhead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminPanelMaster" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" EnableModelValidation="True" DefaultMode="Insert" 
    DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            category:
            <asp:TextBox ID="categoryTextBox" runat="server" 
                Text='<%# Bind("category") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            category:
            <asp:TextBox ID="categoryTextBox" runat="server" 
                Text='<%# Bind("category") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            <asp:Button ID="Button1" runat="server" Text="Button" CommandName="Edit" />
        </InsertItemTemplate>
        <ItemTemplate>
            category:
            <asp:Label ID="categoryLabel" runat="server" Text='<%# Bind("category") %>' />
            <br />
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:h2hConnectionString %>" 
        SelectCommand="SELECT [category] FROM [list]"
        InsertCommand="INSERT list VALUES (@category)"></asp:SqlDataSource>
</asp:Content>

