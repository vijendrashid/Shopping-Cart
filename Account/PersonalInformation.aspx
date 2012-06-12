<%@ Page Title=""
  Language="C#"
  MasterPageFile="~/childShopping.master"
  AutoEventWireup="true" %>

<script runat="server">
  void Page_PreRender()
  {
    txtfirstname.Text = Profile.PersonalInformation.FirstName;
    txtlastname.Text = Profile.PersonalInformation.LastName;
    txtmobilenumber.Text = Profile.PersonalInformation.MobileNumber;
    txtlandlinenumber.Text = Profile.PersonalInformation.LandlineNumber;
    drpgender.SelectedItem.Text = Profile.PersonalInformation.Gender;
    if (Profile.PersonalInformation.EmailID == string.Empty)
    {
      MembershipUser currentUser = Membership.GetUser();
      txtEmailID.Text = currentUser.Email;
    }
    else
    {
      txtEmailID.Text = Profile.PersonalInformation.EmailID;
    }

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
    Profile.PersonalInformation.EmailID = txtEmailID.Text;
  }

  protected void Page_Load(object sender, EventArgs e)
  {

  }
</script>
<asp:Content ID="content1"
  ContentPlaceHolderID="ChildMaster"
  runat="server">
  <div class="formStyle">
    <div class="line">
      <h1 class="ms1234-font-verybig">
        Personal Information
      </h1>
    </div>
    <div class="line rw">
      <div class="unit size1of3">
        <asp:Label ID="lblfirstname"
          runat="server"
          Text="First Name"></asp:Label>
      </div>
      <div class="unit size1of3 lastUnit">
        <asp:TextBox ID="txtfirstname"
          runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator
          ID="revFName"
          runat="server"
          ControlToValidate="txtfirstname"
          Display="Dynamic"
          EnableViewState="False"
          Enabled="False">(First Name is invalid)</asp:RegularExpressionValidator>
      </div>
    </div>
    <div class="line rw">
      <div class="unit size1of3">
        <asp:Label ID="lbllastname"
          runat="server"
          Text="Last Name"></asp:Label>
      </div>
      <div class="unit size1of3 lastUnit">
        <asp:TextBox ID="txtlastname"
          runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator
          ID="revLName"
          runat="server"
          ControlToValidate="txtlastname"
          Display="Dynamic"
          Enabled="False">(Last Name is invalid)</asp:RegularExpressionValidator>
      </div>
    </div>
    <div class="line rw">
      <div class="unit size1of3">
        <asp:Label ID="lblmobile"
          runat="server"
          Text="MobileNumber"></asp:Label>
      </div>
      <div class="unit size1of3 lastUnit">
        <asp:TextBox ID="txtmobilenumber"
          runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator
          ID="revMNumber"
          runat="server"
          ControlToValidate="txtmobilenumber"
          Display="Dynamic"
          Enabled="False">(Number is Invalid)</asp:RegularExpressionValidator>
      </div>
    </div>
    <div class="line rw">
      <div class="unit size1of3">
        <asp:Label ID="lbllandlinenumber"
          runat="server"
          Text="LandlineNumber"></asp:Label>
      </div>
      <div class="unit size1of3 lastUnit">
        <asp:TextBox ID="txtlandlinenumber"
          runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator
          ID="revLNumber"
          runat="server"
          ControlToValidate="txtlandlinenumber"
          Display="Dynamic"
          Enabled="False">Land number is Invalid)</asp:RegularExpressionValidator>
      </div>
    </div>
    <div class="line rw">
      <div class="unit size1of3">
        <asp:Label ID="lblgender"
          runat="server"
          Text="Gender"></asp:Label>
      </div>
      <div class="unit size1of3 lastUnit">
        <asp:DropDownList
          ID="drpgender"
          runat="server">
          <asp:ListItem Selected="True">Select</asp:ListItem>
          <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
      </div>
    </div>
    <div class="line rw">
      <div class="unit size1of3">
        <asp:Label ID="lblEmailID"
          runat="server"
          Text="Email ID"></asp:Label>
      </div>
      <div class="unit size1of3 lastUnit">
        <asp:TextBox ID="txtEmailID"
          runat="server"></asp:TextBox>
      </div>
    </div>
    <div class="line rw">
      <div class="unit size1of3">
      </div>
      <div class="unit size1of3 lastUnit">
        <asp:Button ID="btnpersonalinformationsavechange"
          runat="server"
          Text="Save Changes"
          OnClick="btnpersonalinformationsavechange_Click" />
      </div>
    </div>
  </div>
</asp:Content>