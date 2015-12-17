<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AnderolApplicationsUserControl.ascx.cs" Inherits="ChemturaSP.CustomWebParts.AnderolApplications.AnderolApplicationsUserControl" %>
<asp:Label  runat="server"></asp:Label>
<div id="contentWrapper" runat="server"> 
		<div id="content">
			<div id="contentOverlay">
				<div class="region" id="region1">
                    <div>
<div>

<div class="breadcrumbWrapper">
    <div class="breadcrumb" id="breadcrumbDiv" runat="server">
       <!-- <a title="Markets and Applications" href="/Markets_and_Applications">Markets and Applications</a> &#47; <a title="Aerospace & Defense" href="/Markets_and_Applications/Aerospace_&_Defense">Aerospace & Defense</a> &#47; <a title="Hydraulic Fluids" href="/Markets_and_Applications/Aerospace_&_Defense/Hydraulic_Fluids">Hydraulic Fluids</a>--->
    </div>
</div></div>
</div>
				</div> <!--- /#region1 --->
				<div class="region" id="region2">
				    <div>

    <div>

<div class="leftNavFilterMenuWrapper">
    <div class="leftNavFilterMenu" id="leftNavDiv" runat="server">
        <!--<ul>
            <li class="parent current"><a href="/Markets_and_Applications/Aerospace_&_Defense" title="Aerospace & Defense">Aerospace & Defense</a></li>
            <li class="current"><a href="/Markets_and_Applications/Aerospace_&_Defense/Hydraulic_Fluids" title="Hydraulic Fluids">Hydraulic Fluids</a></li>
            <li class=""><a href="/Markets_and_Applications/Aerospace_&_Defense/Performance_Compounds_&_Greases" title="Performance Compounds & Greases">Performance Compounds & Greases</a></li><li class=""><a href="/Markets_and_Applications/Aerospace_&_Defense/Specialty_Application_&_Performance_Fluids" title="Specialty Application & Performance Fluids">Specialty Application & Performance Fluids</a></li><li class=""><a href="/Markets_and_Applications/Aerospace_&_Defense/Turbine_&_Drivetrain_Fluids" title="Turbine & Drivetrain Fluids">Turbine & Drivetrain Fluids</a></li><li class=""><a href="/Markets_and_Applications/Aerospace_&_Defense/Weapons_Cleaner_&_Preservative_Lubes" title="Weapons Cleaner & Preservative Lubes">Weapons Cleaner & Preservative Lubes</a></li><li class="parent"><a href="/Markets_and_Applications/Industrial" title="Industrial">Industrial</a></li>
        </ul>-->
    </div>
</div>

</div>

</div>
				</div> <!--- /#region2 --->
				<div class="region" id="region3">
                    <div>


<div class="pageTitleWrapper">
    <div class="pageTitle" id="appTitleDiv" runat="server">
        <!--<h1>Hydraulic Fluids</h1>-->
    </div>
</div>



    <div>

<div class="vgnTextWrapper">
    <div class="vgnText" id="appSubTitleDiv" runat="server">
    
               <!-- <h2>
                    Hydraulic Fluids
                </h2>-->
                <!--<p>ROYCO® Hydraulic Fluids are engineered for the most rigorous of applications – the battlefield. With such credentials you can be sure that ROYCO® Hydraulic Fluids will perform for your aerospace and industrial hydraulic needs.* These fluids are additized to provide optimal anti-wear, corrosion, demulsibility, and oxidation performance across broad operating temperature ranges. For added reliability many of the ROYCO® Hydraulic Fluids are produced to meet or exceed the military’s cleanliness requirements for hydraulic fluids.</p>-->

    </div>
    <div id="appImgDiv" runat="server"></div>
</div>

</div>

</div>
				</div> <!--- /#region3 --->
				<div class="region" id="region4">
				    <div>

    <div id="appImgDiv1" runat="server"><!--<img alt="" src="images/HydraulicFluids.jpg">-->
</div>

</div>
				</div> <!--- /#region4 --->
                <div class="region" id="region5">
				    <div>

    <div>


<div id="productSelectorWrapper">
    <div class="productSelector">
        <h3>PRODUCTS</h3>
    </div> <!--- /.productSelector --->

    <div class="selectorResults">
        <div class="result">

            
        </div>
    </div> <!--- /.selectorResults --->
</div> <!--- /#productSelectorWrapper ---></div>

</div>
				</div> 
			</div> <!--- /#contentOverlay --->
		</div> <!--- /#content --->
	</div>