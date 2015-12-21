<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GreatlakesIndustriesAppUserControl.ascx.cs" Inherits="Greatlak.CustomWebparts.GreatlakesIndustriesApp.GreatlakesIndustriesAppUserControl" %>
<div id="contentWrapper">
    <div id="content" class="industryWe">
        <div id="contentOverlay">
            <div class="region" id="region1">
                <div>
                    <div>
                        <div class="breadcrumbWrapper">
                            <div class="breadcrumb" id="appBreadcrumb" runat="server">
                                <%-- <a title="Industries We Serve" href="/Industries_We_Serve">Industries We Serve</a> &#47; <a title="Agriculture" href="/Industries_We_Serve/Agriculture">Agriculture</a>--%>
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
                                <%--  <ul>
                                    <li class='T1 current'><a href='/Industries_We_Serve' title='Industries We Serve'>Industries We Serve</a></li>
                                    <li class="T2 parent current"><a href="/Industries_We_Serve/Agriculture" title="Agriculture">Agriculture</a></li>
                                    <li class="T3"><a href="/Industries_We_Serve/Agriculture/Agrochemicals" title="Agrochemicals">Agrochemicals</a></li>
                                    <li class="T3"><a href="/Industries_We_Serve/Agriculture/Commodity_Fumigation" title="Commodity Fumigation">Commodity Fumigation</a></li>
                                    <li class="T3"><a href="/Industries_We_Serve/Agriculture/Soil_Fumigation" title="Soil Fumigation">Soil Fumigation</a></li>
                                    <li class="T2 parent"><a href="/Industries_We_Serve/Biocide" title="Biocide">Biocide</a></li>
                                    <li class="T2 parent"><a href="/Industries_We_Serve/Building_and_Construction" title="Building and Construction">Building and Construction</a></li>
                                    <li class="T2 parent"><a href="/Industries_We_Serve/Electrical_and_Electronics" title="Electrical and Electronics">Electrical and Electronics</a></li>
                                    <li class="T2 parent"><a href="/Industries_We_Serve/Energy" title="Energy">Energy</a></li>
                                    <li class="T2 parent"><a href="/Industries_We_Serve/Fine_Chemicals_and_Pharmaceuticals" title="Fine Chemicals and Pharmaceuticals">Fine Chemicals and Pharmaceuticals</a></li>
                                    <li class="T2 parent"><a href="/Industries_We_Serve/Polymerization_and_Polymer_Modification" title="Polymerization and Polymer Modification">Polymerization and Polymer Modification</a></li>
                                    <li class="T2 parent"><a href="/Industries_We_Serve/Transportation" title="Transportation">Transportation</a></li>
                                </ul>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--- /#region2 --->
            <div class="region" id="region3">
                <div>
                    <div class="pageTitleWrapper">
                        <div class="pageTitle" id="pgTitle" runat="server">
                            <%--<h1>Agriculture</h1>--%>
                        </div>
                    </div>

                    <div>
                        <div class="vgnTextWrapper">
                            <div class="vgnText" id="pgDesc" runat="server">
                                <%-- <p>A variety of brominated solutions which directly improve the yield and provide protection against the unwanted importation of pests for a variety of agricultural products, or are used in the production of agrochemical intermediates.</p>

                                <h3><a href="/Industries_We_Serve/Agriculture/Agrochemicals">Agrochemicals</a></h3>

                                <p>Bromine and brominated intermediates are used in the synthesis and production of many agrochemical products including insecticides, fungicides and herbicides.</p>

                                <h3><a href="/Industries_We_Serve/Agriculture/Commodity_Fumigation">Commodity Fumigation</a></h3>

                                <p>Fumigants based on methyl bromide for the control of stored product pests, wood destroying insects, and quarantine pests in a wide variety of food and non-food commodities.</p>

                                <h3><a href="/Industries_We_Serve/Agriculture/Soil_Fumigation">Soil Fumigation</a></h3>

                                <p>Fumigants based on methyl bromide and chloropicrin for the control of nematodes, insects, diseases, and weeds in soil prior to planting to greatly improve yield and quality.</p>--%>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
            <!--- /#region3 --->
            <div class="region" id="region4">
                <div>
                    <div id="pgImg" runat="server">
                        <%-- <img alt="" src="/deployedfiles/ChemturaV8/GreatLakes/Markets & Applicaitons/gls-agriculture.jpg">--%>
                    </div>

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
            <div class="region region5" id="region5"  runat="server" style="display:none">
                <div>
                    <div>
                        <div id="applicationProductListWrapper">
                            <div class="title">
                                <h3>Products</h3>
                            </div>
                            <!--- /.productSelector --->

                            <div class="productList">
                                <div class="result">
                                     <asp:Repeater ID="rptProductTab" runat="server">
                                        <HeaderTemplate>
                                            <table>
                                                <tr>
                                                    <th class="product">Product</th>
                                                    <th class="description">Description</th>
                                                    <th class="datasheet">Datasheet</th>
                                                    <th class="msds">(M)SDS</th>
                                                </tr>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td bgcolor="#FFFFFF" class="product">
                                                    <asp:HyperLink ID="hypProd1" runat="server" NavigateUrl='<%#  GetUrl(Eval("PageURL")) %>'
                                                        Text='<%# Eval("ProdName") %>'></asp:HyperLink>
                                                </td>
                                                <td bgcolor="#FFFFFF" class="description">
                                                    <asp:Label runat="server" ID="Label2" Text='<%# Eval("Description") %>' />
                                                </td>
                                                <td bgcolor="#FFFFFF" class="datasheet">
                                                    <a href='<%# GetPDF(Eval("Datasheet")) %>'>
                                                        <img alt='<%# Eval("ProdName") %>' src='/sites/greatlakes/corporatev2/chemturav8/layout/GreatLakes-en-US/icon_pdf.png'></img></a>
                                                </td>
                                                <td bgcolor="#FFFFFF" class="msds">
                                                    <a href='<%# Eval("MSDS") %>'>
                                                        <img alt='<%# Eval("ProdName") %>' src='/sites/greatlakes/corporatev2/chemturav8/layout/GreatLakes-en-US/icon_htm.png'></img></a>
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
            <!--- /#region5 --->
        </div>
        <!--- /#contentOverlay --->
    </div>
    <!--- /#content --->
</div>
<!--- /#contentWrapper --->
