<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true"
    CodeFile="Tracking.aspx.cs" Inherits="Admin_Panel_Tracking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminPanelhead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminPanelMaster" runat="Server">
    <%--LISTING 11.20 ShowCommandField.aspx--%>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="trackingID" DataSourceID="SqlDataSource1"
        EnableModelValidation="True" ForeColor="#333333" GridLines="None" AutoGenerateEditButton="true">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="trackingID" HeaderText="trackingID" InsertVisible="False"
                ReadOnly="True" SortExpression="trackingID" />
            <asp:BoundField DataField="t_status" HeaderText="t_status" SortExpression="t_status" />
            <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
            <asp:BoundField DataField="emailId" HeaderText="emailId" SortExpression="emailId" />
            <asp:BoundField DataField="order_no" HeaderText="order_no" SortExpression="order_no" ReadOnly="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
        SelectCommand="SELECT [trackingID], [t_status], [location], [emailId], [order_no] FROM [track_orders] WHERE ([t_status] NOT LIKE '%' + @t_status + '%')"
        UpdateCommand="UPDATE [track_orders] SET [t_status] = @t_status, [location] = @location, [emailId] = @emailId WHERE [trackingID] = @trackingID">
        <SelectParameters>
            <asp:Parameter DefaultValue="Delivered" Name="t_status" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="t_status" Type="String" />
            <asp:Parameter Name="location" Type="String" />
            <asp:Parameter Name="emailId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
