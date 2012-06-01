<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="login.aspx.cs" Inherits="login" %>

<%--<%@ OutputCache Duration="120" VaryByParam="none" %>--%>
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
        <asp:Button ID="btnRegister" runat="server" Text="Not Registered yet?" PostBackUrl="~/Register.aspx"
            CausesValidation="False" />
        <br />
        <aside style="display:block;"><asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#EFF3FB" 
            BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
            Font-Names="Verdana" Font-Size="0.8em">
            <SubmitButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <SuccessTextStyle Font-Bold="True" ForeColor="#507CD1" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
        </asp:PasswordRecovery></aside>
    </div>
</asp:Content>
