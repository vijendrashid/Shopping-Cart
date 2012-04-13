<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lbl_proidid" runat="server" 
            Style="left: 0px; position: relative" Text="Product Id :"></asp:Label>&nbsp;
        <asp:TextBox ID="txt_prodid" runat="server" 
            Style="position: relative; top: 1px; left: -2px;"></asp:TextBox><br />
        <br />
        <asp:Label ID="lbl_proname" runat="server" Style="position: relative" 
            Text="Product Name :"></asp:Label>&nbsp;
        <asp:TextBox ID="txt_proname" runat="server" Style="position: relative"></asp:TextBox><br />
        <br />
        <asp:Label ID="lbl_cat" runat="server" Style="position: relative" 
            Text="Category :"></asp:Label>&nbsp;
        <asp:DropDownList ID="ddl_cat" runat="server" Style="position: relative">
            <asp:ListItem>Mobiles &amp; Accesories</asp:ListItem>
            <asp:ListItem>Home &amp; Appliances</asp:ListItem>
            <asp:ListItem>Flowers</asp:ListItem>
        </asp:DropDownList><br />
        <br />
        <asp:Label ID="lbl_subcat" runat="server" Style="position: relative" 
            Text="Sub Category :"></asp:Label>&nbsp;
        <asp:DropDownList ID="ddl_subcat" runat="server" Style="position: relative">
        </asp:DropDownList><br />
        <br />
        <asp:Label ID="lbl_brand" runat="server" Style="position: relative" 
            Text="Brand :"></asp:Label>&nbsp;
        <asp:TextBox ID="txt_brand" runat="server" 
            Style="position: relative; top: -1px; left: 1px;"></asp:TextBox><br />
        <br />
        <asp:Label ID="lbl_colour" runat="server" Style="position: relative" 
            Text="Colour :"></asp:Label>&nbsp;
        <asp:TextBox ID="txt_colour" runat="server" 
            Style="position: relative; top: 0px; left: 0px;"></asp:TextBox><br />
        <br />
        <asp:Label ID="lbl_featr" runat="server" Style="position: relative" 
            Text="Features :"></asp:Label>&nbsp;
        <asp:TextBox ID="txt_featr" runat="server" 
            Style="position: relative; top: 3px; left: -1px;" TextMode="MultiLine"></asp:TextBox><br />
        <br />
        <asp:Label ID="lbl_descp" runat="server" Style="position: relative" 
            Text="Description :"></asp:Label>&nbsp;
        <asp:TextBox ID="txt_descp" runat="server" Style="position: relative" 
            TextMode="MultiLine"></asp:TextBox><br />
        <br />
        <asp:Label ID="lbl_price" runat="server" Style="position: relative" 
            Text="Price :"></asp:Label>&nbsp;
        <asp:TextBox ID="txt_price" runat="server" Style="position: relative"></asp:TextBox><br />
        <br />
        <asp:Label ID="lbl_mrktprc" runat="server" Style="position: relative" 
            Text="Market Price :"></asp:Label>&nbsp;
        <asp:TextBox ID="txt_mrktprc" runat="server" 
            Style="position: relative; top: -1px; left: 0px;"></asp:TextBox><br />
        <br />
        <asp:Label ID="lbl_Qty" runat="server" Style="position: relative" 
            Text="Quantity :"></asp:Label>&nbsp;
        <asp:TextBox ID="txt_Qty" runat="server" Style="position: relative"></asp:TextBox><br />
        <br />
        <asp:Label ID="lbl_dlvrddays" runat="server" Style="position: relative" 
            Text="Delivered Days :"></asp:Label>&nbsp;
        <asp:TextBox ID="txt_dlvrddays" runat="server" Style="position: relative"></asp:TextBox><br />
        <br />
        <asp:Image ID="fuplImg1" runat="server" Style="left: 0px; position: relative" 
            Width="30px" />&nbsp;<asp:FileUpload
            ID="fupl_1" runat="server" 
            Style="position: relative; top: 0px; left: 0px;" /><br />
        <asp:Image ID="fuplImg2" runat="server" Style="position: relative" 
            Width="30px" />
        <asp:FileUpload ID="fupl_2" runat="server" Style="position: relative" /><br />
        <asp:Image ID="fuplImg3" runat="server" Style="position: relative" 
            Width="30px" />
        <asp:FileUpload ID="fupl_3" runat="server" Style="position: relative" /><br />
        <asp:Image ID="fuplImg4" runat="server" 
            Style="position: relative; top: 0px; left: 0px;" Width="30px" />
        <asp:FileUpload ID="fupl_4" runat="server" Style="position: relative" /><br />
        <asp:Image ID="fuplImg5" runat="server" Style="position: relative" 
            Width="30px" />
        <asp:FileUpload ID="fupl_5" runat="server" 
            Style="position: relative; top: 1px; left: 0px;" /><br />
        <br />
    </div>
    </form>
</body>
</html>
