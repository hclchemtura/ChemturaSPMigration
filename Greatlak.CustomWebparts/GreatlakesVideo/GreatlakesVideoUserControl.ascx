<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GreatlakesVideoUserControl.ascx.cs" Inherits="Greatlak.CustomWebparts.GreatlakesVideo.GreatlakesVideoUserControl" %>


<div>
    <div class="libraryWrapper">
        <div class="videoLibraryItem">
            <asp:DataList ID="lvVideoLib" RepeatDirection="Vertical" runat="server">
                <ItemTemplate>
                    <div class="title"><%#Eval("Title") %></div>
                    <%--<%#Eval("Title")%>--%>
                    <br />
                    <div class="video">
                        <iframe style="width: 400px; height: 225px;" frameborder="0" allowfullscreen  src='<%#Eval("Link")%>' runat="server"></iframe>
                    </div>
                    <br />
                    <div class="description">
                        <p><%#DataBinder.Eval(Container.DataItem,"Video_x0020_Description")%></p>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <!--- /.videoLibraryItem --->
    </div>
    <!-- /.libraryWrapper -->

</div>
