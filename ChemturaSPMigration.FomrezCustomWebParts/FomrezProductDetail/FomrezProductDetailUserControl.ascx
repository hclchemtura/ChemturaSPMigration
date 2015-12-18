<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FomrezProductDetailUserControl.ascx.cs" Inherits="ChemturaSPMigration.FomrezCustomWebParts.FomrezProductDetail.FomrezProductDetailUserControl" %>
<link media="screen and (min-width: 761px)" href="/sites/Fomrez/corporatev2/chemturav8/css/Fomrez-en-US/productDetail_desktop.css" rel="stylesheet">
<div id="content" class="rightcontainerFomrez">
			<div id="contentOverlay">
				 <!--- /#region1 --->
                <div class="region" id="region1">
                    <div>
<div>
    <div class="leftNavFilterMenuWrapper">
    <div class="leftNavFilterMenu" id="leftNavDiv" runat="server">
        <!--<ul>
            <li class="parent"><a href="/Markets_and_Applications/Adhesives" title="Adhesives">Adhesives</a></li><li class="parent">
            <a href="/Markets_and_Applications/Coatings" title="Coatings">Coatings</a></li><li class="parent">
            <a href="/Markets_and_Applications/Cast_Elastomers" title="Cast Elastomers">Cast Elastomers</a></li>
            <li class="parent current"><a href="/Markets_and_Applications/Foam" title="Foam">Foam</a></li>
            <li class="parent"><a href="/Markets_and_Applications/Pigments" title="Pigments">Pigments</a></li><li class="parent"><a href="/Markets_and_Applications/TPU" title="TPU">TPU</a></li>
        </ul>
-->
    </div>
</div>

</div>
</div>
				</div>
				<div id="region2" class="region">
				    <div>









<div class="productDetailWrapper">
    <div class="productDetail">
        <h1>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </h1>
        <h2>Overview</h2>
        <p>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </p>
        
                <h2>Technical Info</h2>
                <table class="productProperties">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>    
                </table>
                

    </div> <!--- /.productDetail --->
</div> <!--- /.productDetailWrapper --->
</div>
				</div> <!--- /#region2 --->
				<div id="region3" class="region">
                    <div>

















        <div class="productNavigation">
            <div class="contactButton">
                <a href="javascript:toggleDiv('ContactInfo');">
                    <img src="/sites/Fomrez/corporatev2/chemturav8/layout/Fomrez-en-US/btn_contactUsProduct.jpg">
                </a>
            </div>
            <div class="productNavFeature">
                <h3>Technical Documents</h3>
                    <ul>
                    
                        <li>
                            <a target="_blank" runat="server" id="msdslink" class="sm_pdf">
                                (M)SDS
                            </a>
                        </li>
                        
                            <li>
                                <a target="_blank" runat="server" id="tdslink" class="sm_pdf">
                                    Technical Data Sheet
                                </a>
                            </li>
                            

                    </ul>
                    
                </div>  <!-- /.productNavFeature (Tech docs) -->


                <div class="productNavFeature">
                    <h3>Applications</h3>
                    <ul>
                        
                                <li>
                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                </li>
                                
                                
                                
                    </ul>

                </div>
            </div>
        </div>   <!-- /.productNavigation -->
        


<style>
		.ContactInfo {
			z-index: 200;
			width: 100%;
			height:500px;
			background: url("/sites/Fomrez/corporatev2/chemturav8/layout/Fomrez-en-US/menu-background.png") repeat scroll 0 0 transparent;
			color: #fff;
			position: absolute;
			left: 0;
			top:0;
			border-bottom: 8px solid #185f8d;
			*background: #444444;
		}
		.ContactInfo h2 {
			font-size: 20px;
			color: #fff;
			width: 100%;
			text-align:center;
			margin:0;
			padding: 15px 0;
		}
		.ContactInfo .infoWrapper {
			width: 940px;
			margin: 0 auto;
		}
		.ContactInfo .info {
			margin: 2% 10%;
			width: 30%;
			height: 85px;
			float:left;
		}
		.ContactInfo h4 {
			color:#009ADA;
			font-size: 16px;
			font-weight:bold;
			margin: 8px 0 4px 0;
			padding: 0 0 4px 0;
			border-bottom: 2px solid #fff;
		}
		.ContactInfo p {
			float:left;
			width: 100%;
		}
        .ContactInfo .closeButton {
            text-align:center;
        }
		.ContactInfo .close {
			text-decoration: none;
			font-weight:bold;
			font-size: 14px;
			line-height: 30px;
			padding: 8px 20px;
			*padding: 20px;
			background: #6EC82D;
			color: #fff;
			-moz-border-radius: 8px;
			-webkit-border-radius: 8px;
			-khtml-border-radius: 8px;
			border-radius: 8px;
		}
		.ContactInfo .close:hover {
			background: #009ADA;
		}
	</style>


<!--- SHOW/HIDE VIDEO DIV --->
<script type="text/javascript">
function toggleDiv(divId) {
   $("#"+divId).toggle();
}
</script>

<div style="display:none;" id="ContactInfo" class="ContactInfo">
    <h2>Fomrez Contact Information</h2>
    <div class="infoWrapper">
        <div class="info">
            <h4>United States &amp; Canada</h4>
            <p>Tel: +1.973.887.7410<br>Customer Service: +1.203.573.4595<br>Toll Free:+1.888.263.3765</p>
        </div>
        <div class="info">
            <h4>Asia and the Pacific</h4>
            <p>Tel: +86-21-3866 6688</p>
          </div>
        <div class="info">
            <h4>Europe, Middle East, &amp; Africa</h4>
            <p>Tel: +31.43.352.41.90</p>
        </div>
        <div class="info">
            <h4>Latin America South</h4>
            <p>Tel: +55-19-3522-5000<br>Customer Care: 0800 970-6082</p>
        </div>
        <div class="info">
            <h4>Mexico &amp; Latin America North</h4>
            <p>Tel: (52 55) 5010 6549<br>Tel: (52 55) 5010 6581<br>Tel: (52 55) 5010 6611</p>
        </div>
        <div class="info">&nbsp;</div>
        <p class="closeButton"><a title="Contact Information" href="javascript:toggleDiv('ContactInfo');" class="close">Close</a></p>
    </div>
</div>
</div>
				</div> <!--- /#region3 --->
				<div id="region4" class="region">
				    <div>




</div>
				</div> <!--- /#region4 --->
                <div id="region5" class="region">
				    <div>




</div>
				</div> <!--- /#region5 --->
                <div id="region6" class="region">
				    <div>




</div>
				</div> <!--- /#region6 --->
                <div id="region7" class="region">
				    <div>




</div>
				</div> <!--- /#region7 --->
                <div id="region8" class="region">
				    <div>




</div>
				</div> <!--- /#region8 --->
                <div id="region9" class="region">
				    <div>




</div>
				</div> <!--- /#region8 --->
                <div id="region10" class="region">
				    <div>




</div>
				</div> <!--- /#region8 --->
			</div>
