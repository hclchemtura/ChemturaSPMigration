<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AnderolNewsUserControl.ascx.cs" Inherits="ChemturaSP.CustomWebParts.AnderolNews.AnderolNewsUserControl" %>
<div class="literature_librabry" id="content">
    <div id="contentOverlay">
        <div class="region" id="region1">
            <div>
                <div>
                    <div class="breadcrumbWrapper">
                        <div class="breadcrumb">
                            <a title="Literature Library" href="#">Literature Library</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="region" id="region2">
            <div>
                <div>
                    <div class="leftNavFilterMenuWrapper">
                        <div class="leftNavFilterMenu">
                            <ul>
                            </ul>
                            &#160;
                        </div>
                        &#160;
                    </div>
                </div>
            </div>
            &#160;
        </div>
        <div class="region" id="region3">
            <div>
                <div class="pageTitleWrapper">
                    <div class="pageTitle">
                        <h1>Literature Library</h1>
                    </div>
                </div>
                <div>
                    <div class="libraryWrapper" id="AnderolNews" runat="server">
                       <!-- <div class="libraryItem">
                            <div class="icon">
                                <a title="Anderol Grease Selection Guide" href="http://issuu.com/chemtura/docs/anderol_grease_selection_guide_-_2012?mode=window&amp;viewMode=doublePage" target="_blank">
                                    <img alt="Anderol Grease Selection Guide" src="/sites/anderol/corporatev2/chemturav8/layout/Anderol-en-US/icon_img.png" />
                                </a>
                            </div>
                            <div class="title">
                                <a title="Anderol Grease Selection Guide" href="http://issuu.com/chemtura/docs/anderol_grease_selection_guide_-_2012?mode=window&amp;viewMode=doublePage" target="_blank">Anderol Grease Selection Guide </a>
                            </div>
                            <p>Select the right grease for your application.</p>
                        </div>
                        <div class="libraryItem">
                            <div class="icon">
                                <a title="Anderol Specialty Lubricants - Industrial Products Introduction" href="http://issuu.com/chemtura/docs/anderol_specialty_lubricants_-_industrial_products?mode=window&amp;viewMode=doublePage" target="_blank">
                                    <img alt="Anderol Specialty Lubricants - Industrial Products Introduction" src="/sites/anderol/corporatev2/chemturav8/layout/Anderol-en-US/icon_img.png" />
                                </a>
                            </div>
                            <div class="title">
                                <a title="Anderol Specialty Lubricants - Industrial Products Introduction" href="http://issuu.com/chemtura/docs/anderol_specialty_lubricants_-_industrial_products?mode=window&amp;viewMode=doublePage" target="_blank">Anderol Specialty Lubricants - Industrial Products Introduction </a>
                            </div>
                            <p>An introduction to Anderol® products</p>
                        </div>
                        <div class="libraryItem">
                            <div class="icon">
                                <a title="Product Brochure - Anderol Industrial Lubricants" href="http://issuu.com/chemtura/docs/anderol_industrial_-_2012?mode=window&amp;viewMode=doublePage" target="_blank">
                                    <img alt="Product Brochure - Anderol Industrial Lubricants" src="/sites/anderol/corporatev2/chemturav8/layout/Anderol-en-US/icon_img.png" />
                                </a>
                            </div>
                            <div class="title">
                                <a title="Product Brochure - Anderol Industrial Lubricants" href="http://issuu.com/chemtura/docs/anderol_industrial_-_2012?mode=window&amp;viewMode=doublePage" target="_blank">Product Brochure - Anderol Industrial Lubricants </a>
                            </div>
                            <p>2012 Anderol product brochure</p>
                        </div>
                        <div class="libraryItem">
                            <div class="icon">
                                <a title="Product Brochure - Royco Aerospace &amp; Defense Fluids" href="http://issuu.com/chemtura/docs/royco_aerospace___defense_-_2012?mode=window&amp;viewMode=doublePage" target="_blank">
                                    <img alt="Product Brochure - Royco Aerospace &amp; Defense Fluids" src="/sites/anderol/corporatev2/chemturav8/layout/Anderol-en-US/icon_img.png" />
                                </a>
                            </div>
                            <div class="title">
                                <a title="Product Brochure - Royco Aerospace &amp; Defense Fluids" href="http://issuu.com/chemtura/docs/royco_aerospace___defense_-_2012?mode=window&amp;viewMode=doublePage" target="_blank">Product Brochure - Royco Aerospace &amp; Defense Fluids </a>
                            </div>
                            <p>2012 Royco product brochure</p>
                        </div>
                        <div class="libraryItem">
                            <div class="icon">
                                <a title="Products for Metals &amp; Minerals Industries" href="http://issuu.com/chemtura/docs/anderol_specialty_lubricants_-_products_for_metals?mode=window&amp;viewMode=doublePage" target="_blank">
                                    <img alt="Products for Metals &amp; Minerals Industries" src="/sites/anderol/corporatev2/chemturav8/layout/Anderol-en-US/icon_img.png" />
                                </a>
                            </div>
                            <div class="title">
                                <a title="Products for Metals &amp; Minerals Industries" href="http://issuu.com/chemtura/docs/anderol_specialty_lubricants_-_products_for_metals?mode=window&amp;viewMode=doublePage" target="_blank">Products for Metals &amp; Minerals Industries </a>
                            </div>
                        </div>
                        <div class="libraryItem">
                            <div class="icon">
                                <a title="Products for PowerGen Industry" href="http://issuu.com/chemtura/docs/anderol_specialty_lubricants_-_products_for_powerg?mode=window&amp;viewMode=doublePage" target="_blank">
                                    <img alt="Products for PowerGen Industry" src="/sites/anderol/corporatev2/chemturav8/layout/Anderol-en-US/icon_img.png" />
                                </a>
                            </div>
                            <div class="title">
                                <a title="Products for PowerGen Industry" href="http://issuu.com/chemtura/docs/anderol_specialty_lubricants_-_products_for_powerg?mode=window&amp;viewMode=doublePage" target="_blank">Products for PowerGen Industry </a>
                            </div>
                        </div>
                        <div class="libraryItem">
                            <div class="icon">
                                <a title="Royco Aerospace &amp; Defense Fluids Reference Guide" href="http://issuu.com/chemtura/docs/royco_aerospace___defense_fluids_reference_guide_-?mode=window&amp;viewMode=doublePage" target="_blank">
                                    <img alt="Royco Aerospace &amp; Defense Fluids Reference Guide" src="/sites/anderol/corporatev2/chemturav8/layout/Anderol-en-US/icon_img.png" />
                                </a>
                            </div>
                            <div class="title">
                                <a title="Royco Aerospace &amp; Defense Fluids Reference Guide" href="http://issuu.com/chemtura/docs/royco_aerospace___defense_fluids_reference_guide_-?mode=window&amp;viewMode=doublePage" target="_blank">Royco Aerospace &amp; Defense Fluids Reference Guide </a>
                            </div>
                            <p>Royco reference guide</p>
                        </div>-->
                    </div>
                </div>
            </div>
        </div>
        <div class="region" id="region4">
            <div>
            </div>
        </div>
        <div class="region" id="region5">
            <div>
            </div>
        </div>
        <div class="region" id="region6">
            <div>
            </div>
        </div>
        <div class="region" id="region7">
            <div>
            </div>
        </div>
        <div class="region" id="region8">
            <div>
            </div>
        </div>
        <div class="region" id="region9">
            <div>
            </div>
            &#160;
        </div>
        <div class="region" id="region10">
            <div>
            </div>
            &#160;
        </div>
    </div>
</div>

