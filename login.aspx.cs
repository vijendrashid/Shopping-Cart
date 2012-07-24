using System;
using System.Web.Security;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // Get username and password to validate the login.
        if (Membership.ValidateUser(txtUserName.Text, txtPassword.Text))
        {
            FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, chkRememberMe.Checked);
        }
        else
            lblError.Text = "Invalid username/password";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        // If user is authenticated redirect to Home.aspx page
        if (Request.IsAuthenticated)
            Response.Redirect("Default.aspx");

        
        //if (PreviousPage != null)
        //{
        //    Label preMsg = (Label)PreviousPage.FindControl("msgLogin");
        //    if (preMsg != null)
        //    {
        //        lblError.Text = preMsg.Text;
        //    }
        //}
    }
}