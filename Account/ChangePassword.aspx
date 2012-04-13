<%@ Page Title="" Language="C#" MasterPageFile="~/childShopping.master" AutoEventWireup="true" %>

<asp:Content ID="content1" ContentPlaceHolderID="ChildMaster" runat="server">
    <h1>
        <font size="4" face="Arial">Change Password </font>
    </h1>
    <div><table><div>
        <tr>
            <td>
                <asp:Label ID="lblemailaddress" runat="server" Text="Email Address" Font-Size="Small"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemailaddress" runat="server"></asp:TextBox>
            </td>
        </tr>
    </div>
    <div>
        <tr>
            <td>
                <asp:Label ID="lbloldpassword" runat="server" Text="Old Password" Font-Size="Small"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtoldpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
    </div>
    <div>
        <tr>
            <td>
                <asp:Label ID="lblnewpassword" runat="server" Text="New Password" Font-Size="Small"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnewpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
    </div>
    <div>
        <tr>
            <td>
                <asp:Label ID="lblretypenewpassword" runat="server" Text="Retype New Password" Font-Size="Small"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtretypenewpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
    </div>
    <div>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="btnchangepasswordsavechange" runat="server" Text="SaveChanges" BackColor="#CC6699" />
            </td>
        </tr>
    </div></table></div>
    
</asp:Content>
