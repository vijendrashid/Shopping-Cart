<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form5" action="/" method="post">
    <fieldset>
        <legend>Contact form</legend>
        <p class="first">
            <label for="name">
                Name</label>
            <input type="text" name="name" id="name" size="30" />
        </p>
        <p>
            <label for="email">
                Email</label>
            <input type="text" name="email" id="email" size="30" />
        </p>
        <p>
            <label for="message">
                Message</label>
            <textarea name="message" id="message" cols="30" rows="10"></textarea>
        </p>
        <p class="submit">
            <button type="submit">
                Send</button></p>
    </fieldset>
    </form>
</asp:Content>
