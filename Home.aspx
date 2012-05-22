<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.DynamicData" TagPrefix="cc1" %>
<%@ Register Assembly="System.Web.Entity, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
    Namespace="System.Web.UI.WebControls" TagPrefix="asp" %>
<asp:Content ID="HomeHead" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
</asp:Content>
<asp:Content ID="HomeBody" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="prod_id" DataSourceID="homesql"
        EnableModelValidation="True" GroupItemCount="2" >
        <AlternatingItemTemplate>
            <td runat="server" style="">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("prod_img1") %>'
                    Width="100px" Height="200" />
                <br />
                <asp:Label ID="prod_idLabel" runat="server" Text='<%# Eval("prod_id") %>' Visible="False" />
                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("prod_title") %>'></asp:HyperLink>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("prod_features", "{0}") %>' />
                Price: ₹
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
            <td runat="server" style="">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("prod_img1") %>'
                    Width="100px" Height="200" />
                <br />
                <asp:Label ID="prod_idLabel" runat="server" Text='<%# Eval("prod_id") %>' Visible="False" />
                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("prod_title") %>'></asp:HyperLink>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("prod_features", "{0}") %>' />
                Price: ₹
                <asp:Label ID="O_priceLabel" runat="server" Text='<%# Eval("O_price", "{0:n2}") %>' />
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="homesql" runat="server" ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
        SelectCommand="SELECT [prod_id], [prod_title], [prod_features], [O_price], [prod_img1] FROM [Product_Details]">
    </asp:SqlDataSource>
    <br />
</asp:Content>
