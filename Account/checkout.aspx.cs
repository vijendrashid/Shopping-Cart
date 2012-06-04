using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security;
using System.Web.Security;

public partial class Account_checkout : System.Web.UI.Page
{
    void Page_PreRender()
    {
        gvCart.DataSource = Profile.ShoppingCart.Items;
        gvCart.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnConfirmOrder_Click(object sender, EventArgs e)
    {

        //MembershipUser user;
        //user = Membership.GetUser(Page.User.Identity.Name);
        //string emailID = user.Email;
        //decimal price;
        //string itemPic;
        //string type;
        //int quantities;
        //decimal total;
        //string strQuery;


        //for(int i=0; i < Profile.ShoppingCart.Items.Count; i++)
        //{
        //    strQuery = "INSERT INTO Order_details (";

        //}


        //string titles;
        //string name = "";
        //for (int r = 0; r < gvCart.Rows.Count; r++)
        //{

        //    titles = gvCart.Rows[r].Cells[0].Text;
        //    Response.Write(titles);
        //    for (int c = 1; c <= GridView1.Rows[r].Cells.Count; c++)
        //    {
        //        titles = GridView1.Rows[r].Cells[c].Text;
        //        name = name + " " + titles;
        //        c++;
        //    }

        //}
        //string name = GridView1.Rows[0].Cells[0].Text;
        //decimal totalprice = decimal.Parse(GridView1.Rows[0].Cells[1].Text);
    }

    protected void gvCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Profile.ShoppingCart.Items.RemoveAt(e.RowIndex);
    }
    protected void Wizard_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {

    }

    protected void rblOldAddress_CheckedChanged(object sender, EventArgs e)
    {
        //MembershipUser user;
        //user = Membership.GetUser(Page.User.Identity.Name);
        //string emailID = user.Email;

        txtName.Text = Profile.Address.FullName;
        txtAddress.Text = Profile.Address.StreetAddress + "\r\n"
                        + Profile.Address.Landmark + "\r\n"
                        + Profile.Address.City + "\r\n"
                        + Profile.Address.State + "\r\n"
                        + Profile.Address.Country;
        txtPincode.Text = Profile.Address.Pincode;
        txtRcvPhNo.Text = Profile.Address.PhoneNumber;
        txtYrEmailID.Text = Profile.PersonalInformation.EmailID;
    }

    protected void rblNewAddress_CheckedChanged(object sender, EventArgs e)
    {
        txtName.Text = null;
        txtAddress.Text = null;
        txtPincode.Text = null;
        txtRcvPhNo.Text = null;
    }
}