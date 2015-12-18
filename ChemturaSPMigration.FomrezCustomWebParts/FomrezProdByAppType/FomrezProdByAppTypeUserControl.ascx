<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FomrezProdByAppTypeUserControl.ascx.cs" Inherits="ChemturaSPMigration.FomrezCustomWebParts.FomrezProdByAppType.FomrezProdByAppTypeUserControl" %>


<link href="/Sites/Fomrez/Style Library/FormezCustomFiles/Styles/FomrezProdByAppType.css" rel="stylesheet" type="text/css" />

<div id="fomrezWrapper"  runat="server" class="fomrezAppDet">
<div id="productSelectorWrapper">
    <div class="productSelector">
        <h3>PRODUCTS</h3>
    </div>
    <!--- /.productSelector --->

    <div class="selectorResults">
        <div class="result">
            <table>
                <tbody>
                    <asp:Repeater ID="rprProduct" runat="server">
                        <HeaderTemplate>
                            <tr>
                                <th class="product">Product</th>
                                <th class="description">Description</th>
                                <th class="datasheet">Datasheet</th>
                                <th class="msds">(M)SDS</th>
                            </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td class="product"><a href='<%# GetURL(Eval("PageURL"))%>' title='<%# Eval("ProdName")%>'><%# Eval("ProdName")%></a></td>
                                <td class="description"><%# Eval("Description")%></td>
                                <td class="datasheet">

                                    <a href='<%# Eval("Datasheet")%>' target="_blank" title='<%# Eval("ProdName")%>'>
                                         <img src="/Sites/Fomrez/Style Library/FormezCustomFiles/Images/sm_pdf.jpg" alt='<%# Eval("ProdName")%>'></a>

                                </td>
                                <td class="msds">

                                    <a href='<%# Eval("MSDS")%>' target="_blank" title='<%# Eval("ProdName")%>'>
                                        <img src="/Sites/Fomrez/Style Library/FormezCustomFiles/Images/sm_pdf.jpg" alt='<%# Eval("ProdName")%>'></a></td>


                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>
    </div>
    <!--- /.selectorResults --->
</div>
</div>