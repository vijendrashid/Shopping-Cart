<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="loginhead" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
    <%--<link rel="stylesheet" type="text/css" href="CSS/reset.css" />--%>
</asp:Content>
<asp:Content ID="login1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <asp:Label ID="lblError" EnableViewState="false" ForeColor="Red" runat="server" />
        <br />
        <br />
        <asp:Label ID="lblUserName" Text="User Name:" AssociatedControlID="txtUserName" runat="server" />
        <br />
        <asp:TextBox ID="txtUserName" runat="server" />
        <br />
        <br />
        <asp:Label ID="lblPassword" Text="Password:" AssociatedControlID="txtPassword" runat="server" />
        <br />
        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" />
        <br />
        <br />
        <asp:CheckBox ID="chkRememberMe" Text="Remember Me" runat="server" />
        <br />
        <br />
        <asp:Button ID="btnLogin" Text="Login" OnClick="btnLogin_Click" runat="server" />
        <asp:Button ID="btnRegister" runat="server" Text="Not Registered yet?" 
            PostBackUrl="~/Register.aspx" CausesValidation="False" />
    </div>
</asp:Content>
