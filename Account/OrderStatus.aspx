<%@ Page Title="" Language="C#" MasterPageFile="~/childShopping.master" AutoEventWireup="true" %>

<asp:Content ID="content1" ContentPlaceHolderID="ChildMaster" runat="server">
<table>    <tr>
        <td style="height: 25px">
            <h2>
                <font size="4" face="arial">Order Status</h2>
        </td>
    </tr>
    <tr>
        <td>
            <div>
                <font size="3" face="verdana">Check Order Status </font>
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <div>
                <font size="1" face="verdana">Now you can track the progress of your order right here!
                </font>
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <div>
                <font size="1" face="verdana">Enter your Order ID below and click "GO" to view details
                    of your order.<br />
&nbsp;</font></div>
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="txtorder" runat="server"></asp:TextBox>                
            <asp:Button ID="btnorder" runat="server" Text="Go"  />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
<div>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</div>
</asp:Content>

