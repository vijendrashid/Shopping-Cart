<%@ Page Title=""
  Language="C#"
  MasterPageFile="~/Shoping.master"
  AutoEventWireup="true"
  CodeFile="ContactUs.aspx.cs"
  Inherits="ContactUs" %>

<asp:Content ID="Content1"
  ContentPlaceHolderID="ShoppingMasterHead"
  runat="Server">
</asp:Content>
<asp:Content ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  runat="Server">
  <panel><h3>Send us an Email:</h3> Message to: 
  <asp:TextBox ID="txtTo" 
    runat="server" 
    Enabled="False" 
    ReadOnly="True" 
    Width="200px" /><br>
  Message from:
  <asp:TextBox ID="txtFrom"
    
    runat="server" 
    Width="200px" /><br>
  Subject:
  <asp:TextBox ID="txtSubject"
    
    runat="server" 
    Width="300px" /><br>
  Message Body:<br>
  <asp:TextBox ID="txtBody"
    runat="server"
    Height="171px"
    TextMode="MultiLine"
    Width="270px" /><br>
  <asp:Button ID="Btn_SendMail"
    runat="server"
    OnClick="Btn_SendMail_Click"
    Text="Send Email" />
  <br />
  <asp:Label
      
    ID="Label1" 
    runat="server" 
    Font-Bold="True" 
    ForeColor="#990033"></asp:Label>  
  </panel>
</asp:Content>
