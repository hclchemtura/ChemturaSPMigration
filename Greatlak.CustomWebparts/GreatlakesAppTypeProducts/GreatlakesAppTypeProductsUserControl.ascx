<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GreatlakesAppTypeProductsUserControl.ascx.cs" Inherits="Greatlak.CustomWebparts.GreatlakesAppTypeProducts.GreatlakesAppTypeProductsUserControl" %>
<div class="region" id="region5" runat="server" style="display: none">
    <div>
        <div>
            <div id="applicationProductListWrapper">
                <div class="title">
                    <h3 id="hprod" runat="server"></h3>
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
<div class="region" id="Div1" runat="server" style="display: none">
    <div>
        <div>
            <div id="applicationProductListWrapper1">
                <div class="title">
                    <h3 id="hProd1" runat="server"></h3>
                </div>
                <!--- /.productSelector --->
                <div class="productList">
                    <div class="result">
                        <asp:Repeater ID="Repeater1" runat="server">
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
<div class="region" id="Div2" runat="server" style="display: none">
    <div>
        <div>
            <div id="applicationProductListWrapper">
                <div class="title">
                    <h3 id="hProd2" runat="server"></h3>
                </div>
                <!--- /.productSelector --->
                <div class="productList">
                    <div class="result">
                        <asp:Repeater ID="Repeater2" runat="server">
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
<div class="region" id="Div3" runat="server" style="display: none">
    <div>
        <div>
            <div id="applicationProductListWrapper4">
                <div class="title">
                    <h3 id="hProd3" runat="server"></h3>
                </div>
                <!--- /.productSelector --->
                <div class="productList">
                    <div class="result">
                        <asp:Repeater ID="Repeater3" runat="server">
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