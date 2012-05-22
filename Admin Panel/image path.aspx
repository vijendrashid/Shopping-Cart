<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true"
    CodeFile="image path.aspx.cs" Inherits="Admin_Panel_image_path" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminPanelhead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminPanelMaster" runat="Server">
    <div>
        FilePath:
        <asp:TextBox ID="FilepathTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblImageFile" Text="Image File:" AssociatedControlID="upImage" runat="server" />
        <asp:FileUpload ID="upImage" runat="server" />
        <br />
        <br />
        <asp:Button ID="btnAdd" Text="Add Image" OnClick="btnAdd_Click" runat="server" />
        <hr />
        <asp:DataList ID="dlstImages" RepeatColumns="3" runat="server">
            <ItemTemplate>
                <asp:Image ID="Image1" ImageUrl='<%# Eval("imagePath", "~/{0}") %>' Style="width: 200px"
                    runat="server" />
                <br />
                <%# Eval("Name") %>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
