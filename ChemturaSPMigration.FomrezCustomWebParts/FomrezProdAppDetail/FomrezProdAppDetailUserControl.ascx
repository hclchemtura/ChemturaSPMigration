<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FomrezProdAppDetailUserControl.ascx.cs" Inherits="ChemturaSPMigration.FomrezCustomWebParts.FomrezProdAppDetail.FomrezProdAppDetailUserControl" %>

<link href="/Sites/Fomrez/Style Library/FormezCustomFiles/Styles/FomrezProdAppDetail.css" rel="stylesheet" type="text/css" />

<div class="region" id="region2">
    <div>
        <div>
            <div class="leftNavFilterMenuWrapper">
                <div class="leftNavFilterMenu">
                    <ul>

                        
                        <asp:Repeater ID="rprAppType" runat="server">
                            <ItemTemplate>
                                <li class="parent current"><a href='/sites/fomrez/Pages/ProdAppDetail.aspx?Prod=<%# Eval("Title")%>' title='<%# Eval("Title")%>'><%# Eval("Title")%></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--- /#region2 --->
<div class="region" id="region3">
    <div>
        <div class="pageTitleWrapper">
            <div class="pageTitle">
                <h1>
                    <asp:Literal ID="lilTitle" runat="server"></asp:Literal></h1>
            </div>
        </div>
        <div>
            <div class="vgnTextWrapper">
                <div class="vgnText">
                    <p>
                        <asp:Literal ID="lilDeatil" runat="server"></asp:Literal></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--- /#region3 --->
<div class="region" id="region4">
    <div>
        <div>
            <asp:Image ID="imgProd" runat="server" />
        </div>
    </div>
</div>
<!--- /#region4 --->
