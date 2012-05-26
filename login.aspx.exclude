<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="loginhead" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
    <%--<link rel="stylesheet" type="text/css" href="CSS/reset.css" />--%>
</asp:Content>
<asp:Content ID="login1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Login ID="Login2" runat="server">
        <LayoutTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse: collapse;">
                <tr>
                    <td>
                        <table cellpadding="0">
                            <tr>
                                <td align="center" colspan="2">
                                    Log In
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                        ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login2">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                        ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login2">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color: Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login2" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:Login>
</asp:Content>
