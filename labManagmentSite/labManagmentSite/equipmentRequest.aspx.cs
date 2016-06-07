using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace labManagmentSite
{
    public partial class equipmentRequest : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                sendRequest();
                clear();
            }

        }


        private void clear()
        {

            txtRequestName.Text = "";
            txtRequestEmail.Text = "";
            ddlFunction.SelectedIndex = 0;
            txtFunctionOther.Text = "";
            ddlRequestSubject.SelectedIndex = 0;
            txtSubjectOther.Text = "";
            txtRequestLocation.Text = "";
            txtRequestDateFrom.Text = "";
            txtRequestDateTo.Text = "";
            txtRequestStartTime.Text = "";
            txtRequestDuration.Text = "";
            txtRequestNoOfStudents.Text = "";
            txtRequestNoOfSeats.Text = "";
            txtRequestSpecialNeeds.Text = "";
            txtRequestHardware.Text = "";
            txtRequestSoftware.Text = "";
            ddlRequestPresentationEquipment.SelectedIndex = 0;
            txtPresentationOther.Text = "";
            txtRequestRiskAssessment.Text = "";
            txtRequestRisks.Text = "";

        }




        private String getListItem(DropDownList list, TextBox other)
        {
            String otherFunction = "";
            if (list.SelectedItem.ToString() == "Other (Please Specify)")
            {
                otherFunction = other.Text;
                return otherFunction;
            }
            else
            {
                otherFunction = list.SelectedItem.ToString();
                return otherFunction;
            }
        }




        private void sendRequest()
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential();
            credentials.UserName = "fantasyvoyagercustomer@gmail.com";
            credentials.Password = "ChesterP@55word";
            smtpClient.Credentials = credentials;


            MailMessage msg = new MailMessage("fantasyvoyagercustomer@gmail.com", "andyelliottcs@gmail.com");


            msg.Subject = "Request for " + getListItem(ddlFunction, txtFunctionOther) + " usage from " + txtRequestName.Text;
            msg.Body = "This is a request from " + txtRequestName.Text + " for the usage of a " + getListItem(ddlFunction, txtFunctionOther) + ", Located in " + txtRequestLocation.Text + " for the subject of "
                            + getListItem(ddlRequestSubject, txtSubjectOther) + "." + Environment.NewLine + Environment.NewLine +

              " The details can be found below: " + Environment.NewLine + Environment.NewLine +

            "Starting Date: " + txtRequestDateFrom.Text + Environment.NewLine +
            "Finishing Date: " + txtRequestDateTo.Text + Environment.NewLine +
            "Starting Time: " + txtRequestStartTime.Text + Environment.NewLine +
            "Duration: " + txtRequestDuration.Text + Environment.NewLine +
            "Number of Student: " + txtRequestNoOfStudents.Text + Environment.NewLine +
            "Number of Seats Required : " + txtRequestNoOfSeats.Text + Environment.NewLine +
            "Special Needs Access: " + txtRequestSpecialNeeds.Text + Environment.NewLine +
            "Hardware Needed: " + txtRequestHardware.Text + Environment.NewLine +
            "Software Needed: " + txtRequestSoftware.Text + Environment.NewLine +
            "Presentation Equipment Needed :" + getListItem(ddlRequestPresentationEquipment, txtPresentationOther) + Environment.NewLine +
            "Risk Assessment Number: " + txtRequestRiskAssessment.Text + Environment.NewLine +
            "Risk Inherent to This Activity: " + txtRequestRisks.Text + Environment.NewLine + Environment.NewLine + Environment.NewLine +
            "The senders email address is: " + txtRequestEmail.Text;


            if (riskAssessUpload.HasFile)
            {
                String riskAssessFileName = Path.GetFileName(riskAssessUpload.PostedFile.FileName);
                msg.Attachments.Add(new Attachment(riskAssessUpload.PostedFile.InputStream, riskAssessFileName));
            }

            smtpClient.Send(msg);

        }



    }

}



