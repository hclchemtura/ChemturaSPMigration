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
                //GenrateCaptcha();
            }
        }
        
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SPSite objSite = new SPSite(SPContext.Current.Site.Url))
            {
                using (SPWeb objWeb = objSite.OpenWeb())
                {

                    try
                    {
                        if (ReCaptcha.IsValid)
                        {
                            lblResult.Visible = false;
                            objWeb.AllowUnsafeUpdates = true;
                            objWeb.Update();
                            SPList spList = objWeb.Lists["Contact Us"];

                            SPListItem spListItem = spList.Items.Add();
                            spListItem["Title"] = title.Text.ToString();
                            spListItem["Name"] = name.Text.ToString();
                            spListItem["Email"] = email.Text.ToString();
                            spListItem["Company Name"] = company.Text.ToString();
                            spListItem["Subject"] = subject.SelectedItem.ToString();
                            spListItem["Message"] = message.Text.ToString();
                            spListItem["Phone"] = phone.Text.ToString();
                            spListItem.Update();
                            objWeb.AllowUnsafeUpdates = false;
                            ResetControls();
                            //ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alerts", "alert('Query has been sent successfully.')", true);
                        }
                        else
                        {
                            lblResult.Visible = true;
                            lblResult.Text = "Invalid Captcha Code!";
                        }
                    }
                    catch (Exception ex)
                    {
                    }
                }
            }
        }


        //protected void GenrateCaptcha()
        //{
        //    const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        //    var random = new Random();
        //    string strCaptcha = new string(Enumerable.Repeat(chars, 7)
        //      .Select(s => s[random.Next(s.Length)]).ToArray());
        //    lblCaptcha.Text = strCaptcha;
        //}




        //protected void imgRefreshCaptcha_Click1(object sender, EventArgs e)
        //{
        //    GenrateCaptcha();
        //}
        protected void ResetControls()
        {
            title.Text = "";
            name.Text = "";
            company.Text = "";
            phone.Text = "";
            email.Text = "";
            message.Text = "";
            //txtCaptcha.Text = "";
            subject.SelectedIndex = 0;
            //GenrateCaptcha();
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

