<%@ Page Title=""
  Language="C#"
  MasterPageFile="~/Shoping.master"
  AutoEventWireup="true" %>

<%@ OutputCache
  CacheProfile="Cache1Hour" %>
<asp:Content ID="Content1"
  ContentPlaceHolderID="ShoppingMasterHead"
  runat="Server">
</asp:Content>
<asp:Content ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  runat="Server">
  <p style="font-size: x-large;">
    Thanks for Visiting....</p>
  <p style="font-size: medium;
    line-height: 25px">
    <b>Project Lead by:</b><br />
    Vijendra Ram Shid
    <br />
    Contact No. <a href="tel:%+91-9664584136">
      +91-9664584136</a><br />
    E-mail ID : <a href="mailto:vijendra.shid@gmail.com">
      vijendra.shid@gmail.com</a>
  </p>
  <p>
  </p>
</asp:Content>