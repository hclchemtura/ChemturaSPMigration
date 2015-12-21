<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GreatlakesIndustriesAppProductUserControl.ascx.cs" Inherits="Greatlak.CustomWebparts.GreatlakesIndustriesAppProduct.GreatlakesIndustriesAppProductUserControl" %>
<div id="contentWrapper">
    <div id="content" class="industryWe">
        <div id="contentOverlay">
            <div class="region" id="region1">
                <div>
                    <div>
                        <div class="breadcrumbWrapper">
                            <div class="breadcrumb" id="appBreadcrumb" runat="server">
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
                                <!--left navigation -->

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
                            <%--<h1>Agrochemicals</h1>--%>
                        </div>
                    </div>

                    <div>

                        <div class="vgnTextWrapper">
                            <div class="vgnText" id="pgDesc" runat="server">
                                <%-- <p>Bromine and brominated intermediates are used in the synthesis and production of many agrochemical products including insecticides, fungicides and herbicides.</p>--%>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
            <!--- /#region3 --->
            <div class="region" id="region4">
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
            <div class="region region5" id="region5" runat="server">
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
                            <!--- /.selectorResults --->
                        </div>
                        <!--- /#productSelectorWrapper --->
                    </div>

                </div>
            </div>
            <!--- /#region5 --->
            <div class="region region5" id="region6" runat="server" style="display: none">
                <div>
                    <div>
                        <div id="applicationProductListWrapper1">
                            <div class="title">
                                <h3>Printed Wiring Board Products</h3>
                            </div>
                            <!--- /.productSelector --->
                            <div class="productList">
                                <div class="result">
                                    <asp:Repeater ID="rptPrinted" runat="server">
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
                                                    <asp:HyperLink ID="hypProd1" runat="server" NavigateUrl='<%# GetUrl(Eval("PageURL")) %>'
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
                            <!--- /.selectorResults --->
                        </div>
                        <!--- /#productSelectorWrapper --->
                    </div>

                </div>
            </div>
            <!-- region6-->
            <div class="region region5" id="region7" runat="server" style="display: none">
                <div>
                    <div>
                        <div id="applicationProductListWrapper2">
                            <div class="title">
                                <h3>Connectors Products</h3>
                            </div>
                            <!--- /.productSelector --->
                            <div class="productList">
                                <div class="result">
                                    <asp:Repeater ID="rptConnectors" runat="server">
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
                                                    <asp:HyperLink ID="hypProd1" runat="server" NavigateUrl='<%# GetUrl(Eval("PageURL")) %>'
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
                            <!--- /.selectorResults --->
                        </div>
                        <!--- /#productSelectorWrapper --->
                    </div>

                </div>
            </div>
            <!-- region7-->
        </div>
        <!--- /#contentOverlay --->
    </div>
    <!--- /#content --->
</div>
<!--- /#contentWrapper --->
