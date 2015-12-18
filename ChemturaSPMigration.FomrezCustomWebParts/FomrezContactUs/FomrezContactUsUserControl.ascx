<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FomrezContactUsUserControl.ascx.cs" Inherits="ChemturaSPMigration.FomrezCustomWebParts.FomrezContactUs.FomrezContactUsUserControl" %>
  <link rel="stylesheet" href="/sites/Fomrez/corporatev2/chemturav8/css/Fomrez-en-US/contactUs_desktop.css" media="screen and (min-width: 761px)" />
<%--<%@ Import Namespace="System.Configuration" %>--%>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha, Version=1.0.5.0, Culture=neutral, PublicKeyToken=9afc4d65b28c38c2" %>
<script type="text/javascript">
    function testEmail(src) {
        var emailReg = "^[\\w-_\.]*[\\w-_\.]\@[\\w]\.+[\\w]+[\\w]$";
        var regex = new RegExp(emailReg);
        return regex.test(src);
    }

    function validateContactForm(form1) {
        var subject = document.getElementById("subject");
        var name = document.getElementById("name");
        var company = document.getElementById("company");
        var email = document.getElementById("email");
        var phone = document.getElementById("phone");
        var message = document.getElementById("message");
        var messagetext = document.getElementById("tbxMessageText");
        var recaptcha = document.getElementById("recaptcha_response_field");

        var errortext = "";
        if (subject.value == "") {
            errortext += "Please enter a Subject\n";
        }
        if (name.value == "") {
            errortext += "Please enter your Name\n";
        }
        if (company.value == "") {
            errortext += "Please enter your Company Name\n";
        }

        if (email.value == "") {
            errortext += "Please enter your E-Mail Address\n";
        }
        else if (!testEmail(email.value)) {
            errortext += "Please enter a valid E-Mail Address\n";
        }

        if (phone.value == "") {
            errortext += "Please enter your Phone Number\n";
        }
        if (message.value == "") {
            errortext += "Please enter a Message\n";

        }
        if (message.length > 8000) {
            errortext += "Sorry, your message must be limited to 8000 characters\n";
        }

        if (errortext.length > 0) {
            alert(errortext);
            return false
        }
        else {
            messagetext.value = message.value;
            return true;
        }
    }
</script>

<div class="contactUsFormWrapper">
    <div class="contactUsForm">
        <form id="contact" action="/Contact_Us" method="post">
            <fieldset>
                <legend>Your details</legend>
                <ol>
                    <li>
                        <label for="name">Name</label>
                        <asp:TextBox ID="name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Please enter name" ValidationGroup="ContactUs" Display="Dynamic"></asp:RequiredFieldValidator>
                    </li>
                    <li>
                        <label for="title">Title</label>
                        <asp:TextBox ID="title" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="title" ErrorMessage="Please enter title" ValidationGroup="ContactUs" Display="Dynamic"></asp:RequiredFieldValidator>
                    </li>
                    <li>
                        <label for="email">Email</label>
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="email" runat="server" ErrorMessage="Please enter email" ValidationGroup="ContactUs" Display="Dynamic"></asp:RequiredFieldValidator>
                    </li>
                    <li>
                        <label for="company">Company Name</label>
                        <asp:TextBox ID="company" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="company" runat="server" ErrorMessage="Please enter company name" ValidationGroup="ContactUs" Display="Dynamic"></asp:RequiredFieldValidator>
                    </li>
                    <li>
                        <label for="subject">Subject</label>
                        <asp:DropDownList ID="subject" runat="server">
                            <asp:ListItem>Please select...</asp:ListItem>
                            <asp:ListItem>Customer Service</asp:ListItem>
                            <asp:ListItem>Technical Support</asp:ListItem>
                            <asp:ListItem>General</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="subject" InitialValue="Please select..." ErrorMessage="Please select a subject" ValidationGroup="ContactUs" Display="Dynamic"></asp:RequiredFieldValidator>
                    </li>
                    <li>
                        <label for="phone">Phone</label>
                        <asp:TextBox ID="phone" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="phone" runat="server" ErrorMessage="Please enter a Phone" ValidationGroup="ContactUs" Display="Dynamic"></asp:RequiredFieldValidator>
                    </li>
                    <li>
                        <label for="message">Message</label>
                        
                        
                        <asp:TextBox ID="message" TextMode="MultiLine"  runat="server" MaxLength="8000"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="message" runat="server" ErrorMessage="Please enter a Message" ValidationGroup="ContactUs" Display="Dynamic"></asp:RequiredFieldValidator>
                    </li>
                    <li>
                       
                        <recaptcha:RecaptchaControl ID="ReCaptcha" runat="server" PublicKey="<%$AppSettings:CaptchaPublic%>" PrivateKey="<%$AppSettings:CaptchaPrivate%>" Theme="white" />

                         <asp:Label ID="lblResult" runat="server" Visible="false" />
                    </li>
                </ol>
            </fieldset>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" OnClientClick="return validateContactForm(contact);" />
            
        </form>
    </div>
</div>



       
      