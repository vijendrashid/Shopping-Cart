<%@ Page Title=""
  Language="C#"
  MasterPageFile="~/Shoping.master"
  AutoEventWireup="true"
  CodeFile="Register.aspx.cs"
  Inherits="Register" %>

<%@ OutputCache CacheProfile="Cache1Hour" %>
<asp:Content ID="Content1"
  ContentPlaceHolderID="ShoppingMasterHead"
  runat="Server">
</asp:Content>
<asp:Content ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  runat="Server">
  <div>
    <div>
      <asp:Label ID="lblMsgSingup"
        runat="server"
        Text="New User? Sign Up"></asp:Label>
      <br />
      <asp:Label ID="lblmsg"
        runat="server"
        Text=""></asp:Label></div>
    <div>
      <asp:Label ID="lblNewUserName"
        runat="server"
        Text="New Username : "
        AssociatedControlID="txtNewUserName"></asp:Label>
      <asp:TextBox ID="txtNewUserName"
        runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator
        ID="rfvNewUserName"
        runat="server"
        ControlToValidate="txtNewUserName"
        Display="Dynamic">(Required)</asp:RequiredFieldValidator>
    </div>
    <div>
      <asp:Label ID="lblNewPassword"
        runat="server"
        Text="New Password : "
        AssociatedControlID="txtEmailID"></asp:Label>
      <asp:TextBox ID="txtNewPassword"
        runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator
        ID="rfvNewPass"
        runat="server"
        ControlToValidate="txtNewPassword"
        Display="Dynamic">(Required)</asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator
        ID="RegularExpressionValidator1"
        runat="server"
        Visible="False">(Password is too weak.)</asp:RegularExpressionValidator>
    </div>
    <div>
      <asp:Label ID="lblNewPassAgain"
        runat="server"
        Text="New Password Again : "
        AssociatedControlID="txtNewPassAgain"></asp:Label>
      <asp:TextBox ID="txtNewPassAgain"
        runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator
        ID="rfvNewPassAgain"
        runat="server"
        ControlToValidate="txtNewPassAgain"
        Display="Dynamic">(Required)</asp:RequiredFieldValidator>
      <asp:CompareValidator
        ID="comvNewPassAgain"
        runat="server"
        ControlToCompare="txtNewPassword"
        ControlToValidate="txtNewPassAgain"
        Display="Dynamic">(Both password are not same.)</asp:CompareValidator>
    </div>
    <div>
      <asp:Label ID="lblEmailID"
        runat="server"
        Text="Email Address : "
        AssociatedControlID="txtEmailID"></asp:Label>
      <asp:TextBox ID="txtEmailID"
        runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator
        ID="rfvEmailID"
        runat="server"
        ControlToValidate="txtEmailID"
        Display="Dynamic">(Required)</asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator
        ID="revEmailID"
        runat="server"
        ControlToValidate="txtEmailID"
        Display="Dynamic"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(Invalid EmailID)</asp:RegularExpressionValidator>
    </div>
    <div>
    </div>
    <div>
      <asp:Button ID="btnRegister"
        runat="server"
        Text="Register"
        OnClick="btnRegister_Click" />
      <asp:Button ID="btnLogin"
        runat="server"
        Text="Already an User?"
        PostBackUrl="~/login.aspx"
        CausesValidation="False" /></div>
  </div>
</asp:Content>
