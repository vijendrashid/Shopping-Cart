<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server">
        <%--<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <iframe runat="server" id="productVideo" width="420" height="315" src="" frameborder="0"
            allowfullscreen="0"></iframe>--%>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" EnableModelValidation="True">
            <InsertItemTemplate>
                <asp:FileUpload
                 ID="FileUpload1" 
                 runat="server" 
                 ToolTip="insert an Image"
                 FileBytes='<%# Bind("Image") %>' />
                <br />
                <br />
                <asp:TextBox 
                ID="TextBox1" 
                runat="server" 
                ToolTip="Enter Image ID"
                Text='<%# Bind("id") %>'
                ></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit" />
            </InsertItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:formviewConnectionString %>"
            SelectCommand="SELECT * FROM [imagetest]"></asp:SqlDataSource>
    </asp:Panel>
</asp:Content>
