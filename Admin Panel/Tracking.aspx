<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true"
    CodeFile="Tracking.aspx.cs" Inherits="Admin_Panel_Tracking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminPanelhead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminPanelMaster" runat="Server">
    <%--LISTING 11.20 ShowCommandField.aspx--%>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="trackingID,email_id" DataSourceID="SqlDataSource1"
        EnableModelValidation="True" ForeColor="#333333" GridLines="None" 
        AutoGenerateEditButton="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="trackingID" HeaderText="trackingID" InsertVisible="False"
                ReadOnly="True" SortExpression="trackingID" />
            <asp:BoundField DataField="email_id" HeaderText="email_id" 
                SortExpression="email_id" ReadOnly="True" />
            <asp:BoundField DataField="order_id" HeaderText="order_id" 
                SortExpression="order_id" />
            <asp:BoundField DataField="t_status" HeaderText="t_status" 
                SortExpression="t_status" />
            <asp:BoundField DataField="location" HeaderText="location" 
                SortExpression="location" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
        
        SelectCommand="SELECT [trackingID], [email_id], [order_id], [t_status], [location] FROM [track_orders] WHERE ([t_status] NOT LIKE '%' + @t_status + '%')">
        <SelectParameters>
            <asp:Parameter DefaultValue="Delivered" Name="t_status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
