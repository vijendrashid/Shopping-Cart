<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true"
    CodeFile="home2.aspx.cs" Inherits="Admin_Panel_home2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminPanelhead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminPanelMaster" runat="Server">
    <asp:GridView ID="GridView1" runat="server" EnableModelValidation="True"
        AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True"
                SortExpression="id" />
            <asp:ImageField DataImageUrlField="imagePath" ControlStyle-Width="200px" ControlStyle-Height="200" />
        </Columns>
    </asp:GridView>

</asp:Content>
