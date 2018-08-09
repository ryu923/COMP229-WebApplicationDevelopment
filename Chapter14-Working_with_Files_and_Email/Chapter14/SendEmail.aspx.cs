using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter14
{
    public partial class SendEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendingEmail(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            MailMessage message = new MailMessage();

            try
            {
                MailAddress fromAddress = new MailAddress("from@example.com", "From Me");
                MailAddress toAddress = new MailAddress("to@example.com", "To You");

                message.From = fromAddress;
                message.To.Add(toAddress);
                message.Subject = "Testing";
                message.Body = "This is the body of a sample message";

                smtpClient.Host = "mailserver.example.com";
                smtpClient.Credentials = new System.Net.NetworkCredential("username", "password");
                smtpClient.Send(message);

                statusLabel.Text = "Email sent.";
            }
            catch
            {
                statusLabel.Text = "Couldn't send the message!";
            }
        }
    }
}