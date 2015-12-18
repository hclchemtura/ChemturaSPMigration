<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FomrezNewsUserControl.ascx.cs" Inherits="ChemturaSPMigration.FomrezCustomWebParts.FomrezNews.FomrezNewsUserControl" %>

<div id="contentWrapper" class="fomrezNews">
    <div id="content" class="fomrezNewsContent">
        <div id="contentOverlay">
            <div class="region" id="region1">
                <div>
                    <div>
                        <div class="breadcrumbWrapper">
                            <div class="breadcrumb">
                                <a title="News" href="#">News</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--- /#region1 --->
            <div class="region" id="region2">
                <div>
                    <div>
                        <div class="pageTitleWrapper">
                            <div class="pageTitle">
                                <h1>Fomrez® News
                                </h1>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="newsWrapper" id="fomrezNews" runat="server">
                            <%--<div class="newsItem">
                                <div class="date">February 6, 2013</div>
                                <div class="title">
                                    <a href="/deployedfiles/ChemturaV8/Fomrez/News/Polyester%20Polyols%20Price%20Inc%20Eff%203%2015%2013.pdf" title="Chemtura announces Polyester Polyols price increase" target="_blank">Chemtura announces Polyester Polyols price increase</a>
                                </div>
                                <div class="description">MIDDLEBURY, Ct., February 6, 2013 -- Chemtura Corporation (NYSE: CHMT) announces today that effective March 15th, 2013 or as contracts allow...</div>
                            </div>--%>
                            <!--- /.newsItem --->
                        </div>
                        <!--- /.newsWrapper --->
                    </div>
                </div>
            </div>
            <!--- /#region2 --->
        </div>
        <!--- /#contentOverlay --->
    </div>
    <!--- /#content --->
</div>
<!--- /#contentWrapper --->
