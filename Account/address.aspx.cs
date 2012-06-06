using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_address : System.Web.UI.Page
{
    void Page_PreRender()
    {
        txtFullName.Text = Profile.Address.FullName;
        txtAddress.Text = Profile.Address.StreetAddress;
        txtLandmark.Text = Profile.Address.Landmark;
        txtCity.Text = Profile.Address.City;
        txtState.Text =  Profile.Address.State;
        txtContryName.Text = Profile.Address.Country;
        txtPin.Text = Profile.Address.Pincode;
        txtPNum.Text = Profile.Address.PhoneNumber;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        Profile.Address.FullName = txtFullName.Text;
        Profile.Address.StreetAddress = txtAddress.Text;
        Profile.Address.Landmark = txtLandmark.Text;
        Profile.Address.City = txtCity.Text;
        Profile.Address.State = txtState.Text;
        Profile.Address.Country = txtContryName.Text;
        Profile.Address.Pincode = txtPin.Text;
        Profile.Address.PhoneNumber = txtPNum.Text;
    }
}