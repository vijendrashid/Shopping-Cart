<%@ Page Title="" Language="C#" MasterPageFile="~/childShopping.master" AutoEventWireup="true" %>

<script runat="server">

    protected void btnorder_Click(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="content1" ContentPlaceHolderID="ChildMaster" runat="server">
    <table>
        <tr>
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
&nbsp;</font>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    <asp:TextBox ID="txtorder" runat="server"></asp:TextBox>
                    <asp:Button ID="btnorder" runat="server" Text="Go" onclick="btnorder_Click" /></div>
            </td>
        </tr>
    </table>
    
</asp:Content>
