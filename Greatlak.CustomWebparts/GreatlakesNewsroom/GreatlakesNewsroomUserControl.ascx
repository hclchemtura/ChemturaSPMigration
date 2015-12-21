<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GreatlakesNewsroomUserControl.ascx.cs" Inherits="Greatlak.CustomWebparts.GreatlakesNewsroom.GreatlakesNewsroomUserControl" %>
<div id="contentWrapper">
    <div id="content" class="newsRoom">
        <div id="contentOverlay">
            <div class="region" id="region1">
                <div>
                    <div>

                        <div class="breadcrumbWrapper">
                            <div class="breadcrumb" id="appBreadcrumb" runat="server">
                                <%--<a title="Newsroom Home" href="/Newsroom_Home">Newsroom Home</a> &#47; <a title="Press Releases" href="/Newsroom_Home/Press_Releases">Press Releases</a>--%>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!--- /#region1 --->
            <div class="region" id="region2">
                <div>

                    <div>
                        <div class="leftNavFilterMenuWrapper">
                            <div class="leftNavFilterMenu" id="leftNavUl" runat="server">
                                <%-- <ul>
                                    <li class='T1 current'><a href='/Newsroom_Home' title='Newsroom Home'>Newsroom Home</a></li>
                                    <li class="T2 parent current"><a href="/Newsroom_Home/Press_Releases" title="Press Releases">Press Releases</a></li>
                                    <li class="T2 parent"><a href="/Newsroom_Home/Multimedia" title="Multimedia">Multimedia</a></li>
                                    <li class="T2 parent"><a href="/Newsroom_Home/Business_Publications" title="Business Publications">Business Publications</a></li>
                                    <li class="T2 parent"><a href="/Newsroom_Home/Media_Contacts" title="Media Contacts">Media Contacts</a></li>
                                </ul>--%>
                            </div>
                        </div>


                    </div>

                </div>
            </div>
            <!--- /#region2 --->
            <div id="divreg3" runat="server" style="display: none">
                <div class="region" id="region3">
                    <div>
                        <div class="pageTitleWrapper">
                            <div class="pageTitle">
                                <h1 id="hpress" runat="server"></h1>
                            </div>
                        </div>
                        <div>
                            <div class="vgn-ext-text">
                                <h2 id="hrecent" runat="server"></h2>

                                <asp:Repeater ID="rptnewspress" runat="server">
                                    <HeaderTemplate>
                                        <table cellspacing="0" border="0" width="100%" cellpadding="0">
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td style="text-align: left; vertical-align: bottom;">
                                                <asp:Label runat="server" ID="Label3" Text='<%# Eval("Title") %>' /><br />
                                                <a href='<%# GetUrl(Eval("Newslink")) %>' target="_blank"><b>
                                                    <asp:Label runat="server" ID="Label1" Text='<%# Eval("Description") %>' /></b></a></td>
                                        </tr>
                                        <tr>
                                            <td>&#160;</td>
                                        </tr>

                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </table>
                                    </FooterTemplate>
                                </asp:Repeater>

                                <p id="ppress" runat="server" style="text-align: right; display: none"><a href="/" id="hredpress" runat="server" target="">More Press Releases&#62;&#62;</a></p>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!--- /#region3 --->
            <div id="region5" runat="server" style="display: none">
                <div class="region" id="region3">
                    <div>
                        <div class="pageTitleWrapper">
                            <div class="pageTitle">
                                <h1 id="hMulti" runat="server"></h1>
                            </div>
                        </div>

                        <div>
                            <div class="vgnTextWrapper">
                                <div class="vgnText">

                                    <h2 id="hlogo" runat="server"></h2>
                                    <asp:Repeater ID="rptMulti" runat="server">
                                        <HeaderTemplate>
                                            <table style="width: 597px;" border="0" cellpadding="0" cellspacing="0">
                                        </HeaderTemplate>
                                        <ItemTemplate>

                                            <tr>
                                                <td style="width: 300px; vertical-align: bottom;"><a target="_blank" href='<%# GetUrl(Eval("LogoURL")) %>'>
                                                    <img alt="" height="46" width="120" src='<%# GetUrl(Eval("LogoURL") )%>' title="Logo" /></a></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 300px; vertical-align: bottom;">
                                                    <p>Download:</p>
                                                    <p>
                                                        <img alt="" src='/sites/greatlakes/deployedfiles/ChemturaV8/GreatLakes/News/imagegeneric.png' /><a target="_blank" href='<%#GetUrl( Eval("LogoURL")) %>'><%# Eval("Title") %></a> <%# Eval("Size") %>
                                                    </p>
                                                </td>
                                            </tr>

                                        </ItemTemplate>
                                        <FooterTemplate>
                                            </table>
                                        </FooterTemplate>
                                    </asp:Repeater>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="region6" runat="server" style="display: none">
                <div class="region" id="region3">
                    <div>
                        <div class="pageTitleWrapper">
                            <div class="pageTitle">
                                <h1 id="hbusi" runat="server"></h1>
                            </div>
                        </div>

                        <div>
                            <div class="vgnTextWrapper">
                                <div class="vgnText">

                                    <asp:Repeater ID="rptBusiness" runat="server">
                                        <HeaderTemplate>
                                            <table style="width: 597px;" border="0" cellpadding="0" cellspacing="0">
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td style="vertical-align: bottom; text-align: left; width: 300px;"><a target="_blank" href='<%# GetUrl(Eval("PDFURL"))%>'><b><%# Eval("Title") %></b></a></td>
                                            </tr>

                                            <tr>
                                                <td style="vertical-align: bottom; width: 300px;">
                                                    <p>Download:</p>

                                                    <p>
                                                        <img alt="" src="/sites/greatlakes/deployedfiles/ChemturaV8/GreatLakes/News/applicationpdf.png" /><a target="_blank" href='<%#GetUrl( Eval("NameURL"))%>'><%# Eval("Name")%> </a><%# Eval("Size")%>
                                                    </p>
                                                </td>
                                            </tr>

                                        </ItemTemplate>
                                        <FooterTemplate>
                                            </table>
                                        </FooterTemplate>
                                    </asp:Repeater>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="region7" runat="server" style="display: none">
                <div class="region" id="region3">
                    <div>
                        <div class="pageTitleWrapper">
                            <div class="pageTitle">
                                <h1>Media Contacts</h1>
                            </div>
                        </div>
                        <div>
                            <div class="vgnTextWrapper">
                                <div class="vgnText" id="mediacontact" runat="server">
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <!--- /#region3 --->
            </div>

            <div class="region" id="region4" runat="server">
                <div>

                    <div>
                        <div class="featureAreaStandardWrapper">
                            <div class="featureAreaStandardItem">
                                <div class="title" id="contactName" runat="server">
                                    <%-- <h2>Questions? Comments
                                        <br />
                                        Contact us!</h2>--%>
                                </div>
                                <div class="body">
                                    <!--- Load the body of the text area. --->
                                    <p id="contactDesc" runat="server"></p>

                                    <p style="text-align: right;"><a id="contactref" runat="server" href="#">Contact Us »</a></p>

                                </div>

                            </div>
                            <!--- /.featureAreaLearnMoreItem --->
                        </div>
                        <!--- /.featureAreaLearnMoreWrapper --->
                    </div>

                </div>
            </div>
            <!--- /#region4 --->
        </div>
    </div>
</div>
