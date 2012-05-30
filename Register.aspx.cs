using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    { 
        // Create new user and retrieve create status result.
        MembershipCreateStatus status;
        string passwordQuestion = "How old Are you?";
        string passwordAnswer = "25";

        //if(Membership.RequiresQuestionAndAnswer)
        //{
        //    passwordQuestion = PasswordQuestionTextbox.Text;
        //    passwordAnswer = PasswordAnswerTextbox.Text;
        //}

        //try
        //{
            // Create an User
            MembershipUser newUser = Membership.CreateUser(txtNewUserName.Text, txtNewUserName.Text, txtEmailID.Text, passwordQuestion, passwordAnswer, true, out status);

            if (newUser == null)
            {
                lblmsg.Text = GetErrorMessage(status);
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        //}
        //catch
        //{
        //    lblmsg.Text = "An exception occurred creating the user. ";
        //}

             //If user created successfully, set password question and answer (if applicable) and 
        //redirect to login page. Otherwise return an error message.
        //http://msdn.microsoft.com/en-us/library/d8t4h2es
        //if (Membership.RequiresQuestionAndAnswer)
        //{
        //    newUser.ChangePasswordQuestionAndAnswer(PasswordTextbox.Text,
        //                                            PasswordQuestionTextbox.Text,
        //                                            PasswordAnswerTextbox.Text);
        //}



    }

    public string GetErrorMessage(MembershipCreateStatus status)
    {
        switch (status)
        {
            case MembershipCreateStatus.DuplicateUserName:
                return "Username already exists. Please enter a different user name.";

            case MembershipCreateStatus.DuplicateEmail:
                return "A username for that e-mail address already exists. Please enter a different e-mail address.";

            case MembershipCreateStatus.InvalidPassword:
                return "The password provided is invalid. Please enter a valid password value.";

            case MembershipCreateStatus.InvalidEmail:
                return "The e-mail address provided is invalid. Please check the value and try again.";

            case MembershipCreateStatus.InvalidAnswer:
                return "The password retrieval answer provided is invalid. Please check the value and try again.";

            case MembershipCreateStatus.InvalidQuestion:
                return "The password retrieval question provided is invalid. Please check the value and try again.";

            case MembershipCreateStatus.InvalidUserName:
                return "The user name provided is invalid. Please check the value and try again.";

            case MembershipCreateStatus.ProviderError:
                return "The authentication provider returned an error. Please verify your entry and try again. If the problem persists, please contact your system administrator.";

            case MembershipCreateStatus.UserRejected:
                return "The user creation request has been canceled. Please verify your entry and try again. If the problem persists, please contact your system administrator.";

            default:
                return "An unknown error occurred. Please verify your entry and try again. If the problem persists, please contact your system administrator.";
        }
    }
}