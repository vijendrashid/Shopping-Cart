<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="Aspstar.aspx.cs" Inherits="Aspstar" EnableSessionState="True" %>

<%@ Register Assembly="StarRating" Namespace="StarRatingControl" TagPrefix="star" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
    <script type="text/javascript">
     function Teste(value) {
         //alert(value);
         var str = value.toString();
         document.getElementById("<%=hidden1.ClientID%>").value = str
     }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div runat="server">
        <input id="hidden1" type="hidden" runat="server" />
        <star:StarRating ID="star" runat="server" StarType="Crystal" ShowCaption="true" JSFunction="Teste">
            <Items>
                <star:StarItem Value="1" Title="Regular" />
                <star:StarItem Value="2" Title="Médio" />
                <star:StarItem Value="3" Title="Bom" />
                <star:StarItem Value="4" Title="Muito Bom" />
                <star:StarItem Value="5" Title="Ótimo" />
            </Items>
        </star:StarRating>
        <br />
    </div>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClientClick="Teste();" 
        onclick="Button1_Click" />
</asp:Content>
