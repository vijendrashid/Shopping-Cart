using System;
using System.Net.Mail;
using System.Web.Security;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Btn_SendMail_Click(object sender, EventArgs e)
    {
        MailMessage mailObj = new MailMessage(txtFrom.Text, txtTo.Text, txtSubject.Text, txtBody.Text + "\r\n" + "Sent By : " + txtFrom.Text);
        SmtpClient SMTPServer = new SmtpClient("smtp.gmail.com", 587);
        //SMTPServer.UseDefaultCredentials = false;
        SMTPServer.Credentials = new System.Net.NetworkCredential
                                ("noreplay.mobileshop1234", "niit#1234");
        SMTPServer.EnableSsl = true;

        try
        {
            SMTPServer.Send(mailObj);
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
        Label1.Text = "Message was Sent!";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        txtTo.Text = "noreplay.mobileshop1234@gmail.com";
        MembershipUser currentUser = Membership.GetUser();
        if (Request.IsAuthenticated)
        {
            txtFrom.Text = currentUser.Email;
            txtFrom.Enabled = false;
        }
    }
}