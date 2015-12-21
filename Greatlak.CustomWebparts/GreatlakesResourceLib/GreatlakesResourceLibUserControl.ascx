<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GreatlakesResourceLibUserControl.ascx.cs" Inherits="Greatlak.CustomWebparts.GreatlakesResourceLib.GreatlakesResourceLibUserControl" %>
<div class="vgnTextWrapper">
    <div class="vgnText" id="resLibThreeCol" runat="server">
        
        <%--<asp:DataList ID="lvResourceLib" RepeatDirection="Horizontal" RepeatColumns="3" runat="server">
            <ItemTemplate>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                    
                        <tr>
                            <td style="text-align: center; vertical-align: bottom;"><a target="_blank" href='<%# GetUrl(Eval("PDFLink")) %>'><b><%#Eval("Title") %></b></a></td>
                        </tr>

                        <tr>
                            <td style="text-align: center; vertical-align: top;"><a target="_blank" href='<%# GetUrl(Eval("PDFLink")) %>'>
                                <img alt="Flame Retardands Overview" src='<%# GetUrl(Eval("ImageLink")) %>'></a></td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top;"><%#Eval("Description") %></td>
                        </tr>
                    
                 </tbody>
         </table>
            </ItemTemplate>
            <FooterTemplate>
               
            </FooterTemplate>
        </asp:DataList>--%>
            
    </div>
</div>
<div class="vgnTextWrapper">
    <div class="vgnText" id="resLibTwoCol" runat="server">
        <%--<asp:DataList ID="dlResource" RepeatDirection="Horizontal" RepeatColumns="2" runat="server">
            <ItemTemplate>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                        <tr>
                            <td width="50%" style="text-align: center; vertical-align: bottom;"><a target="_blank" href='<%# GetUrl(Eval("PDFLink")) %>'><b><%#Eval("Title") %></b></a></td>
                        </tr>

                        <tr>
                            <td width="50%" style="text-align: center; vertical-align: top;"><a target="_blank" href='<%# GetUrl(Eval("PDFLink")) %>'>
                                <img alt="Flame Retardands Overview" src='<%# GetUrl(Eval("ImageLink")) %>'></a></td>
                        </tr>
                        <tr>
                            <td width="50%" height="20%" style="vertical-align: top;"><%#Eval("Description") %></td>
                        </tr>
                    </tbody>
                </table>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:DataList>--%>
    </div>
</div>

