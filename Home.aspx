<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.DynamicData" TagPrefix="cc1" %>
<asp:Content ID="HomeHead" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
</asp:Content>
<asp:Content ID="HomeBody" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:SqlDataSource ID="homeSql" runat="server" ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
        SelectCommand="SELECT [prod_id], [prod_title], [prod_feature], [O_price], [prod_img1], [discount_percent] FROM [Product_Details]">
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        DataSourceID="homeSql" EnableModelValidation="True" 
        AutoGenerateColumns="False" DataKeyNames="prod_id">
        <Columns>
       
            <asp:TemplateField HeaderText="prod_img1" SortExpression="prod_img1">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("prod_img1") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("prod_img1") %>' Width="300" Height="200" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="prod_title" HeaderText="prod_title" 
                SortExpression="prod_title" />
            <asp:TemplateField HeaderText="prod_feature" SortExpression="prod_feature">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("prod_feature") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("prod_feature") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="O_price" HeaderText="O_price" 
                SortExpression="O_price" />
            <asp:BoundField DataField="discount_percent" HeaderText="discount_percent" 
                ReadOnly="True" SortExpression="discount_percent" />
        </Columns>
       
    </asp:GridView>
</asp:Content>
