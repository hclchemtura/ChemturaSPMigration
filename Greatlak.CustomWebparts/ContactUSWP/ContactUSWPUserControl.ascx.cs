using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Greatlak.CustomWebparts.ContactUSWP
{
    public partial class ContactUSWPUserControl : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (ReCaptcha.IsValid)
            {
                lblResult.Visible = false;
                
            }
            else
            {
                lblResult.Visible = true;
                lblResult.Text = "Invalid Captcha!";
            }
        }
    }
}
