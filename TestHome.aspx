﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestHome.aspx.cs" Inherits="TestHome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID"  
                SortExpression="id" />
            <asp:ImageField DataImageUrlField="imagePath" HeaderText="Image Path" 
               >
            </asp:ImageField>
        </Columns>
       
    </asp:GridView>
    </div>
    </form>
</body>
</html>
