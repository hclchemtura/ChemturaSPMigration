<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductsApplicationTypesUserControl.ascx.cs" Inherits="ChemturaSPMigration.FomrezCustomWebParts.ProductsApplicationTypes.ProductsApplicationTypesUserControl" %>

<link href="/Sites/Fomrez/Style Library/FormezCustomFiles/Styles/FomrezAppTypes.css" rel="stylesheet" type="text/css" />

<div class="region" id="region3">
<div><div>
    
<asp:Repeater ID="rprProdAppList" runat="server">
            <ItemTemplate>
               
<div class="featureAreaStandardWrapper">
                        <div class="featureAreaStandardItem">                            
                                    <div class="image">                                        
                                                <a href='/sites/fomrez/Pages/ProdAppDetail.aspx?Prod=<%# Eval("Title")%>' target="_blank">
                                                    <img src='<%# Eval("ApplicationImage")%>'/>
                                                </a>                                                
                                    </div>  <!--- /.image --->
                                    
                                    <div class="title">                                        
                                                <a href='/sites/fomrez/Pages/ProdAppDetail.aspx?Prod=<%# Eval("Title")%>' target="_blank">
                                                    <h2><%# Eval("Title")%></h2>
                                                </a>                                                                                        
                                    </div>                                    

                            <div class="body">
                                <!--- Load the body of the text area. --->
                                <p><%# Eval("Description")%></p>
                            </div>
                            
                        </div> <!--- /.featureAreaLearnMoreItem --->
                    </div> <!--- /.featureAreaLearnMoreWrapper --->
                 
            </ItemTemplate>
        </asp:Repeater>
</div></div>
				</div> <!--- /#region3 --->
				