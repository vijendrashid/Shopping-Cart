<%@ Page Title="" Language="C#" MasterPageFile="~/childShopping.master" AutoEventWireup="true" %>

<script runat="server">
    void Page_PreRender()
    {
        txtfirstname.Text = Profile.PersonalInformation.FirstName;
        txtlastname.Text = Profile.PersonalInformation.LastName;
        txtmobilenumber.Text = Profile.PersonalInformation.MobileNumber;
        txtlandlinenumber.Text = Profile.PersonalInformation.LandlineNumber;
        drpgender.SelectedItem.Text = Profile.PersonalInformation.Gender;
        if (drpgender.SelectedItem.Text != "")
        {
            drpgender.SelectedItem.Text = Profile.PersonalInformation.Gender;
        }
        else
        {
            drpgender.SelectedItem.Text = "Male";
        }
    }
    protected void btnpersonalinformationsavechange_Click(object sender, EventArgs e)
    {
        Profile.PersonalInformation.FirstName = txtfirstname.Text;
        Profile.PersonalInformation.LastName = txtlastname.Text;
        Profile.PersonalInformation.MobileNumber = txtmobilenumber.Text;
        Profile.PersonalInformation.LandlineNumber = txtlandlinenumber.Text;
        Profile.PersonalInformation.Gender = drpgender.SelectedItem.Text;
    }
</script>
<asp:Content ID="content1" ContentPlaceHolderID="ChildMaster" runat="server">
    <h3>
        Personal Information
    </h3>
    <div>
        <table width="80%">
            <div>
                <tr>
                    <td>
                        <asp:Label ID="lblfirstname" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revFName" runat="server" ControlToValidate="txtfirstname"
                            Display="Dynamic" EnableViewState="False" Enabled="False">(First Name is invalid)</asp:RegularExpressionValidator>
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
                        <asp:RegularExpressionValidator ID="revLName" runat="server" ControlToValidate="txtlastname"
                            Display="Dynamic" Enabled="False">(Last Name is invalid)</asp:RegularExpressionValidator>
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
                        <asp:RegularExpressionValidator ID="revMNumber" runat="server" ControlToValidate="txtmobilenumber"
                            Display="Dynamic" Enabled="False">(Number is Invalid)</asp:RegularExpressionValidator>
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
                        <asp:RegularExpressionValidator ID="revLNumber" runat="server" ControlToValidate="txtlandlinenumber"
                            Display="Dynamic" Enabled="False">Land number is Invalid)</asp:RegularExpressionValidator>
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
                            <asp:ListItem Selected="True">Select</asp:ListItem>
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
                            OnClick="btnpersonalinformationsavechange_Click" />
                    </td>
                </tr>
            </div>
        </table>
</asp:Content>
