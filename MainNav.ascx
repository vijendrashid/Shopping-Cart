<%@ Control Language="C#"
  AutoEventWireup="true"
  CodeFile="MainNav.ascx.cs"
  Inherits="MainNav" %>
<div style="display: block;">
  <div style="display: inline;
    width: 184px;">
    <asp:ImageButton
      ID="ImageButton1"
      runat="server"
      ImageUrl="~/images/Mobile Shop 1234.png"
      Height="35px"
      Width="184px"
      PostBackUrl="~/Default.aspx"
      CausesValidation="False" /></div>
  <div style="display: inline;">
    <asp:LoginName ID="LoginName1"
      runat="server"
      ForeColor="Black" />
  </div>
  <div style="display: inline;
    margin: 0 25px 0 20px;">
    <% if (!HttpContext.Current.User.IsInRole("users") & Request.IsAuthenticated)
       {%>
    <asp:HyperLink ID="hlAdminPanel"
      runat="server"
      Font-Size="Small"
      Font-Underline="False"
      ForeColor="Black"
      NavigateUrl="~/Admin Panel/AddProduct.aspx">Admin Panel</asp:HyperLink>
    &nbsp;|&nbsp;<%} %>
    <asp:HyperLink ID="hpcontactus"
      runat="server"
      Font-Size="Small"
      ForeColor="Black"
      EnableViewState="False"
      NavigateUrl="~/ContactUs.aspx"
      Font-Underline="False">ContactUs</asp:HyperLink>
    <strong>&nbsp; |&nbsp;
    </strong>
    <asp:HyperLink ID="hphome"
      runat="server"
      Font-Size="Small"
      ForeColor="Black"
      NavigateUrl="~/Default.aspx"
      EnableViewState="False"
      Font-Underline="False">Home</asp:HyperLink>
    <strong>&nbsp; |&nbsp;
    </strong>
    <% if (Request.IsAuthenticated)
       {%>
    <asp:HyperLink ID="hpaccount"
      runat="server"
      Font-Size="Small"
      ForeColor="Black"
      NavigateUrl="~/Account/PersonalInformation.aspx"
      Font-Underline="False">Account</asp:HyperLink>
    <strong>&nbsp; |&nbsp;
    </strong>
    <%} %>
    <asp:LoginStatus
      ID="LoginStatus1"
      runat="server"
      Font-Underline="False"
      ForeColor="Black" />
    <%if (!Request.IsAuthenticated)
      { %>
    <strong>&nbsp; |&nbsp;&nbsp;
    </strong>
    <asp:HyperLink ID="hpSignup"
      runat="server"
      NavigateUrl="~/Register.aspx"
      Font-Underline="False"
      ForeColor="Black">Signup</asp:HyperLink>
    <% } %>&nbsp;</div>
  <asp:Button ID="btncart"
    runat="server"
    Text="Cart(No Item)"
    CssClass="Button"
    CausesValidation="False"
    OnPreRender="btncart_PreRender" />
</div>
