using System;
using System.Net.Mail;
using System.Web.Security;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Btn_SendMail_Click(object sender, EventArgs e)
    {
        // Get all Required information to send an Email Message.
        MailMessage mailObj = new MailMessage(txtFrom.Text, txtTo.Text, txtSubject.Text, txtBody.Text + "\r\n" + "Sent By : " + txtFrom.Text);
        
        // Specify smtp server name and port number to send Email using smtp.
        SmtpClient SMTPServer = new SmtpClient("smtp.gmail.com", 587);
        
        // Get Username and Password to authenticate sender.
        SMTPServer.Credentials = new System.Net.NetworkCredential
                                ("noreplay.mobileshop1234", "niit#1234");
        
        // In case of Gmail must be true.
        SMTPServer.EnableSsl = true;
        try
        {
            // Sending a Message.
            SMTPServer.Send(mailObj);
        }
        catch (Exception ex)
        {
            // Display an error Message.
            Label1.Text = ex.ToString();
        }
        Label1.Text = "Great, Message was Sent!";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        // Fill with a Customer support Email-ID.
        txtTo.Text = "noreplay.mobileshop1234@gmail.com";

        // Fill with an Email-ID if user already logged in. 
        if (Request.IsAuthenticated)
        {
            MembershipUser currentUser = Membership.GetUser();
            txtFrom.Text = currentUser.Email;
            txtFrom.Enabled = false;
        }
    }
}