<%@ Page Title="" Language="C#" MasterPageFile="~/childShopping.master" AutoEventWireup="true" %>

<asp:Content ID="content1" ContentPlaceHolderID="ChildMaster" runat="server">
    <h1>
        <font size="4" face="Arial">Personal Information </font>
    </h1>
    <div>
        <table width="80%">
            <div>
                <tr>
                    <td>
                        <asp:Label ID="lblfirstname" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </div>
            <div>
                <tr>
                    <td>
                        <asp:Label ID="lbllastname" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </div>
            <div>
                <tr>
                    <td>
                        <asp:Label ID="lblmobile" runat="server" Text="MobileNumber"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtmobilenumber" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </div>
            <div>
                <tr>
                    <td>
                        <asp:Label ID="lbllandlinenumber" runat="server" Text="LandlineNumber"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtlandlinenumber" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </div>
            <div>
                <tr>
                    <td>
                        <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drpgender" runat="server">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </div>
            <div>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="btnpersonalinformationsavechange" runat="server" Text="SaveChanges"
                            BackColor="#CC6699" />
                    </td>
                </tr>
            </div>
        </table>
</asp:Content>
