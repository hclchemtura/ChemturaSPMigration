using System;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint;
using System.Linq;
using System.Net.Mail;

namespace ChemturaSPMigration.FomrezCustomWebParts.FomrezContactUs
{
    public partial class FomrezContactUsUserControl : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblResult.Visible = false;
                success.Visible = false;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (!ReCaptcha.IsValid)
                {
                    lblResult.Visible = true;
                    lblResult.Text = "Invalid Captcha Code!";
                }
                else
                {
                    contactForm.Visible = false;
                    success.Visible = true;
                }
            }
            catch (Exception ex)
            {
            }
        }
        

        protected void SendEmail()
        {
            string FromId = "";

            //CFO-TO
            string ToId = "";

            string Bdy = "";
            string Subject = "";
            //string name = EmpCode;
            Bdy = "";
            Subject = "";


            //string SMTPServerName = "10.130.248.40";
            try
            {
                MailMessage MailMsg = new MailMessage();
                MailMsg.To.Add(ToId);

                MailMsg.From = new MailAddress(FromId);
                MailMsg.Subject = Subject;

                //-----Mail Attachment------
                ////----Logo
                //Attachment imgLogo = new Attachment(System.IO.Path.GetFullPath("/ImagesMbuzz/logo-new.png"));
                //imgLogo.ContentId = "logo-new.png";
                //MailMsg.Attachments.Add(imgLogo);


                //-----End Attachment-------

                MailMsg.Body = Bdy;
                MailMsg.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "";
                smtp.Send(MailMsg);
            }
            catch (Exception ex)
            {
            }
        }
        static public string MailBody(string Name, string title, string company, string email, string message, string phone)
        {
            StringBuilder sb1 = new StringBuilder();
            sb1.Append("<table width='80%' border='0' cellspacing='0' cellpadding='0' bgcolor='#F1EFF0'>");

            sb1.Append("<tr>");
            sb1.Append("<td style=' font-family:Arial, Helvetica, sans-serif, 'Lucida Handwriting'; color:#FFFFFF; font-size:12px; font-weight:bold; padding:2px; text-align:left'>Name</td>");
            sb1.Append("<td style=' font-family:Arial, Helvetica, sans-serif, 'Lucida Handwriting'; color:#FFFFFF; font-size:12px; font-weight:bold; padding:2px; text-align:left'>" + Name + "</td>");
            sb1.Append("</tr>");
            sb1.Append("<tr>");
            sb1.Append("<td style=' font-family:Arial, Helvetica, sans-serif, 'Lucida Handwriting'; color:#FFFFFF; font-size:12px; font-weight:bold; padding:2px; text-align:left'>Title</td>");
            sb1.Append("<td style=' font-family:Arial, Helvetica, sans-serif, 'Lucida Handwriting'; color:#FFFFFF; font-size:12px; font-weight:bold; padding:2px; text-align:left'>" + title + "</td>");
            sb1.Append("</tr>");
            sb1.Append("<tr>");
            sb1.Append("<td style=' font-family:Arial, Helvetica, sans-serif, 'Lucida Handwriting'; color:#FFFFFF; font-size:12px; font-weight:bold; padding:2px; text-align:left'>Company</td>");
            sb1.Append("<td style=' font-family:Arial, Helvetica, sans-serif, 'Lucida Handwriting'; color:#FFFFFF; font-size:12px; font-weight:bold; padding:2px; text-align:left'>" + company + "</td>");
            sb1.Append("</tr>");
            sb1.Append("<tr>");
            sb1.Append("<td style=' font-family:Arial, Helvetica, sans-serif, 'Lucida Handwriting'; color:#FFFFFF; font-size:12px; font-weight:bold; padding:2px; text-align:left'>Email</td>");
            sb1.Append("<td style=' font-family:Arial, Helvetica, sans-serif, 'Lucida Handwriting'; color:#FFFFFF; font-size:12px; font-weight:bold; padding:2px; text-align:left'>" + email + "</td>");
            sb1.Append("</tr>");
            sb1.Append("<tr>");
            sb1.Append("<td style=' font-family:Arial, Helvetica, sans-serif, 'Lucida Handwriting'; color:#FFFFFF; font-size:12px; font-weight:bold; padding:2px; text-align:left'>Message</td>");
            sb1.Append("<td style=' font-family:Arial, Helvetica, sans-serif, 'Lucida Handwriting'; color:#FFFFFF; font-size:12px; font-weight:bold; padding:2px; text-align:left'>" + message + "</td>");
            sb1.Append("</tr>");
            sb1.Append("<tr>");
            sb1.Append("<td style=' font-family:Arial, Helvetica, sans-serif, 'Lucida Handwriting'; color:#FFFFFF; font-size:12px; font-weight:bold; padding:2px; text-align:left'>Phone</td>");
            sb1.Append("<td style=' font-family:Arial, Helvetica, sans-serif, 'Lucida Handwriting'; color:#FFFFFF; font-size:12px; font-weight:bold; padding:2px; text-align:left'>" + phone + "</td>");
            sb1.Append("</tr>");

            sb1.Append("</table>");

            return sb1.ToString();
        }

    }
}

