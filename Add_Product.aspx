<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Add_Product.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Style="left: 0px; position: relative" Text="Product Id :"></asp:Label>&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="position: relative"></asp:TextBox><br />
        <br />
        <asp:Label ID="Label8" runat="server" Style="position: relative" Text="Product Name :"></asp:Label>&nbsp;
        <asp:TextBox ID="TextBox8" runat="server" Style="position: relative"></asp:TextBox><br />
        <br />
        <asp:Label ID="Label7" runat="server" Style="position: relative" Text="Category :"></asp:Label>&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Style="position: relative">
            <asp:ListItem>Mobiles &amp; Accesories</asp:ListItem>
            <asp:ListItem>Home &amp; Appliances</asp:ListItem>
            <asp:ListItem>Flowers</asp:ListItem>
        </asp:DropDownList><br />
        <br />
        <asp:Label ID="Label9" runat="server" Style="position: relative" Text="Sub Category :"></asp:Label>&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" Style="position: relative">
        </asp:DropDownList><br />
        <br />
        <asp:Label ID="Label10" runat="server" Style="position: relative" Text="Brand :"></asp:Label>&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" Style="position: relative"></asp:TextBox><br />
        <br />
        <asp:Label ID="Label11" runat="server" Style="position: relative" Text="Colour :"></asp:Label>&nbsp;
        <asp:TextBox ID="TextBox9" runat="server" Style="position: relative"></asp:TextBox><br />
        <br />
        <asp:Label ID="Label2" runat="server" Style="position: relative" Text="Features :"></asp:Label>&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="position: relative" TextMode="MultiLine"></asp:TextBox><br />
        <br />
        <asp:Label ID="Label5" runat="server" Style="position: relative" Text="Description :"></asp:Label>&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Style="position: relative" TextMode="MultiLine"></asp:TextBox><br />
        <br />
        <asp:Label ID="Label3" runat="server" Style="position: relative" Text="Price :"></asp:Label>&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Style="position: relative"></asp:TextBox><br />
        <br />
        <asp:Label ID="Label12" runat="server" Style="position: relative" Text="Market Price :"></asp:Label>&nbsp;
        <asp:TextBox ID="TextBox10" runat="server" Style="position: relative"></asp:TextBox><br />
        <br />
        <asp:Label ID="Label4" runat="server" Style="position: relative" Text="Quantity :"></asp:Label>&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Style="position: relative"></asp:TextBox><br />
        <br />
        <asp:Label ID="Label6" runat="server" Style="position: relative" Text="Delivered Days :"></asp:Label>&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" Style="position: relative"></asp:TextBox><br />
        <br />
        <asp:Image ID="Image1" runat="server" Style="left: 0px; position: relative" Width="30px" />&nbsp;<asp:FileUpload
            ID="FileUpload1" runat="server" Style="position: relative" /><br />
        <asp:Image ID="Image2" runat="server" Style="position: relative" Width="30px" />
        <asp:FileUpload ID="FileUpload2" runat="server" Style="position: relative" /><br />
        <asp:Image ID="Image3" runat="server" Style="position: relative" Width="30px" />
        <asp:FileUpload ID="FileUpload3" runat="server" Style="position: relative" /><br />
        <asp:Image ID="Image4" runat="server" Style="position: relative" Width="30px" />
        <asp:FileUpload ID="FileUpload4" runat="server" Style="position: relative" /><br />
        <asp:Image ID="Image5" runat="server" Style="position: relative" Width="30px" />
        <asp:FileUpload ID="FileUpload5" runat="server" Style="position: relative" /><br />
        <br />
    </div>
    </form>
</body>
</html>
