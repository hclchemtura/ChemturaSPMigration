<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GreatlakesProductdetailsUserControl.ascx.cs" Inherits="Greatlak.CustomWebparts.GreatlakesProductdetails.GreatlakesProductdetailsUserControl" %>
<div id="contentWrapper" class="productDetail">
    <div id="content">
        <div id="contentOverlay">
            <div class="region" id="region1">
                <div>
                    <div>
                        <div class="breadcrumbWrapper">
                            <div class="breadcrumb">
                                <%--<a title="Industries We Serve" href="/Industries_We_Serve">Industries We Serve</a> &#47; <a title="Agriculture" href="/Industries_We_Serve/Agriculture">Agriculture</a> &#47; <a title="Agrochemicals" href="/Industries_We_Serve/Agriculture/Agrochemicals">Agrochemicals</a>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--- /#region1 --->
            <div class="region" id="region2">
                <div class="productDetailWrapper">
                    <div class="productDetailItem">
                        <div class="productHeader">
                            <div class="productTitle">
                                <h1>
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                </h1>
                            </div>
                            <!--- /.productTitle --->
                            <div class="productHeaderNav">
                                <p>
                                    <a href="javascript:window.print()">
                                        <img src="/sites/greatlakes/corporatev2/chemturav8/layout/GreatLakes-en-US/printFriendlyIcon.png" alt="Print Friently Version" />Print Friendly Version</a>
                                </p>
                            </div>
                            <!--- /.productHeaderNav --->
                        </div>
                        <!--- /.productHeader --->
                        <div class="productDetail">
                            <div class="productOverview">
                                <h2>PRODUCT OVERVIEW</h2>
                                <p>
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                </p>
                                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                            </div>
                            <!--- /.productOverview --->
                            <div class="productFeaturesBenefits">
                                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                            </div>
                            <!--- /.productFeaturesBenefits --->

                        </div>
                        <!--- /.productDetail --->
                        <div class="productFeatureAreaWrapper">
                            <div class="productFeatureArea">
                                <div class="productFeatureAreaTitle">
                                    <h3>Product Literature</h3>
                                </div>
                                <!--- /.productFeatureAreaTitle --->
                                <div class="productFeatureAreaBody" id="LAbel4" runat="server">
                                    <!--- Load all attached related documents in an unordered list.  All documents should be in .pdf format. The bullet point will
                                be a .pdf document icon --->
                                   <%-- <ul class="productLiterature">
                                        <li class='msds'><a href="\" runat="server" id="msdslink" target='_blank'>(M)SDS</a></li>
                                        <div id="Label4" runat="server"></div>-->
                                        <%-- <li><a href='/deployedfiles/ChemturaV8/GreatLakes/Bromine and Intermediates/BI Products/Bromine TDS.pdf' target='_blank'>Technical Data Sheet</a></li>--%>
                                    
                                </div>
                                <!--- /.productFeatureAreaBody --->
                            </div>
                            <!--- /.productFeatureArea --->

                            <div class="productFeatureArea">
                                <div class="productFeatureAreaTitle">
                                    <h3>Markets &amp; Applications</h3>
                                </div>
                                <!--- /.productFeatureAreaTitle --->
                                <div class="productFeatureAreaBody" id="markrt" runat="server">
                                   <%-- <ul class="marketsApplications">
                                        <li><a href='/Industries_We_Serve/Agriculture/Agrochemicals' title='Agrochemicals'>Agrochemicals</a><li><a href='/Industries_We_Serve/Fine_Chemicals_and_Pharmaceuticals' title='Fine Chemicals and Pharmaceuticals'>Fine Chemicals and Pharmaceuticals</a><li><a href='/Industries_We_Serve/Transportation/Tires' title='Tires'>Tires</a><li><a href='/Industries_We_Serve/Polymerization_and_Polymer_Modification/High_Performance_Rubber' title='High Performance Rubber'>High Performance Rubber</a>
                                    </ul>--%>
                                </div>
                                <!--- /.productFeatureAreaBody --->
                            </div>
                            <!--- /.productFeatureArea --->

                            <div class="productFeatureArea">
                                <div class="productFeatureAreaTitle" id="contactName" runat="server">
                                    <%--<h3>Contact Us</h3>--%>
                                </div>
                                <!--- /.productFeatureAreaTitle --->
                                <div class="productFeatureAreaBody">
                                    <p id="contactDesc" runat="server"></p>
                                    <p><a id="contactref" runat="server" href="/">Contact Us <span class="arrow">&rarr;</span></a></p>
                                </div>
                                <!--- /.productFeatureAreaBody --->
                            </div>
                            <!--- /.productFeatureArea --->

                        </div>
                        <!--- /.productFeatureAreaWrapper --->
                    </div>
                    <!--- /.productDetailItem --->
                </div>
                <!--- /.productDetailWrapper --->

            </div>
            <!--- /#region2 --->
        </div>
        <!--- /#contentOverlay --->
    </div>
    <!--- /#content --->
</div>
<!--- /#contentWrapper --->
