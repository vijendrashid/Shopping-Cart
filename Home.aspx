<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<%--<%@ OutputCache Duration="120" VaryByParam="none" %>--%>
<asp:Content ID="HomeHead" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
</asp:Content>
<asp:Content ID="HomeBody" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:ListView ID="listviewHome" runat="server" DataKeyNames="prod_id" DataSourceID="homesql"
        EnableModelValidation="True" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td runat="server" class="itemTemplate">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("prod_img1") %>'
                    PostBackUrl='<%# DataBinder.Eval(Container.DataItem,"prod_id","~/product-details.aspx?prod_id={0}" ) %>'
                    Height="200" Width="100" />
                <br />
                <asp:Label ID="prod_idLabel" runat="server" Text='<%# Eval("prod_id") %>' Visible="False" />
                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("prod_title") %>' NavigateUrl='<%# DataBinder.Eval(Container.DataItem,"prod_id","~/product-details.aspx?prod_id={0}" ) %>'
                    Target="_self"></asp:HyperLink>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("prod_features") %>' />
                Price: Rs.
                <asp:Label ID="O_priceLabel" runat="server" Text='<%# Eval("O_price", "{0:n2}") %>' />
                <br />
                <br />
            </td>
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>
                        No data was returned.
                    </td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <ItemTemplate>
            <td id="Td1" runat="server" class="itemTemplate">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("prod_img1") %>'
                    PostBackUrl='<%# DataBinder.Eval(Container.DataItem,"prod_id","~/product-details.aspx?prod_id={0}" ) %>'
                    Height="200" Width="100" />
                <br />
                <asp:Label ID="prod_idLabel" runat="server" Text='<%# Eval("prod_id") %>' Visible="False" />
                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("prod_title") %>' 
                    NavigateUrl='<%# DataBinder.Eval(Container.DataItem,"prod_id","~/product-details.aspx?prod_id={0}" ) %>'
                    Target="_self"></asp:HyperLink>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("prod_features") %>' />
                Price: Rs.
                <asp:Label ID="O_priceLabel" runat="server" Text='<%# Eval("O_price", "{0:n2}") %>' />
                <br />
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" class="homeItems">
                            <tr id="groupPlaceholder" runat="server" class="homeItems">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"/>
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="homesql" runat="server" ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
        SelectCommand="SELECT TOP 50 [prod_id], [category], [prod_title], [prod_features], [O_price], [prod_img1] FROM [Product_Details] ORDER BY NEWID()">
    </asp:SqlDataSource>
</asp:Content>
