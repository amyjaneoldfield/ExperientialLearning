using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace labManagmentSite
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Page.Validate();        // validate page if JS not enabled
            if (Page.IsValid)
            {
                //sendMail();
                returnLiteral();
                clear();
                visability();
               
            }
        }

        private void returnLiteral()
        {
            receivedLiteral.Text = "<p>Thank you " + txtName.Text + "! We have received your message and will get back to you as soon as possible!</p>";

        }

        private void clear()
        {
            txtName.Text = "";      //method to clear all fields 
            txtRe.Text = "";
            txtEmail.Text = "";
            txtComment.Text = "";
        }

        private void visability()
        {
            lblName.Visible = false;
            txtName.Visible = false;
            lblRe.Visible = false;
            txtRe.Visible = false;
            lblEmail.Visible = false;
            txtEmail.Visible = false;
            lblComment.Visible = false;
            txtComment.Visible = false;
            btnSubmit.Visible = false;

        }

        private void sendMail()                 //code to send email. Not being called as it will be be ammended later
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential();
            credentials.UserName = "fantasyvoyagercustomer@gmail.com";
            credentials.Password = "ChesterP@55word";
            smtpClient.Credentials = credentials;


            MailMessage msg = new MailMessage("fantasyvoyagercustomer@gmail.com", "fantasyvoyageronline@gmail.com");

            msg.Subject = txtRe.Text;
            msg.Body = "This is a message from " + txtName.Text + Environment.NewLine + Environment.NewLine + txtComment.Text + Environment.NewLine + Environment.NewLine + "Recieved From " + txtEmail.Text; // body of message with email adress added to the end 
            smtpClient.Send(msg);
        }

      
    }
}