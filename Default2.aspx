<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
    <link href="CSS/starrating.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div >
                <asp:Rating ID="likeRating"  BackImageUrl="~/images/H2H.png"
                            runat="server" 
                            CurrentRating="3" 
                            MaxRating="5" 
                            StarCssClass="ratingStar" 
                            WaitingStarCssClass="savedRatingStar" 
                            FilledStarCssClass="filledRatingStar" 
                            EmptyStarCssClass="emptyRatingStar" 
                            OnChanged="likeRating_Changed" 
                            style="float: left;">
                </asp:Rating>
            </div>
            <div ><br />
                <br />
                <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" /><br />
                <br />
                <asp:Label ID="LabelResponse" runat="server" Text="[ No response provioded yet.]"></asp:Label>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
