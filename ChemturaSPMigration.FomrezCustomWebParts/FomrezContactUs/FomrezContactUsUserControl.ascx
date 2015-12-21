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
<script type="text/javascript" src="/Sites/Fomrez/Style Library/FormezCustomFiles/Scripts/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/Sites/Fomrez/Style Library/FormezCustomFiles/Scripts/ContactUs.js"></script>


<div class="contactUsFormWrapper" id="contactForm" runat="server">
    <div class="contactUsForm">
        <form id="contact" action="/Contact_Us" method="post">
            <fieldset>
                <legend>Your details</legend>
                <ol>
                    <li>
                        <label for="name">Name</label>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </li>
                    <li>
                        <label for="title">Title</label>
                        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                    </li>
                    <li>
                        <label for="email">Email</label>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </li>
                    <li>
                        <label for="company">Company Name</label>
                        <asp:TextBox ID="txtCompany" runat="server"></asp:TextBox>
                    </li>
                    <li>
                        <label for="subject">Subject</label>
                        <asp:DropDownList ID="dldSubject" runat="server">

                            <asp:ListItem Text="Please select..." Value="0" Selected="True" />
                            <asp:ListItem Text="Customer Service" Value="1" />
                            <asp:ListItem Text="Technical Support" Value="2" />
                            <asp:ListItem Text="Careers" Value="3" />
                            <asp:ListItem Text="General" Value="4" />
                        </asp:DropDownList>
                    </li>
                    <li>
                        <label for="phone">Phone</label>
                        <asp:TextBox ID="txtPhone" runat="server" ></asp:TextBox>
                    </li>
                    <li>
                        <label for="message">Message</label>
                        
                        
                        <asp:TextBox ID="txtMessage" TextMode="MultiLine"  runat="server" MaxLength="8000"></asp:TextBox>
                            <input type="hidden" name="tbxMessageText" id="tbxMessageText" />
                    </li>
                    <li>
                       
                        <recaptcha:RecaptchaControl ID="ReCaptcha" runat="server" PublicKey="<%$AppSettings:CaptchaPublic%>" PrivateKey="<%$AppSettings:CaptchaPrivate%>" Theme="white" />

                         <asp:Label ID="lblResult" runat="server" Visible="false" />
                    </li>
                </ol>
            </fieldset>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" OnClientClick="return validateContactUs();" />
            
        </form>
    </div>
</div>

<div runat="server" id="success">
    Your message has been sent.

Thanks for contacting Chemtura Fomrez.
</div>



       
      