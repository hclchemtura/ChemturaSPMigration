<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactUSWPUserControl.ascx.cs" Inherits="Greatlak.CustomWebparts.ContactUSWP.ContactUSWPUserControl" %>

<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha, Version=1.0.5.0, Culture=neutral, PublicKeyToken=9afc4d65b28c38c2" %>

<div id="contentWrapper" class="greatLakesContact">
    <div id="content">
        <div id="contentOverlay">
            <div class="region" id="region1">
                <div>

                    <div>
                        <div id="breadcrumbBannerWrapper" style="width:940px;height:260px">
                            <div class="breadcrumbWrapper">
                                <div class="breadcrumb">

                                    <a href="/sites/greatlakes/Pages/Contact_Us.aspx" title="Contact Us">Contact Us</a>
                                </div>
                                <!-- /.breadcrumb -->
                            </div>
                            <!-- /.breadcrumbWrapper -->
                        </div>
                        <!-- /#breadcrumbBannerWrapper -->



                    </div>

                </div>
            </div>
            <!-- /#region1 -->
            <div class="region" id="region2">
                <div>
                        <div class="contactUsFormWrapper">
        <div class="contactUsForm">

            <script language="javascript" charset="utf-8">
                function replaceSpecialChars(input) {
                    input = input.replaceAll("/" / g, "'");
                    return input;
                }

                function testEmail(src) {
                    var emailReg = "^[\\w-_\.]*[\\w-_\.]\@[\\w]\.+[\\w]+[\\w]$";
                    var regex = new RegExp(emailReg);
                    return regex.test(src);
                }

                function validateContactForm(form) {
                    var subject = replaceSpecialChars(document.getElementById("subject"));
                    var name = document.getElementById("name").value;
                    var company = replaceSpecialChars(document.getElementById("company"));
                    var country = replaceSpecialChars(document.getElementById("country"));
                    var email = replaceSpecialChars(document.getElementById("email"));
                    var phone = replaceSpecialChars(document.getElementById("phone"));
                    var message = replaceSpecialChars(document.getElementById("message"));
                    var messagetext = replaceSpecialChars(document.getElementById("tbxMessageText"));
                    var recaptcha = document.getElementById("recaptcha_response_field");

                    var errortext = "";
                    if (subject.value == "") {
                        errortext += "Please enter a Subject\n";
                    }
                    if (name == '') {
                        errortext += "Please enter your Name\n";
                    }
                    if (company.value == "") {
                        errortext += "Please enter your Company Name\n";
                    }
                    if (country.value == "") {
                        errortext += "Please enter your Country\n";
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
                    if (recaptcha.value == "") {
                        errortext += "Please type the two words in the reCaptcha box at the bottom of the form\n"
                    }

                    if (errortext.length > 0) {
                        alert(errortext);
                        return false
                    }
                    else {

                        messagetext.value = message.value;
                        return true;
                    }

                    return false;

                }
            </script>


            <form id="contact" method="post">
                <fieldset>
                    <legend>Your details</legend>
                    <ol>
                        <li>
                            <label for="name">Name</label>
                            <asp:TextBox ID="name" runat="server"></asp:TextBox>

                        </li>
                        <li>
                            <label for="title">Title</label>
                            <input id="title" name="title" type="text" placeholder="Job Title">
                        </li>
                        <li>
                            <label for="email">Email</label>
                            <input id="email" name="email" type="email" placeholder="example@domain.com" required>
                        </li>
                        <li>
                            <label for="company">Company Name</label>
                            <input id="company" name="company" type="text" placeholder="Company Name" required>
                        </li>
                        <li>
                            <label for="country">Country</label>
                            <input id="country" name="country" type="text" placeholder="Country" required>
                        </li>
                        <li>
                            <label for="subject">Subject</label>
                            <select id="subject" name="subject" required>
                                <option value="pleaseSelect" name="pleaseSelect">Please select...</option>
                                <option value="customerServices" name="customerServices">Customer Services</option>
                                <option value="technicalSupport" name="technicalSupport">Technical Support</option>
                                <option value="careers" name="careers">Careers</option>
                                <option value="general" name="general">General</option>
                            </select>
                        </li>
                        <li>
                            <label for="phone">Phone</label>
                            <input id="phone" name="phone" type="tel" placeholder="Eg. +447500000000" required>
                        </li>
                        <li>
                            <label for="message">Message</label>
                            <textarea id="message" name="message" cols="50"></textarea>
                            <input type="hidden" name="tbxMessageText" id="tbxMessageText" />
                        </li>
                        <li>
                            <recaptcha:RecaptchaControl ID="ReCaptcha" runat="server" PublicKey="6LeWCRMTAAAAABJ35xHnFYPcUsR1w3lmVwS8THl9" PrivateKey="6LeWCRMTAAAAAJ5Yts86UOUu4LG5jhPZcbL0yM-9" Theme="white" />
                            <asp:Label ID="lblResult" runat="server" Visible="false" />

                        </li>
                    </ol>
                </fieldset>

                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClientClick="return validateContactForm(document.forms.contact)" OnClick="btnSubmit_Click" />
            </form>

        </div><!-- /.contactUsForm -->
    </div><!-- /.contactUsFormWrapper -->
                </div>
                </div>
                <!-- /#region2 -->
                <div class="region" id="region3">
                    <div>

                        <div>

                            <div class="featureAreaStandardWrapper">
                                <div class="featureAreaStandardItem">

                                    <div class="title">
                                        <h2>Great Lakes Solutions Contacts</h2>
                                    </div>
                                    <div class="body">
                                        <!-- Load the body of the text area. -->
                                        <h3>Headquarters</h3>

                                        <p>
                                            199 Benson Road<br />
                                            Middlebury, CT 06749<br />
                                            Phone: +1-800-428-7947<br />
                                            Fax: +1-765-463-2188
                                        </p>

                                        <p><a href="/sites/greatlakes/Pages/Global_Contacts.aspx">View all global contacts »</a></p>

                                    </div>

                                </div>
                                <!-- /.featureAreaLearnMoreItem -->
                            </div>
                            <!-- /.featureAreaLearnMoreWrapper -->
                        </div>
                    </div>
                </div>
                <!-- /#region3 -->
                <div class="region" id="region4">
                    <div>
                    </div>
                </div>
                <!-- /#region4 -->
                <div class="region" id="region5">
                    <div>
                    </div>
                </div>
                <!-- /#region5 -->
            </div>
            <!-- /#contentOverlay -->
        </div>
        <!-- /#content -->
    </div>
    <!-- /#contentWrapper -->
</div>
