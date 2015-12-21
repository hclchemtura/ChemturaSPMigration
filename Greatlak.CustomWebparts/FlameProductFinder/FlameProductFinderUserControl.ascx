<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FlameProductFinderUserControl.ascx.cs" Inherits="Greatlak.CustomWebparts.FlameProductFinder.FlameProductFinderUserControl" %>
<script type="text/javascript" src="/sites/greatlakes/Style Library/CustomFiles/Scripts/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/Sites/greatlakes/Style Library/CustomFiles/Scripts/jquery.selectbox-0.1.3.js"></script>





<div id="productSelectorWrapper">
    <div class="productSelector">
        <h3>FIND THE RIGHT PRODUCT</h3>
        <!--<input id="searchText" type="text" onclick="if(this.value=='Search'){this.value = '';}" value="Search" />-->
        <input id="searchText" onfocus="if (this.value=='Search') this.value = ''" onblur="if (this.value=='') this.value = 'Search'" type="text" maxlength="80" value="Search">
        <h4>Application</h4>
        <%--<asp:DropDownList ID="ddlApplication" runat="server" CssClass="pfSelect">
            <asp:ListItem Text="" Value="0" />
        </asp:DropDownList>--%>

        <select class="pfSelect" id="Application" name="Application">
            <option value=""></option>
            <option value="/Application/Adhesive, Coating &amp; Sealant/">Adhesive, Coating &amp; Sealant</option>
            <option value="/Application/Cabinetry and Office Machine Housings/">Cabinetry and Office Machine Housings</option>
            <option value="/Application/Consumer Products/">Consumer Products</option>
            <option value="/Application/Conveyor Belt/">Conveyor Belt</option>
            <option value="/Application/EPS Insulation/">EPS Insulation</option>
            <option value="/Application/Electrical Connector/">Electrical Connector</option>
            <option value="/Application/Flexible Polyurethane Foam/">Flexible Polyurethane Foam</option>
            <option value="/Application/Furniture Foam/">Furniture Foam</option>
            <option value="/Application/PVC Calendar Sheet/">PVC Calendar Sheet</option>
            <option value="/Application/Printed Circuit Board/">Printed Circuit Board</option>
            <option value="/Application/Rigid PU Foam Insulation/">Rigid PU Foam Insulation</option>
            <option value="/Application/Roofing Membrane &amp; Flooring/">Roofing Membrane &amp; Flooring</option>
            <option value="/Application/Textile Backcoating/">Textile Backcoating</option>
            <option value="/Application/Under the Hood/">Under the Hood</option>
            <option value="/Application/Wire &amp; Cable/">Wire &amp; Cable</option>
            <option value="/Application/XPS Insulation Sheet/">XPS Insulation Sheet</option>
        </select>

        <h4>Market</h4>
        <%--<asp:DropDownList ID="ddlHydroxyl1s" runat="server" CssClass="pfSelect">
            <asp:ListItem Text="" Value="0" />
        </asp:DropDownList>--%>
        <select class="pfSelect" id="Market" name="Market">
            <option value=""></option>
            <option value="/Market/Building &amp; Construction/">Building &amp; Construction</option>
            <option value="/Market/Electrical &amp; Electronics/">Electrical &amp; Electronics</option>
            <option value="/Market/Transportation/">Transportation</option>
        </select>
        <select class="pfSelect" id="Market_1" name="Market_1" style="display: none;">
            <option value=""></option>
            <option value="/Market/Building &amp; Construction/Comfort Foam/">Comfort Foam</option>
            <option value="/Market/Building &amp; Construction/Comfort Foam/">Comfort Foam</option>
            <option value="/Market/Building &amp; Construction/Comfort Foam/">Comfort Foam</option>
            <option value="/Market/Building &amp; Construction/Comfort Foam/">Comfort Foam</option>
            <option value="/Market/Building &amp; Construction/Comfort Foam/">Comfort Foam</option>
            <option value="/Market/Building &amp; Construction/Comfort Foam/">Comfort Foam</option>
            <option value="/Market/Building &amp; Construction/Comfort Foam/">Comfort Foam</option>
            <option value="/Market/Building &amp; Construction/Comfort Foam/">Comfort Foam</option>
            <option value="/Market/Building &amp; Construction/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Building &amp; Construction/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Building &amp; Construction/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Building &amp; Construction/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Building &amp; Construction/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Building &amp; Construction/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Building &amp; Construction/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Building &amp; Construction/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Building &amp; Construction/Insulation/">Insulation</option>
            <option value="/Market/Building &amp; Construction/Insulation/">Insulation</option>
            <option value="/Market/Building &amp; Construction/Insulation/">Insulation</option>
            <option value="/Market/Building &amp; Construction/Insulation/">Insulation</option>
            <option value="/Market/Building &amp; Construction/Insulation/">Insulation</option>
            <option value="/Market/Building &amp; Construction/Insulation/">Insulation</option>
            <option value="/Market/Building &amp; Construction/Insulation/">Insulation</option>
            <option value="/Market/Building &amp; Construction/Insulation/">Insulation</option>
            <option value="/Market/Building &amp; Construction/Insulation/">Insulation</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Other Building Materials/">Other Building Materials</option>
            <option value="/Market/Building &amp; Construction/Wire &amp; Cable/">Wire &amp; Cable</option>
            <option value="/Market/Building &amp; Construction/Wire &amp; Cable/">Wire &amp; Cable</option>
            <option value="/Market/Building &amp; Construction/Wire &amp; Cable/">Wire &amp; Cable</option>
            <option value="/Market/Building &amp; Construction/Wire &amp; Cable/">Wire &amp; Cable</option>
            <option value="/Market/Building &amp; Construction/Wire &amp; Cable/">Wire &amp; Cable</option>
            <option value="/Market/Electrical &amp; Electronics/Electrical Housing/">Electrical Housing</option>
            <option value="/Market/Electrical &amp; Electronics/Electrical Housing/">Electrical Housing</option>
            <option value="/Market/Electrical &amp; Electronics/Electrical Housing/">Electrical Housing</option>
            <option value="/Market/Electrical &amp; Electronics/Electrical Housing/">Electrical Housing</option>
            <option value="/Market/Electrical &amp; Electronics/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Electrical &amp; Electronics/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Electrical &amp; Electronics/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Electrical &amp; Electronics/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Electrical &amp; Electronics/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Electrical &amp; Electronics/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Electrical &amp; Electronics/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Electrical &amp; Electronics/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Electrical &amp; Electronics/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Electrical &amp; Electronics/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Electrical &amp; Electronics/Electrical Internal Component/">Electrical Internal Component</option>
            <option value="/Market/Electrical &amp; Electronics/Wire &amp; Cable/">Wire &amp; Cable</option>
            <option value="/Market/Electrical &amp; Electronics/Wire &amp; Cable/">Wire &amp; Cable</option>
            <option value="/Market/Electrical &amp; Electronics/Wire &amp; Cable/">Wire &amp; Cable</option>
            <option value="/Market/Electrical &amp; Electronics/Wire &amp; Cable/">Wire &amp; Cable</option>
            <option value="/Market/Electrical &amp; Electronics/Wire &amp; Cable/">Wire &amp; Cable</option>
            <option value="/Market/Electrical &amp; Electronics/Wire &amp; Cable/">Wire &amp; Cable</option>
            <option value="/Market/Transportation/Automotive/">Automotive</option>
            <option value="/Market/Transportation/Automotive/">Automotive</option>
            <option value="/Market/Transportation/Automotive/">Automotive</option>
            <option value="/Market/Transportation/Automotive/">Automotive</option>
            <option value="/Market/Transportation/Automotive/">Automotive</option>
            <option value="/Market/Transportation/Automotive/">Automotive</option>
            <option value="/Market/Transportation/Automotive/">Automotive</option>
            <option value="/Market/Transportation/Automotive/">Automotive</option>
            <option value="/Market/Transportation/Automotive/">Automotive</option>
            <option value="/Market/Transportation/Automotive/">Automotive</option>
            <option value="/Market/Transportation/Automotive/">Automotive</option>
            <option value="/Market/Transportation/Automotive/">Automotive</option>
            <option value="/Market/Transportation/Automotive/">Automotive</option>
            <option value="/Market/Transportation/Automotive/">Automotive</option>
            <option value="/Market/Transportation/Automotive/">Automotive</option>
            <option value="/Market/Transportation/Automotive/">Automotive</option>
            <option value="/Market/Transportation/Aviation/">Aviation</option>
            <option value="/Market/Transportation/Aviation/">Aviation</option>
            <option value="/Market/Transportation/Aviation/">Aviation</option>
            <option value="/Market/Transportation/Aviation/">Aviation</option>
            <option value="/Market/Transportation/Aviation/">Aviation</option>
            <option value="/Market/Transportation/Aviation/">Aviation</option>
            <option value="/Market/Transportation/Aviation/">Aviation</option>
            <option value="/Market/Transportation/Aviation/">Aviation</option>
            <option value="/Market/Transportation/Aviation/">Aviation</option>
            <option value="/Market/Transportation/Aviation/">Aviation</option>
            <option value="/Market/Transportation/Aviation/">Aviation</option>
            <option value="/Market/Transportation/Aviation/">Aviation</option>
            <option value="/Market/Transportation/Public and Mass Transit/">Public and Mass Transit</option>
            <option value="/Market/Transportation/Public and Mass Transit/">Public and Mass Transit</option>
            <option value="/Market/Transportation/Public and Mass Transit/">Public and Mass Transit</option>
            <option value="/Market/Transportation/Public and Mass Transit/">Public and Mass Transit</option>
            <option value="/Market/Transportation/Public and Mass Transit/">Public and Mass Transit</option>
            <option value="/Market/Transportation/Public and Mass Transit/">Public and Mass Transit</option>
            <option value="/Market/Transportation/Public and Mass Transit/">Public and Mass Transit</option>
            <option value="/Market/Transportation/Public and Mass Transit/">Public and Mass Transit</option>
            <option value="/Market/Transportation/Public and Mass Transit/">Public and Mass Transit</option>
            <option value="/Market/Transportation/Public and Mass Transit/">Public and Mass Transit</option>
            <option value="/Market/Transportation/Public and Mass Transit/">Public and Mass Transit</option>
            <option value="/Market/Transportation/Public and Mass Transit/">Public and Mass Transit</option>
            <option value="/Market/Transportation/Public and Mass Transit/">Public and Mass Transit</option>
            <option value="/Market/Transportation/Public and Mass Transit/">Public and Mass Transit</option>
        </select>
        <h4>Polymer</h4>
        <%-- <asp:DropDownList ID="ddlType" runat="server" CssClass="pfSelect">
            <asp:ListItem Text="" Value="0" />
        </asp:DropDownList>--%>
        <select class="pfSelect" id="Polymer" name="Polymer">
            <option value=""></option>
            <option value="/Polymer/Acrylics/">Acrylics</option>
            <option value="/Polymer/Acrylonitrile-butadiene-styrene (ABS)/">Acrylonitrile-butadiene-styrene (ABS)</option>
            <option value="/Polymer/Cellulosic resins/">Cellulosic resins</option>
            <option value="/Polymer/Epoxy Resins/">Epoxy Resins</option>
            <option value="/Polymer/Expandable polystyrene (EPS)/">Expandable polystyrene (EPS)</option>
            <option value="/Polymer/Extruded polystyrene (XPS)/">Extruded polystyrene (XPS)</option>
            <option value="/Polymer/Flexible polyurethane/">Flexible polyurethane</option>
            <option value="/Polymer/High Impact Polystyrene (HIPS)/">High Impact Polystyrene (HIPS)</option>
            <option value="/Polymer/High temperature polyamide/">High temperature polyamide</option>
            <option value="/Polymer/Latex/">Latex</option>
            <option value="/Polymer/Nitrocellulose lacquers/">Nitrocellulose lacquers</option>
            <option value="/Polymer/Phenolic/">Phenolic</option>
            <option value="/Polymer/Polyamide/">Polyamide</option>
            <option value="/Polymer/Polybutylene  terephtalate (PBT)/">Polybutylene  terephtalate (PBT)</option>
            <option value="/Polymer/Polycarbonate / ABS (PC / ABS)/">Polycarbonate / ABS (PC / ABS)</option>
            <option value="/Polymer/Polycarbonate (PC)/">Polycarbonate (PC)</option>
            <option value="/Polymer/Polyethylene (PE)/">Polyethylene (PE)</option>
            <option value="/Polymer/Polyethylene terephthalate (PET)/">Polyethylene terephthalate (PET)</option>
            <option value="/Polymer/Polyphenylene oxide/HIPS (PPO/HIPS)/">Polyphenylene oxide/HIPS (PPO/HIPS)</option>
            <option value="/Polymer/Polypropylene (PP)/">Polypropylene (PP)</option>
            <option value="/Polymer/Polyvinylchloride (PVC)/">Polyvinylchloride (PVC)</option>
            <option value="/Polymer/Reactive for resin manufacture/">Reactive for resin manufacture</option>
            <option value="/Polymer/Rigid polyurethane/">Rigid polyurethane</option>
            <option value="/Polymer/Synthetic Rubber/">Synthetic Rubber</option>
            <option value="/Polymer/Unsaturated polyester (additive)/">Unsaturated polyester (additive)</option>
            <option value="/Polymer/Unsaturated polyester (reactive)/">Unsaturated polyester (reactive)</option>
        </select>


        <input type="button" id="reset" name="reset" onclick="resetProductsearch()" value="Reset" title="Reset" />
    </div>
    <div class="selectorResults" style="display: none">
        <h3>Results</h3>
        <p class='pagination'></p>
        <div class="resultItems">
        </div>
    </div>
    <!--- /.selectorResults --->
    <div class="allProducts">
        <h3>All Products</h3>
        <asp:Repeater ID="rprProduct" runat="server">
            <ItemTemplate>
                <div class="result">
                    <%-- <h4><a href='<%# Eval("PageURL")%>'><%# Eval("ProdName")%></a></h4>--%>

                    <a href='/sites/greatlakes/Pages/Product_Details.aspx?prod=<%# Eval("Title")%>'>
                        <h4><%# Eval("ProdName")%></h4>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>


<script type="text/javascript">

    // start user setings
    var maxColumn = 2;    // max cells in a row
    var range = 3;    // range of num links to show
    // end user setings

    var rowsPerPage = 10;
    var currentpage = 1;
    var sortBy = '';
    var sortOrder = 0;
    var searchText = '';
    var resultsMsg = '';

    var selectedCategories = new Array();

    // the products and categories information arrays
    var products = [<%=strProdJSON%>];
    //var categories = [<%=strCatJSON%>];
//    var products = [{ "id": "759321771c019310VgnVCM1000000753810aRCRD", "title": "Antimony Trioxide and Smoke Suppressants", "categories": ",/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Housing/,/GreatLakes-en-US/Polymer/Polypropylene (PP)/,/GreatLakes-en-US/Market/Electrical & Electronics/Wire & Cable/,/GreatLakes-en-US/Market/Transportation/,/GreatLakes-en-US/Application/Consumer Products/,/GreatLakes-en-US/Polymer/Acrylonitrile-butadiene-styrene (ABS)/,/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/,/GreatLakes-en-US/Polymer/Unsaturated polyester (additive)/,/GreatLakes-en-US/Polymer/Synthetic Rubber/,/GreatLakes-en-US/Polymer/Epoxy Resins/,/GreatLakes-en-US/Application/Roofing Membrane & Flooring/,/GreatLakes-en-US/Polymer/Polycarbonate &#47; ABS (PC &#47; ABS)/,/GreatLakes-en-US/Market/Transportation/Aviation/,/GreatLakes-en-US/Polymer/Polyamide/,/GreatLakes-en-US/Market/Transportation/Automotive/,/GreatLakes-en-US/Market/Building & Construction/Wire & Cable/,/GreatLakes-en-US/Application/Textile Backcoating/,/GreatLakes-en-US/Polymer/High Impact Polystyrene (HIPS)/,/GreatLakes-en-US/Polymer/Acrylics/,/GreatLakes-en-US/Application/Electrical Connector/,/GreatLakes-en-US/Application/Cabinetry and Office Machine Housings/,/GreatLakes-en-US/Polymer/Polyethylene terephthalate (PET)/,/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/,/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/,/GreatLakes-en-US/Market/Building & Construction/Electrical Internal Component/,/GreatLakes-en-US/Market/Electrical & Electronics/,/GreatLakes-en-US/Application/Under the Hood/,/GreatLakes-en-US/Polymer/Polyethylene (PE)/,/GreatLakes-en-US/Polymer/High temperature polyamide/,/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Application/PVC Calendar Sheet/,/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/,/GreatLakes-en-US/Polymer/Latex/,/GreatLakes-en-US/Polymer/Polybutylene  terephtalate (PBT)/,/GreatLakes-en-US/Application/Conveyor Belt/", "link": "/Flame_Retardants/Products/Antimony_Trioxide_and_Smoke_Suppressants", "shortDesc": "Antimony trioxide is a highly effective flame retardant synergist used in conjunction with organohalogen flame retardants or halogen containing resins, such as PVC.  " }
//, { "id": "5dea0121c7858310VgnVCM1000000753810aRCRD", "title": "BA-59P™", "categories": ",/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Housing/,/GreatLakes-en-US/Market/Transportation/,/GreatLakes-en-US/Application/Consumer Products/,/GreatLakes-en-US/Polymer/Acrylonitrile-butadiene-styrene (ABS)/,/GreatLakes-en-US/Application/Printed Circuit Board/,/GreatLakes-en-US/Market/Building & Construction/Electrical Internal Component/,/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/,/GreatLakes-en-US/Polymer/Polyamide/,/GreatLakes-en-US/Polymer/Reactive for resin manufacture/,/GreatLakes-en-US/Polymer/Epoxy Resins/,/GreatLakes-en-US/Polymer/Unsaturated polyester (reactive)/", "link": "/Flame_Retardants/Products/BA-59P", "shortDesc": "BA-59P&trade; flame retardant, tetrabromobisphenol A, is a brominated aromatic flame retardant used in thermoplastic and thermoset resin systems. " }
//, { "id": "221c0121c7858310VgnVCM1000000753810aRCRD", "title": "BC-52™", "categories": ",/GreatLakes-en-US/Polymer/Acrylonitrile-butadiene-styrene (ABS)/,/GreatLakes-en-US/Polymer/Polybutylene  terephtalate (PBT)/,/GreatLakes-en-US/Application/Under the Hood/,/GreatLakes-en-US/Application/Electrical Connector/,/GreatLakes-en-US/Polymer/Polycarbonate (PC)/,/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/,/GreatLakes-en-US/Polymer/Polycarbonate &#47; ABS (PC &#47; ABS)/,/GreatLakes-en-US/Market/Transportation/Automotive/", "link": "/Flame_Retardants/Products/BC-52", "shortDesc": "BC-52™ flame retardant is a brominated, aromatic flame retardant for thermoplastic resin systems." }
//, { "id": "523c0121c7858310VgnVCM1000000753810aRCRD", "title": "BC-58™", "categories": ",/GreatLakes-en-US/Polymer/Polybutylene  terephtalate (PBT)/,/GreatLakes-en-US/Application/Under the Hood/,/GreatLakes-en-US/Application/Electrical Connector/,/GreatLakes-en-US/Polymer/Polycarbonate (PC)/,/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/,/GreatLakes-en-US/Polymer/Polycarbonate &#47; ABS (PC &#47; ABS)/,/GreatLakes-en-US/Market/Transportation/Automotive/", "link": "/Flame_Retardants/Products/BC-58", "shortDesc": "BC-58™ flame retardant is a brominated, aromatic flame retardant for thermoplastic resin systems. " }
//, { "id": "e7180121c7858310VgnVCM1000000753810aRCRD", "title": "CD-75P™", "categories": ",/GreatLakes-en-US/Application/EPS Insulation/,/GreatLakes-en-US/Application/XPS Insulation Sheet/,/GreatLakes-en-US/Market/Building & Construction/Insulation/,/GreatLakes-en-US/Polymer/Extruded polystyrene (XPS)/,/GreatLakes-en-US/Polymer/Expandable polystyrene (EPS)/", "link": "/Flame_Retardants/Products/CD-75P", "shortDesc": "CD-75P™ flame retardant, hexabromocyclododecane, is a highly brominated cyclo-aliphatic flame retardant." }
//, { "id": "dbd80121c7858310VgnVCM1000000753810aRCRD", "title": "DP-45™", "categories": ",/GreatLakes-en-US/Market/Transportation/,/GreatLakes-en-US/Application/Consumer Products/,/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Application/Conveyor Belt/,/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/,/GreatLakes-en-US/Application/Wire & Cable/,/GreatLakes-en-US/Market/Transportation/Aviation/,/GreatLakes-en-US/Market/Building & Construction/Wire & Cable/,/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/", "link": "/Flame_Retardants/Products/DP-45", "shortDesc": "DP-45™ flame retardant is a brominated liquid flame retardant plasticizer for polyvinylchloride (PVC), adhesives, coatings and elastomers including SBR, Neoprene and EPDM." }
//, { "id": "c7ca0121c7858310VgnVCM1000000753810aRCRD", "title": "Emerald Innovation™ 1000", "categories": ",/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Housing/,/GreatLakes-en-US/Polymer/Polypropylene (PP)/,/GreatLakes-en-US/Market/Electrical & Electronics/Wire & Cable/,/GreatLakes-en-US/Application/Consumer Products/,/GreatLakes-en-US/Polymer/Polyphenylene oxide&#47;HIPS (PPO&#47;HIPS)/,/GreatLakes-en-US/Polymer/Acrylonitrile-butadiene-styrene (ABS)/,/GreatLakes-en-US/Application/Textile Backcoating/,/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/,/GreatLakes-en-US/Polymer/Unsaturated polyester (additive)/,/GreatLakes-en-US/Polymer/Synthetic Rubber/,/GreatLakes-en-US/Polymer/Epoxy Resins/,/GreatLakes-en-US/Application/Roofing Membrane & Flooring/,/GreatLakes-en-US/Polymer/Polycarbonate (PC)/,/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/,/GreatLakes-en-US/Polymer/Polycarbonate &#47; ABS (PC &#47; ABS)/,/GreatLakes-en-US/Market/Transportation/Aviation/,/GreatLakes-en-US/Market/Transportation/Automotive/,/GreatLakes-en-US/Market/Building & Construction/Wire & Cable/,/GreatLakes-en-US/Application/Under the Hood/,/GreatLakes-en-US/Polymer/Polyethylene (PE)/,/GreatLakes-en-US/Polymer/High Impact Polystyrene (HIPS)/,/GreatLakes-en-US/Polymer/Acrylics/,/GreatLakes-en-US/Application/Cabinetry and Office Machine Housings/,/GreatLakes-en-US/Application/Wire & Cable/,/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/,/GreatLakes-en-US/Polymer/Latex/,/GreatLakes-en-US/Application/Conveyor Belt/,/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/,/GreatLakes-en-US/Market/Building & Construction/Electrical Internal Component/", "link": "/Flame_Retardants/Products/Emerald_Innovation_1000", "shortDesc": "Emerald Innovation™ 1000 flame retardant is a unique, greener, brominated flame retardant currently used in polystyrene, polyolefin and thermoplastic/thermoset polyester resin systems." }
//, { "id": "47480121c7858310VgnVCM1000000753810aRCRD", "title": "Emerald Innovation™ 3000", "categories": ",/GreatLakes-en-US/Application/EPS Insulation/,/GreatLakes-en-US/Application/XPS Insulation Sheet/,/GreatLakes-en-US/Market/Building & Construction/Insulation/,/GreatLakes-en-US/Polymer/Extruded polystyrene (XPS)/,/GreatLakes-en-US/Polymer/Expandable polystyrene (EPS)/", "link": "/Flame_Retardants/Products/Emerald_Innovation_3000", "shortDesc": "Emerald Innovation™ 3000 flame retardant is a highly effective, sustainable brominated polymeric flame retardant offering a variety of enhanced performance properties. " }
//, { "id": "fba80121c7858310VgnVCM1000000753810aRCRD", "title": "Emerald Innovation™ NH-1", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Comfort Foam/,/GreatLakes-en-US/Polymer/Flexible polyurethane/,/GreatLakes-en-US/Application/Furniture Foam/,/GreatLakes-en-US/Market/Transportation/Aviation/,/GreatLakes-en-US/Market/Transportation/Automotive/,/GreatLakes-en-US/Application/Flexible Polyurethane Foam/,/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/", "link": "/Flame_Retardants/Products/Emerald_Innovation_NH-1", "shortDesc": "Emerald Innovation™ NH-1 flame retardant is a halogen-free flame retardant for both furniture and automotive flexible polyurethane foam (FPF) applications. " }
//, { "id": "851a0121c7858310VgnVCM1000000753810aRCRD", "title": "Firemaster® 2100R", "categories": ",/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Housing/,/GreatLakes-en-US/Polymer/Polypropylene (PP)/,/GreatLakes-en-US/Market/Electrical & Electronics/Wire & Cable/,/GreatLakes-en-US/Application/Consumer Products/,/GreatLakes-en-US/Polymer/Acrylonitrile-butadiene-styrene (ABS)/,/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/,/GreatLakes-en-US/Polymer/Unsaturated polyester (additive)/,/GreatLakes-en-US/Polymer/Synthetic Rubber/,/GreatLakes-en-US/Polymer/Epoxy Resins/,/GreatLakes-en-US/Application/Roofing Membrane & Flooring/,/GreatLakes-en-US/Polymer/Polycarbonate &#47; ABS (PC &#47; ABS)/,/GreatLakes-en-US/Market/Transportation/Aviation/,/GreatLakes-en-US/Polymer/Polyamide/,/GreatLakes-en-US/Market/Transportation/Automotive/,/GreatLakes-en-US/Market/Building & Construction/Wire & Cable/,/GreatLakes-en-US/Application/Textile Backcoating/,/GreatLakes-en-US/Polymer/Polyethylene (PE)/,/GreatLakes-en-US/Polymer/High Impact Polystyrene (HIPS)/,/GreatLakes-en-US/Polymer/Acrylics/,/GreatLakes-en-US/Application/Cabinetry and Office Machine Housings/,/GreatLakes-en-US/Application/Wire & Cable/,/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/,/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/,/GreatLakes-en-US/Polymer/Latex/,/GreatLakes-en-US/Application/Conveyor Belt/,/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/,/GreatLakes-en-US/Market/Building & Construction/Electrical Internal Component/,/GreatLakes-en-US/Application/Under the Hood/", "link": "/Flame_Retardants/Products/Firemaster_2100R", "shortDesc": "Firemaster® 2100R flame retardant is a general purpose, brominated, high-purity, non-DPO based flame retardant for a variety of polymers including styrenics, engineering polymers, polyolefins, and elastomers." }
//, { "id": "a71aaabeb977f310VgnVCM1000000a53810aRCRD", "title": "Firemaster® 504", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/,/GreatLakes-en-US/Market/Building & Construction/Insulation/,/GreatLakes-en-US/Application/Rigid PU Foam Insulation/,/GreatLakes-en-US/Application/Roofing Membrane & Flooring/,/GreatLakes-en-US/Polymer/Rigid polyurethane/", "link": "/Flame_Retardants/Products/Firemaster_504", "shortDesc": "Firemaster® 504 flame retardant is our lowest viscosity blend of PHT4-Diol™ flame retardant and phosphate ester.  Firemaster® 504 flame retardant’s high efficiency as a flame retardant is a result of phosphorus-bromine synergy." }
//, { "id": "795aaabeb977f310VgnVCM1000000a53810aRCRD", "title": "Firemaster® 508", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/,/GreatLakes-en-US/Market/Building & Construction/Insulation/,/GreatLakes-en-US/Application/Rigid PU Foam Insulation/,/GreatLakes-en-US/Polymer/Rigid polyurethane/", "link": "/Flame_Retardants/Products/Firemaster_508", "shortDesc": "Firemaster® 508 flame retardant is a low viscosity blend of PHT4-Diol™ flame retardant and phosphate ester. Firemaster® 508 flame retardant’s high efficiency as a flame retardant is a result of phosphorus-bromine synergy." }
//, { "id": "92d9aabeb977f310VgnVCM1000000a53810aRCRD", "title": "Firemaster® 520", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Market/Building & Construction/Insulation/,/GreatLakes-en-US/Application/Rigid PU Foam Insulation/,/GreatLakes-en-US/Polymer/Rigid polyurethane/", "link": "/Flame_Retardants/Products/Firemaster_520", "shortDesc": "Firemaster® 520 flame retardant is a low viscosity, high reactivity flame retardant primarily used in Class 1 and Class 2 rigid polyurethane foam." }
//, { "id": "4b690121c7858310VgnVCM1000000753810aRCRD", "title": "Firemaster® 550", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Comfort Foam/,/GreatLakes-en-US/Polymer/Flexible polyurethane/,/GreatLakes-en-US/Application/Furniture Foam/,/GreatLakes-en-US/Market/Transportation/Aviation/,/GreatLakes-en-US/Application/Flexible Polyurethane Foam/,/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/", "link": "/Flame_Retardants/Products/Firemaster_550", "shortDesc": "Firemaster® 550 flame retardant is a low viscosity liquid flame retardant for flexible polyurethane foams and other applications, which require a liquid product." }
//, { "id": "1c890121c7858310VgnVCM1000000753810aRCRD", "title": "Firemaster® 552", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Comfort Foam/,/GreatLakes-en-US/Polymer/Flexible polyurethane/,/GreatLakes-en-US/Application/Furniture Foam/,/GreatLakes-en-US/Application/Flexible Polyurethane Foam/", "link": "/Flame_Retardants/Products/Firemaster_552", "shortDesc": "Firemaster® 552 flame retardant is a low viscosity liquid flame retardant optimized for mechanically cooled flexible polyurethane foam (FPF)." }
//, { "id": "c4a90121c7858310VgnVCM1000000753810aRCRD", "title": "Firemaster® 600", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Comfort Foam/,/GreatLakes-en-US/Polymer/Flexible polyurethane/,/GreatLakes-en-US/Application/Furniture Foam/,/GreatLakes-en-US/Market/Transportation/Aviation/,/GreatLakes-en-US/Application/Flexible Polyurethane Foam/,/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/", "link": "/Flame_Retardants/Products/Firemaster_600", "shortDesc": "Firemaster® 600 flame retardant is a low viscosity high efficiency, liquid flame retardant for polyurethane foams and other applications. " }
//, { "id": "72c90121c7858310VgnVCM1000000753810aRCRD", "title": "Firemaster® 602", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Comfort Foam/,/GreatLakes-en-US/Polymer/Flexible polyurethane/,/GreatLakes-en-US/Application/Furniture Foam/,/GreatLakes-en-US/Application/Flexible Polyurethane Foam/", "link": "/Flame_Retardants/Products/Firemaster_602", "shortDesc": "Firemaster® 602 flame retardant is a low viscosity liquid flame retardant optimized for mechanically cooled flexible polyurethane foam (FPF). " }
//, { "id": "6d9499e1953cf310VgnVCM1000000a53810aRCRD", "title": "Firemaster® BZ-54", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Comfort Foam/,/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/,/GreatLakes-en-US/Application/Conveyor Belt/,/GreatLakes-en-US/Application/Furniture Foam/,/GreatLakes-en-US/Market/Transportation/Automotive/,/GreatLakes-en-US/Application/Flexible Polyurethane Foam/,/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/", "link": "/Flame_Retardants/Products/Firemaster_BZ-54", "shortDesc": "Firemaster® BZ-54 flame retardant is a low viscosity liquid flame retardant for flexible polyurethane foam and can be used in a wide variety of applications, in particular where low fogging is critical." }
//, { "id": "91bf1bd3f1079310VgnVCM1000000753810aRCRD", "title": "Firemaster® BZ-54HP", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Comfort Foam/,/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/,/GreatLakes-en-US/Application/Conveyor Belt/,/GreatLakes-en-US/Application/Furniture Foam/,/GreatLakes-en-US/Market/Transportation/Automotive/,/GreatLakes-en-US/Application/Flexible Polyurethane Foam/,/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/", "link": "/Flame_Retardants/Products/Firemaster_BZ-54HP", "shortDesc": "Firemaster® BZ-54HP flame retardant is a low viscosity liquid flame retardant that can be used in a wide variety of applications, in particular where low fogging or increased adhesion during lamination is critical. " }
//, { "id": "b35b0121c7858310VgnVCM1000000753810aRCRD", "title": "Firemaster® CP-44HF", "categories": ",/GreatLakes-en-US/Polymer/Polybutylene  terephtalate (PBT)/,/GreatLakes-en-US/Market/Building & Construction/Electrical Internal Component/,/GreatLakes-en-US/Application/Under the Hood/,/GreatLakes-en-US/Polymer/High temperature polyamide/,/GreatLakes-en-US/Application/Electrical Connector/,/GreatLakes-en-US/Polymer/Polyethylene terephthalate (PET)/,/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/,/GreatLakes-en-US/Polymer/Polycarbonate &#47; ABS (PC &#47; ABS)/,/GreatLakes-en-US/Polymer/Polyamide/,/GreatLakes-en-US/Market/Transportation/Automotive/", "link": "/Flame_Retardants/Products/Firemaster_CP-44HF", "shortDesc": "Firemaster® CP-44HF flame retardant is a polymeric flame retardant designed for polyamides and thermoplastic polyesters (PBT and PET). " }
//, { "id": "50fb0121c7858310VgnVCM1000000753810aRCRD", "title": "Firemaster® PBS-64HW", "categories": ",/GreatLakes-en-US/Polymer/Polybutylene  terephtalate (PBT)/,/GreatLakes-en-US/Market/Building & Construction/Electrical Internal Component/,/GreatLakes-en-US/Application/Under the Hood/,/GreatLakes-en-US/Polymer/High temperature polyamide/,/GreatLakes-en-US/Application/Electrical Connector/,/GreatLakes-en-US/Polymer/Polycarbonate (PC)/,/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/,/GreatLakes-en-US/Polymer/Polycarbonate &#47; ABS (PC &#47; ABS)/,/GreatLakes-en-US/Polymer/Polyamide/,/GreatLakes-en-US/Market/Transportation/Automotive/", "link": "/Flame_Retardants/Products/Firemaster_PBS-64HW", "shortDesc": "Firemaster® PBS-64HW flame retardant is a polymeric flame retardant for polyamides and thermoplastic polyesters (PBT and PET)." }
//, { "id": "bb7d56ce2e04a310VgnVCM1000000753810aRCRD", "title": "Fireshield® LSFR", "categories": "", "link": "/Flame_Retardants/Products/Fireshield_LSFR", "shortDesc": "Fireshield® LSFR flame retardant synergist is especially suited for low smoke PVC to provide a combination of fire resistance and smoke suppression." }
//, { "id": "7e580121c7858310VgnVCM1000000753810aRCRD", "title": "Kronitex® CDP", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Application/PVC Calendar Sheet/,/GreatLakes-en-US/Application/Printed Circuit Board/,/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/,/GreatLakes-en-US/Polymer/Nitrocellulose lacquers/,/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/,/GreatLakes-en-US/Polymer/Phenolic/,/GreatLakes-en-US/Application/Roofing Membrane & Flooring/", "link": "/Flame_Retardants/Products/Kronitex_CDP", "shortDesc": "Kronitex® CDP flame retardant is a naturally derived triaryl phosphate ester based on phenol and cresol. Kronitex® CDP can be used to impart flame retardance to a wide variety of resins. " }
//, { "id": "a5780121c7858310VgnVCM1000000753810aRCRD", "title": "Kronitex® TCP", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Application/PVC Calendar Sheet/,/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/,/GreatLakes-en-US/Polymer/Nitrocellulose lacquers/,/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/", "link": "/Flame_Retardants/Products/Kronitex_TCP", "shortDesc": "Kronitex® TCP flame retardant is a triaryl phosphate ester produced from naturally derived cresols. " }
//, { "id": "1905297bf9f3a310VgnVCM1000000753810aRCRD", "title": "Ongard® 2", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Application/PVC Calendar Sheet/,/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/", "link": "/Flame_Retardants/Products/Ongard_2", "shortDesc": "Ongard® 2 flame retardant and smoke suppressant is a proprietary inorganic complex free of antimony, which has been developed as a flame retardant and smoke suppressant for rigid and flexible PVC. " }
//, { "id": "c23b0121c7858310VgnVCM1000000753810aRCRD", "title": "PDBS-80™", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Electrical Internal Component/,/GreatLakes-en-US/Application/Under the Hood/,/GreatLakes-en-US/Application/Electrical Connector/,/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/,/GreatLakes-en-US/Polymer/Polycarbonate &#47; ABS (PC &#47; ABS)/,/GreatLakes-en-US/Polymer/Polyamide/,/GreatLakes-en-US/Market/Transportation/Automotive/", "link": "/Flame_Retardants/Products/PDBS-80", "shortDesc": "PDBS-80™ flame retardant is a polymeric flame retardant for polyamides and thermoplastic polyesters (PBT and PET). " }
//, { "id": "7dd121771c019310VgnVCM1000000753810aRCRD", "title": "PH-73FF™", "categories": "", "link": "/Flame_Retardants/Products/PH-73FF", "shortDesc": "PH-73 FF™  flame retardant is a reactive intermediate containing over 70% bromine recommended for phenol-based reactions in a free flowing briquette form." }
//, { "id": "4757cbfc10d09310VgnVCM1000000753810aRCRD", "title": "PHT-4™", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Insulation/,/GreatLakes-en-US/Polymer/Reactive for resin manufacture/,/GreatLakes-en-US/Polymer/Unsaturated polyester (reactive)/", "link": "/Flame_Retardants/Products/PHT-4", "shortDesc": "PHT-4™  flame retardant is an off-white crystalline powder containing approximately 68% bromine reactive intermediate." }
//, { "id": "d4c80121c7858310VgnVCM1000000753810aRCRD", "title": "PHT4-Diol™", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Insulation/,/GreatLakes-en-US/Application/Rigid PU Foam Insulation/,/GreatLakes-en-US/Polymer/Rigid polyurethane/", "link": "/Flame_Retardants/Products/PHT4-Diol", "shortDesc": "PHT4-Diol™  flame retardant intermediate, tetrabromophthalate diol, is a reactive flame retardant intermediate. " }
//, { "id": "a6f90121c7858310VgnVCM1000000753810aRCRD", "title": "PHT4-Diol™ LV", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Insulation/,/GreatLakes-en-US/Application/Rigid PU Foam Insulation/,/GreatLakes-en-US/Polymer/Rigid polyurethane/", "link": "/Flame_Retardants/Products/PHT4-Diol_LV", "shortDesc": "PHT4-Diol™  flame retardant LV, tetrabromophthalate diol, is a low viscosity version of neat PHT4-Diol™  flame retardant." }
//, { "id": "a1b6297bf9f3a310VgnVCM1000000753810aRCRD", "title": "Pyrobloc® SAP-2 - Thermoguard® FR", "categories": ",/GreatLakes-en-US/Market/Transportation/,/GreatLakes-en-US/Application/Consumer Products/,/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Market/Electrical & Electronics/,/GreatLakes-en-US/Polymer/High temperature polyamide/,/GreatLakes-en-US/Application/Electrical Connector/,/GreatLakes-en-US/Polymer/Polyethylene terephthalate (PET)/,/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/", "link": "/Flame_Retardants/Products/Pyrobloc_SAP-2_-_Thermoguard_FR", "shortDesc": "Pyrobloc® SAP-2 / Thermoguard® FR flame retardant synergist is an inorganic antimony compound which provides good flame retardant properties in combination with low opacity and tinting strength in polymer applications." }
//, { "id": "3e03e81a49358310VgnVCM1000000753810aRCRD", "title": "Reofos® 35", "categories": ",/GreatLakes-en-US/Market/Transportation/,/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Application/PVC Calendar Sheet/,/GreatLakes-en-US/Application/Printed Circuit Board/,/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/,/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/,/GreatLakes-en-US/Polymer/Phenolic/,/GreatLakes-en-US/Market/Transportation/Automotive/,/GreatLakes-en-US/Polymer/Epoxy Resins/", "link": "/Flame_Retardants/Products/Reofos_35", "shortDesc": "Reofos® 35 flame retardant is a low viscosity synthetic isopropylated triaryl phosphate ester that finds utility in a wide variety of applications as a flame-retardant plasticizer. " }
//, { "id": "02d2e81a49358310VgnVCM1000000753810aRCRD", "title": "Reofos® 50", "categories": ",/GreatLakes-en-US/Application/Consumer Products/,/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Application/PVC Calendar Sheet/,/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/,/GreatLakes-en-US/Application/Conveyor Belt/,/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/,/GreatLakes-en-US/Polymer/Flexible polyurethane/,/GreatLakes-en-US/Application/Textile Backcoating/,/GreatLakes-en-US/Polymer/Epoxy Resins/,/GreatLakes-en-US/Application/Roofing Membrane & Flooring/,/GreatLakes-en-US/Polymer/Cellulosic resins/", "link": "/Flame_Retardants/Products/Reofos_50", "shortDesc": "Reofos® 50 flame retardant is a synthetic isopropylated triaryl phosphate ester, which can be used in a wide variety of resins, particularly PVC. " }
//, { "id": "2fe2e81a49358310VgnVCM1000000753810aRCRD", "title": "Reofos® 65", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Comfort Foam/,/GreatLakes-en-US/Market/Electrical & Electronics/Wire & Cable/,/GreatLakes-en-US/Market/Transportation/,/GreatLakes-en-US/Application/Consumer Products/,/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Application/PVC Calendar Sheet/,/GreatLakes-en-US/Polymer/Epoxy Resins/,/GreatLakes-en-US/Application/Roofing Membrane & Flooring/,/GreatLakes-en-US/Polymer/Cellulosic resins/,/GreatLakes-en-US/Application/Furniture Foam/,/GreatLakes-en-US/Market/Transportation/Aviation/,/GreatLakes-en-US/Market/Transportation/Automotive/,/GreatLakes-en-US/Application/Textile Backcoating/,/GreatLakes-en-US/Application/Flexible Polyurethane Foam/,/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/,/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/,/GreatLakes-en-US/Polymer/Latex/,/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/,/GreatLakes-en-US/Market/Electrical & Electronics/,/GreatLakes-en-US/Polymer/Flexible polyurethane/,/GreatLakes-en-US/Application/Wire & Cable/", "link": "/Flame_Retardants/Products/Reofos_65", "shortDesc": "Reofos® 65 flame retardant plasticizer is used primarily in PVC and phenolic resins. " }
//, { "id": "efc3e81a49358310VgnVCM1000000753810aRCRD", "title": "Reofos® 95", "categories": ",/GreatLakes-en-US/Market/Electrical & Electronics/Wire & Cable/,/GreatLakes-en-US/Market/Transportation/,/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Application/PVC Calendar Sheet/,/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/,/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/,/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/,/GreatLakes-en-US/Application/Roofing Membrane & Flooring/,/GreatLakes-en-US/Polymer/Cellulosic resins/,/GreatLakes-en-US/Market/Electrical & Electronics/,/GreatLakes-en-US/Polymer/Flexible polyurethane/,/GreatLakes-en-US/Application/Wire & Cable/,/GreatLakes-en-US/Market/Transportation/Aviation/,/GreatLakes-en-US/Market/Transportation/Automotive/,/GreatLakes-en-US/Market/Building & Construction/Wire & Cable/", "link": "/Flame_Retardants/Products/Reofos_95", "shortDesc": "Reofos® 95 flame retardant plasticizer is used primarily in PVC an phenolic resins. " }
//, { "id": "66c55921630cf310VgnVCM1000000a53810aRCRD", "title": "Reofos® LF-50", "categories": ",/GreatLakes-en-US/Application/Consumer Products/,/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Application/PVC Calendar Sheet/,/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/,/GreatLakes-en-US/Application/Conveyor Belt/,/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/,/GreatLakes-en-US/Polymer/Flexible polyurethane/,/GreatLakes-en-US/Application/Textile Backcoating/,/GreatLakes-en-US/Polymer/Epoxy Resins/,/GreatLakes-en-US/Application/Roofing Membrane & Flooring/,/GreatLakes-en-US/Polymer/Cellulosic resins/", "link": "/Flame_Retardants/Products/Reofos_LF-50", "shortDesc": "Reofos LF-50 flame retardant is recommended as a flame retardant for PVC, flexible polyurethanes, cellulosic resins, and synthetic rubber. " }
//, { "id": "85e5297bf9f3a310VgnVCM1000000753810aRCRD", "title": "Smokebloc®", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/,/GreatLakes-en-US/Market/Electrical & Electronics/,/GreatLakes-en-US/Market/Transportation/Aviation/,/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/", "link": "/Flame_Retardants/Products/Smokebloc", "shortDesc": "Smokebloc® synergist AZ-11 and AZ-12 contains the properties of antimony trioxide flame retardancy and Ongard® 2 smoke suppression in a specially formulated synergistic product." }
//, { "id": "2d280121c7858310VgnVCM1000000753810aRCRD", "title": "SP-75™", "categories": ",/GreatLakes-en-US/Application/EPS Insulation/,/GreatLakes-en-US/Application/XPS Insulation Sheet/,/GreatLakes-en-US/Market/Building & Construction/Insulation/,/GreatLakes-en-US/Polymer/Extruded polystyrene (XPS)/", "link": "/Flame_Retardants/Products/SP-75", "shortDesc": "SP-75™  flame retardant is a stabilized grade of CD-75P™  flame retardant. SP-75™  flame retardant provides excellent performance at low loading levels with minimum effect on polymer properties at higher processing temperatures." }
//, { "id": "5766297bf9f3a310VgnVCM1000000753810aRCRD", "title": "Thermoguard® CPA", "categories": ",/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Application/PVC Calendar Sheet/,/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/", "link": "/Flame_Retardants/Products/Thermoguard_CPA", "shortDesc": "Thermoguard® CPA flame retardant is a low cost antimony flame retardant that has been proven to be a cost effective replacement for antimony trioxide in many formulated plastics. " }
//, { "id": "d15421771c019310VgnVCM1000000753810aRCRD", "title": "ZB-223", "categories": ",/GreatLakes-en-US/Market/Transportation/,/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Application/PVC Calendar Sheet/,/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/,/GreatLakes-en-US/Application/Conveyor Belt/,/GreatLakes-en-US/Application/Wire & Cable/,/GreatLakes-en-US/Market/Transportation/Aviation/,/GreatLakes-en-US/Market/Transportation/Automotive/,/GreatLakes-en-US/Application/Textile Backcoating/,/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/,/GreatLakes-en-US/Application/Roofing Membrane & Flooring/", "link": "/Flame_Retardants/Products/ZB-223", "shortDesc": "Zinc Borate ZB-223 flame retardant/smoke suppressant is a white, non-hygroscopic, free flowing powdered zinc borate. The principal application is as a flame retardant/smoke suppressant for PVC. " }
//, { "id": "86d421771c019310VgnVCM1000000753810aRCRD", "title": "ZB-467", "categories": ",/GreatLakes-en-US/Polymer/Polypropylene (PP)/,/GreatLakes-en-US/Market/Electrical & Electronics/Wire & Cable/,/GreatLakes-en-US/Market/Transportation/,/GreatLakes-en-US/Application/Consumer Products/,/GreatLakes-en-US/Polymer/Acrylonitrile-butadiene-styrene (ABS)/,/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/,/GreatLakes-en-US/Application/Roofing Membrane & Flooring/,/GreatLakes-en-US/Market/Transportation/Aviation/,/GreatLakes-en-US/Polymer/Polyamide/,/GreatLakes-en-US/Market/Transportation/Automotive/,/GreatLakes-en-US/Application/Textile Backcoating/,/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/,/GreatLakes-en-US/Polymer/Synthetic Rubber/,/GreatLakes-en-US/Market/Electrical & Electronics/,/GreatLakes-en-US/Polymer/Polyethylene (PE)/,/GreatLakes-en-US/Polymer/High temperature polyamide/,/GreatLakes-en-US/Polymer/Acrylics/,/GreatLakes-en-US/Application/Electrical Connector/,/GreatLakes-en-US/Application/Wire & Cable/,/GreatLakes-en-US/Application/PVC Calendar Sheet/,/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/,/GreatLakes-en-US/Polymer/Latex/,/GreatLakes-en-US/Application/Conveyor Belt/,/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/,/GreatLakes-en-US/Market/Building & Construction/Electrical Internal Component/", "link": "/Flame_Retardants/Products/ZB-467", "shortDesc": "ZB-467 flame retardant/smoke suppressant is a flame retardant / smoke suppressant for polyamides, PVC, polyethylene, polypropylene, epoxy, polyesters, elastomers and rubber based formulations. " }
//    ];
    var categories = ['/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/', '/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/', '/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/', '/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/', '/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/', '/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/', '/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/', '/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/', '/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/', '/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/', '/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/', '/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/', '/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/', '/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/', '/GreatLakes-en-US/Application/Adhesive, Coating & Sealant/', '/GreatLakes-en-US/Application/Cabinetry and Office Machine Housings/', '/GreatLakes-en-US/Application/Cabinetry and Office Machine Housings/', '/GreatLakes-en-US/Application/Cabinetry and Office Machine Housings/', '/GreatLakes-en-US/Application/Consumer Products/', '/GreatLakes-en-US/Application/Consumer Products/', '/GreatLakes-en-US/Application/Consumer Products/', '/GreatLakes-en-US/Application/Consumer Products/', '/GreatLakes-en-US/Application/Consumer Products/', '/GreatLakes-en-US/Application/Consumer Products/', '/GreatLakes-en-US/Application/Consumer Products/', '/GreatLakes-en-US/Application/Consumer Products/', '/GreatLakes-en-US/Application/Consumer Products/', '/GreatLakes-en-US/Application/Consumer Products/', '/GreatLakes-en-US/Application/Conveyor Belt/', '/GreatLakes-en-US/Application/Conveyor Belt/', '/GreatLakes-en-US/Application/Conveyor Belt/', '/GreatLakes-en-US/Application/Conveyor Belt/', '/GreatLakes-en-US/Application/Conveyor Belt/', '/GreatLakes-en-US/Application/Conveyor Belt/', '/GreatLakes-en-US/Application/Conveyor Belt/', '/GreatLakes-en-US/Application/Conveyor Belt/', '/GreatLakes-en-US/Application/Conveyor Belt/', '/GreatLakes-en-US/Application/Conveyor Belt/', '/GreatLakes-en-US/Application/EPS Insulation/', '/GreatLakes-en-US/Application/EPS Insulation/', '/GreatLakes-en-US/Application/EPS Insulation/', '/GreatLakes-en-US/Application/Electrical Connector/', '/GreatLakes-en-US/Application/Electrical Connector/', '/GreatLakes-en-US/Application/Electrical Connector/', '/GreatLakes-en-US/Application/Electrical Connector/', '/GreatLakes-en-US/Application/Electrical Connector/', '/GreatLakes-en-US/Application/Electrical Connector/', '/GreatLakes-en-US/Application/Electrical Connector/', '/GreatLakes-en-US/Application/Electrical Connector/', '/GreatLakes-en-US/Application/Flexible Polyurethane Foam/', '/GreatLakes-en-US/Application/Flexible Polyurethane Foam/', '/GreatLakes-en-US/Application/Flexible Polyurethane Foam/', '/GreatLakes-en-US/Application/Flexible Polyurethane Foam/', '/GreatLakes-en-US/Application/Flexible Polyurethane Foam/', '/GreatLakes-en-US/Application/Flexible Polyurethane Foam/', '/GreatLakes-en-US/Application/Flexible Polyurethane Foam/', '/GreatLakes-en-US/Application/Flexible Polyurethane Foam/', '/GreatLakes-en-US/Application/Furniture Foam/', '/GreatLakes-en-US/Application/Furniture Foam/', '/GreatLakes-en-US/Application/Furniture Foam/', '/GreatLakes-en-US/Application/Furniture Foam/', '/GreatLakes-en-US/Application/Furniture Foam/', '/GreatLakes-en-US/Application/Furniture Foam/', '/GreatLakes-en-US/Application/Furniture Foam/', '/GreatLakes-en-US/Application/Furniture Foam/', '/GreatLakes-en-US/Application/PVC Calendar Sheet/', '/GreatLakes-en-US/Application/PVC Calendar Sheet/', '/GreatLakes-en-US/Application/PVC Calendar Sheet/', '/GreatLakes-en-US/Application/PVC Calendar Sheet/', '/GreatLakes-en-US/Application/PVC Calendar Sheet/', '/GreatLakes-en-US/Application/PVC Calendar Sheet/', '/GreatLakes-en-US/Application/PVC Calendar Sheet/', '/GreatLakes-en-US/Application/PVC Calendar Sheet/', '/GreatLakes-en-US/Application/PVC Calendar Sheet/', '/GreatLakes-en-US/Application/PVC Calendar Sheet/', '/GreatLakes-en-US/Application/PVC Calendar Sheet/', '/GreatLakes-en-US/Application/PVC Calendar Sheet/', '/GreatLakes-en-US/Application/Printed Circuit Board/', '/GreatLakes-en-US/Application/Printed Circuit Board/', '/GreatLakes-en-US/Application/Printed Circuit Board/', '/GreatLakes-en-US/Application/Rigid PU Foam Insulation/', '/GreatLakes-en-US/Application/Rigid PU Foam Insulation/', '/GreatLakes-en-US/Application/Rigid PU Foam Insulation/', '/GreatLakes-en-US/Application/Rigid PU Foam Insulation/', '/GreatLakes-en-US/Application/Rigid PU Foam Insulation/', '/GreatLakes-en-US/Application/Roofing Membrane & Flooring/', '/GreatLakes-en-US/Application/Roofing Membrane & Flooring/', '/GreatLakes-en-US/Application/Roofing Membrane & Flooring/', '/GreatLakes-en-US/Application/Roofing Membrane & Flooring/', '/GreatLakes-en-US/Application/Roofing Membrane & Flooring/', '/GreatLakes-en-US/Application/Roofing Membrane & Flooring/', '/GreatLakes-en-US/Application/Roofing Membrane & Flooring/', '/GreatLakes-en-US/Application/Roofing Membrane & Flooring/', '/GreatLakes-en-US/Application/Roofing Membrane & Flooring/', '/GreatLakes-en-US/Application/Roofing Membrane & Flooring/', '/GreatLakes-en-US/Application/Roofing Membrane & Flooring/', '/GreatLakes-en-US/Application/Textile Backcoating/', '/GreatLakes-en-US/Application/Textile Backcoating/', '/GreatLakes-en-US/Application/Textile Backcoating/', '/GreatLakes-en-US/Application/Textile Backcoating/', '/GreatLakes-en-US/Application/Textile Backcoating/', '/GreatLakes-en-US/Application/Textile Backcoating/', '/GreatLakes-en-US/Application/Textile Backcoating/', '/GreatLakes-en-US/Application/Textile Backcoating/', '/GreatLakes-en-US/Application/Under the Hood/', '/GreatLakes-en-US/Application/Under the Hood/', '/GreatLakes-en-US/Application/Under the Hood/', '/GreatLakes-en-US/Application/Under the Hood/', '/GreatLakes-en-US/Application/Under the Hood/', '/GreatLakes-en-US/Application/Under the Hood/', '/GreatLakes-en-US/Application/Under the Hood/', '/GreatLakes-en-US/Application/Under the Hood/', '/GreatLakes-en-US/Application/Wire & Cable/', '/GreatLakes-en-US/Application/Wire & Cable/', '/GreatLakes-en-US/Application/Wire & Cable/', '/GreatLakes-en-US/Application/Wire & Cable/', '/GreatLakes-en-US/Application/Wire & Cable/', '/GreatLakes-en-US/Application/Wire & Cable/', '/GreatLakes-en-US/Application/Wire & Cable/', '/GreatLakes-en-US/Application/XPS Insulation Sheet/', '/GreatLakes-en-US/Application/XPS Insulation Sheet/', '/GreatLakes-en-US/Application/XPS Insulation Sheet/', '/GreatLakes-en-US/Market/Building & Construction/Comfort Foam/', '/GreatLakes-en-US/Market/Building & Construction/Comfort Foam/', '/GreatLakes-en-US/Market/Building & Construction/Comfort Foam/', '/GreatLakes-en-US/Market/Building & Construction/Comfort Foam/', '/GreatLakes-en-US/Market/Building & Construction/Comfort Foam/', '/GreatLakes-en-US/Market/Building & Construction/Comfort Foam/', '/GreatLakes-en-US/Market/Building & Construction/Comfort Foam/', '/GreatLakes-en-US/Market/Building & Construction/Comfort Foam/', '/GreatLakes-en-US/Market/Building & Construction/Electrical Internal Component/', '/GreatLakes-en-US/Market/Building & Construction/Electrical Internal Component/', '/GreatLakes-en-US/Market/Building & Construction/Electrical Internal Component/', '/GreatLakes-en-US/Market/Building & Construction/Electrical Internal Component/', '/GreatLakes-en-US/Market/Building & Construction/Electrical Internal Component/', '/GreatLakes-en-US/Market/Building & Construction/Electrical Internal Component/', '/GreatLakes-en-US/Market/Building & Construction/Electrical Internal Component/', '/GreatLakes-en-US/Market/Building & Construction/Electrical Internal Component/', '/GreatLakes-en-US/Market/Building & Construction/Insulation/', '/GreatLakes-en-US/Market/Building & Construction/Insulation/', '/GreatLakes-en-US/Market/Building & Construction/Insulation/', '/GreatLakes-en-US/Market/Building & Construction/Insulation/', '/GreatLakes-en-US/Market/Building & Construction/Insulation/', '/GreatLakes-en-US/Market/Building & Construction/Insulation/', '/GreatLakes-en-US/Market/Building & Construction/Insulation/', '/GreatLakes-en-US/Market/Building & Construction/Insulation/', '/GreatLakes-en-US/Market/Building & Construction/Insulation/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Other Building Materials/', '/GreatLakes-en-US/Market/Building & Construction/Wire & Cable/', '/GreatLakes-en-US/Market/Building & Construction/Wire & Cable/', '/GreatLakes-en-US/Market/Building & Construction/Wire & Cable/', '/GreatLakes-en-US/Market/Building & Construction/Wire & Cable/', '/GreatLakes-en-US/Market/Building & Construction/Wire & Cable/', '/GreatLakes-en-US/Market/Electrical & Electronics/', '/GreatLakes-en-US/Market/Electrical & Electronics/', '/GreatLakes-en-US/Market/Electrical & Electronics/', '/GreatLakes-en-US/Market/Electrical & Electronics/', '/GreatLakes-en-US/Market/Electrical & Electronics/', '/GreatLakes-en-US/Market/Electrical & Electronics/', '/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Housing/', '/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Housing/', '/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Housing/', '/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Housing/', '/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/', '/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/', '/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/', '/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/', '/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/', '/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/', '/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/', '/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/', '/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/', '/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/', '/GreatLakes-en-US/Market/Electrical & Electronics/Electrical Internal Component/', '/GreatLakes-en-US/Market/Electrical & Electronics/Wire & Cable/', '/GreatLakes-en-US/Market/Electrical & Electronics/Wire & Cable/', '/GreatLakes-en-US/Market/Electrical & Electronics/Wire & Cable/', '/GreatLakes-en-US/Market/Electrical & Electronics/Wire & Cable/', '/GreatLakes-en-US/Market/Electrical & Electronics/Wire & Cable/', '/GreatLakes-en-US/Market/Electrical & Electronics/Wire & Cable/', '/GreatLakes-en-US/Market/Transportation/', '/GreatLakes-en-US/Market/Transportation/', '/GreatLakes-en-US/Market/Transportation/', '/GreatLakes-en-US/Market/Transportation/', '/GreatLakes-en-US/Market/Transportation/', '/GreatLakes-en-US/Market/Transportation/', '/GreatLakes-en-US/Market/Transportation/', '/GreatLakes-en-US/Market/Transportation/', '/GreatLakes-en-US/Market/Transportation/', '/GreatLakes-en-US/Market/Transportation/Automotive/', '/GreatLakes-en-US/Market/Transportation/Automotive/', '/GreatLakes-en-US/Market/Transportation/Automotive/', '/GreatLakes-en-US/Market/Transportation/Automotive/', '/GreatLakes-en-US/Market/Transportation/Automotive/', '/GreatLakes-en-US/Market/Transportation/Automotive/', '/GreatLakes-en-US/Market/Transportation/Automotive/', '/GreatLakes-en-US/Market/Transportation/Automotive/', '/GreatLakes-en-US/Market/Transportation/Automotive/', '/GreatLakes-en-US/Market/Transportation/Automotive/', '/GreatLakes-en-US/Market/Transportation/Automotive/', '/GreatLakes-en-US/Market/Transportation/Automotive/', '/GreatLakes-en-US/Market/Transportation/Automotive/', '/GreatLakes-en-US/Market/Transportation/Automotive/', '/GreatLakes-en-US/Market/Transportation/Automotive/', '/GreatLakes-en-US/Market/Transportation/Automotive/', '/GreatLakes-en-US/Market/Transportation/Aviation/', '/GreatLakes-en-US/Market/Transportation/Aviation/', '/GreatLakes-en-US/Market/Transportation/Aviation/', '/GreatLakes-en-US/Market/Transportation/Aviation/', '/GreatLakes-en-US/Market/Transportation/Aviation/', '/GreatLakes-en-US/Market/Transportation/Aviation/', '/GreatLakes-en-US/Market/Transportation/Aviation/', '/GreatLakes-en-US/Market/Transportation/Aviation/', '/GreatLakes-en-US/Market/Transportation/Aviation/', '/GreatLakes-en-US/Market/Transportation/Aviation/', '/GreatLakes-en-US/Market/Transportation/Aviation/', '/GreatLakes-en-US/Market/Transportation/Aviation/', '/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/', '/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/', '/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/', '/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/', '/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/', '/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/', '/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/', '/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/', '/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/', '/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/', '/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/', '/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/', '/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/', '/GreatLakes-en-US/Market/Transportation/Public and Mass Transit/', '/GreatLakes-en-US/Polymer/Acrylics/', '/GreatLakes-en-US/Polymer/Acrylics/', '/GreatLakes-en-US/Polymer/Acrylics/', '/GreatLakes-en-US/Polymer/Acrylics/', '/GreatLakes-en-US/Polymer/Acrylonitrile-butadiene-styrene (ABS)/', '/GreatLakes-en-US/Polymer/Acrylonitrile-butadiene-styrene (ABS)/', '/GreatLakes-en-US/Polymer/Acrylonitrile-butadiene-styrene (ABS)/', '/GreatLakes-en-US/Polymer/Acrylonitrile-butadiene-styrene (ABS)/', '/GreatLakes-en-US/Polymer/Acrylonitrile-butadiene-styrene (ABS)/', '/GreatLakes-en-US/Polymer/Acrylonitrile-butadiene-styrene (ABS)/', '/GreatLakes-en-US/Polymer/Cellulosic resins/', '/GreatLakes-en-US/Polymer/Cellulosic resins/', '/GreatLakes-en-US/Polymer/Cellulosic resins/', '/GreatLakes-en-US/Polymer/Cellulosic resins/', '/GreatLakes-en-US/Polymer/Epoxy Resins/', '/GreatLakes-en-US/Polymer/Epoxy Resins/', '/GreatLakes-en-US/Polymer/Epoxy Resins/', '/GreatLakes-en-US/Polymer/Epoxy Resins/', '/GreatLakes-en-US/Polymer/Epoxy Resins/', '/GreatLakes-en-US/Polymer/Epoxy Resins/', '/GreatLakes-en-US/Polymer/Epoxy Resins/', '/GreatLakes-en-US/Polymer/Epoxy Resins/', '/GreatLakes-en-US/Polymer/Expandable polystyrene (EPS)/', '/GreatLakes-en-US/Polymer/Expandable polystyrene (EPS)/', '/GreatLakes-en-US/Polymer/Extruded polystyrene (XPS)/', '/GreatLakes-en-US/Polymer/Extruded polystyrene (XPS)/', '/GreatLakes-en-US/Polymer/Extruded polystyrene (XPS)/', '/GreatLakes-en-US/Polymer/Flexible polyurethane/', '/GreatLakes-en-US/Polymer/Flexible polyurethane/', '/GreatLakes-en-US/Polymer/Flexible polyurethane/', '/GreatLakes-en-US/Polymer/Flexible polyurethane/', '/GreatLakes-en-US/Polymer/Flexible polyurethane/', '/GreatLakes-en-US/Polymer/Flexible polyurethane/', '/GreatLakes-en-US/Polymer/Flexible polyurethane/', '/GreatLakes-en-US/Polymer/Flexible polyurethane/', '/GreatLakes-en-US/Polymer/Flexible polyurethane/', '/GreatLakes-en-US/Polymer/High Impact Polystyrene (HIPS)/', '/GreatLakes-en-US/Polymer/High Impact Polystyrene (HIPS)/', '/GreatLakes-en-US/Polymer/High Impact Polystyrene (HIPS)/', '/GreatLakes-en-US/Polymer/High temperature polyamide/', '/GreatLakes-en-US/Polymer/High temperature polyamide/', '/GreatLakes-en-US/Polymer/High temperature polyamide/', '/GreatLakes-en-US/Polymer/High temperature polyamide/', '/GreatLakes-en-US/Polymer/High temperature polyamide/', '/GreatLakes-en-US/Polymer/Latex/', '/GreatLakes-en-US/Polymer/Latex/', '/GreatLakes-en-US/Polymer/Latex/', '/GreatLakes-en-US/Polymer/Latex/', '/GreatLakes-en-US/Polymer/Latex/', '/GreatLakes-en-US/Polymer/Nitrocellulose lacquers/', '/GreatLakes-en-US/Polymer/Nitrocellulose lacquers/', '/GreatLakes-en-US/Polymer/Phenolic/', '/GreatLakes-en-US/Polymer/Phenolic/', '/GreatLakes-en-US/Polymer/Polyamide/', '/GreatLakes-en-US/Polymer/Polyamide/', '/GreatLakes-en-US/Polymer/Polyamide/', '/GreatLakes-en-US/Polymer/Polyamide/', '/GreatLakes-en-US/Polymer/Polyamide/', '/GreatLakes-en-US/Polymer/Polyamide/', '/GreatLakes-en-US/Polymer/Polyamide/', '/GreatLakes-en-US/Polymer/Polybutylene  terephtalate (PBT)/', '/GreatLakes-en-US/Polymer/Polybutylene  terephtalate (PBT)/', '/GreatLakes-en-US/Polymer/Polybutylene  terephtalate (PBT)/', '/GreatLakes-en-US/Polymer/Polybutylene  terephtalate (PBT)/', '/GreatLakes-en-US/Polymer/Polybutylene  terephtalate (PBT)/', '/GreatLakes-en-US/Polymer/Polycarbonate &#47; ABS (PC &#47; ABS)/', '/GreatLakes-en-US/Polymer/Polycarbonate &#47; ABS (PC &#47; ABS)/', '/GreatLakes-en-US/Polymer/Polycarbonate &#47; ABS (PC &#47; ABS)/', '/GreatLakes-en-US/Polymer/Polycarbonate &#47; ABS (PC &#47; ABS)/', '/GreatLakes-en-US/Polymer/Polycarbonate &#47; ABS (PC &#47; ABS)/', '/GreatLakes-en-US/Polymer/Polycarbonate &#47; ABS (PC &#47; ABS)/', '/GreatLakes-en-US/Polymer/Polycarbonate &#47; ABS (PC &#47; ABS)/', '/GreatLakes-en-US/Polymer/Polycarbonate &#47; ABS (PC &#47; ABS)/', '/GreatLakes-en-US/Polymer/Polycarbonate (PC)/', '/GreatLakes-en-US/Polymer/Polycarbonate (PC)/', '/GreatLakes-en-US/Polymer/Polycarbonate (PC)/', '/GreatLakes-en-US/Polymer/Polycarbonate (PC)/', '/GreatLakes-en-US/Polymer/Polyethylene (PE)/', '/GreatLakes-en-US/Polymer/Polyethylene (PE)/', '/GreatLakes-en-US/Polymer/Polyethylene (PE)/', '/GreatLakes-en-US/Polymer/Polyethylene (PE)/', '/GreatLakes-en-US/Polymer/Polyethylene terephthalate (PET)/', '/GreatLakes-en-US/Polymer/Polyethylene terephthalate (PET)/', '/GreatLakes-en-US/Polymer/Polyethylene terephthalate (PET)/', '/GreatLakes-en-US/Polymer/Polyphenylene oxide&#47;HIPS (PPO&#47;HIPS)/', '/GreatLakes-en-US/Polymer/Polypropylene (PP)/', '/GreatLakes-en-US/Polymer/Polypropylene (PP)/', '/GreatLakes-en-US/Polymer/Polypropylene (PP)/', '/GreatLakes-en-US/Polymer/Polypropylene (PP)/', '/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/', '/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/', '/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/', '/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/', '/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/', '/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/', '/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/', '/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/', '/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/', '/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/', '/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/', '/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/', '/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/', '/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/', '/GreatLakes-en-US/Polymer/Polyvinylchloride (PVC)/', '/GreatLakes-en-US/Polymer/Reactive for resin manufacture/', '/GreatLakes-en-US/Polymer/Reactive for resin manufacture/', '/GreatLakes-en-US/Polymer/Rigid polyurethane/', '/GreatLakes-en-US/Polymer/Rigid polyurethane/', '/GreatLakes-en-US/Polymer/Rigid polyurethane/', '/GreatLakes-en-US/Polymer/Rigid polyurethane/', '/GreatLakes-en-US/Polymer/Rigid polyurethane/', '/GreatLakes-en-US/Polymer/Synthetic Rubber/', '/GreatLakes-en-US/Polymer/Synthetic Rubber/', '/GreatLakes-en-US/Polymer/Synthetic Rubber/', '/GreatLakes-en-US/Polymer/Synthetic Rubber/', '/GreatLakes-en-US/Polymer/Unsaturated polyester (additive)/', '/GreatLakes-en-US/Polymer/Unsaturated polyester (additive)/', '/GreatLakes-en-US/Polymer/Unsaturated polyester (additive)/', '/GreatLakes-en-US/Polymer/Unsaturated polyester (reactive)/', '/GreatLakes-en-US/Polymer/Unsaturated polyester (reactive)/'];


    function resetProductsearch() {
        searchText = "";
        selectedCategories = [];

        $("#searchText").val("Search");
        $(".pfSelect").each(function () {
            $(this).val("");
            if ($(this).attr("id").indexOf("_") > 0) {
                //this is a child dro down - hide
                $(this).hide();
            }
        });
        $('.resultItems').html("");
        $('.selectorResults').hide();
        $('.allProducts').show();
    }

    function setProducts() {
        searchText = $("input#searchText").val();

        var countCellData = 0;
        var offset = 0;
        // empty content


        var filterdProducts = [];  // displayed products array
        var key = 0;

        resultsMsg = "<h2>No results matched your search</h2>";

        if (searchText == null || searchText == "Search") {
            searchText = "";
        }

        if (selectedCategories.length > 0 || searchText != "") {
            //There are selected categories to search on
            $.each(products, function (i, object) {
                var productOK = false;
                var productFail = false;

                if (searchText != '') {
                    searchText = searchText.toUpperCase();
                    //remove special characters from search string
                    searchText = searchText.replace("®", "");
                    searchText = searchText.replace("™", "");
                    searchText = searchText.replace("°", "");

                    var fieldsToSearch = object.title + object.shortDesc + " force object to text";
                    fieldsToSearch = fieldsToSearch.toUpperCase();

                    if (searchText.indexOf(" ") > 0) {
                        //search text contains multiple words

                        //split the search text into an array of individual words
                        var searchWords = searchText.split(" ");

                        for (var ind = 0; ind < searchWords.length; ind++) {
                            var searchWord = searchWords[ind];
                            if (searchWord.length > 0) {
                                if (fieldsToSearch.indexOf(searchWord, 0) > -1) {
                                    productOK = true;
                                }
                                else {
                                    productFail = true;
                                }
                            }
                        }
                    }
                    else {
                        //search text contains a single word
                        if (fieldsToSearch.indexOf(searchText, 0) > -1) {
                            productOK = true;
                        }
                        else {
                            productFail = true;
                        }
                    }

                }

                //Simple search for drop down search within drop down option
                var productCategory = object.categories + 'force object to text';

                //NOTE: in order to handle / chars within categories we must swap with html codes for both the
                // selectedCategories arrays and and productCategory array
                productCategory = productCategory.replace(/\//g, "&#47;");

                //loop through all selected categories. Select this product if all categories match
                for (var j = 0; j < selectedCategories.length; j++) {
                    var thisSelectedCategoty = selectedCategories[j];
                    thisSelectedCategoty = thisSelectedCategoty.replace(/\//g, "&#47;");

                    if (productCategory.indexOf(thisSelectedCategoty, 0) > -1) {
                        //This product references the category string selected by the drop downs
                        productOK = true;
                    }
                    else {
                        productFail = true;
                    }
                };

                //add this product to the filteredProduct list if it matches all selected drop downs and search text
                if (productOK && !productFail) {
                    filterdProducts[key] = object;
                    key++;
                }

            });

            // get the amount of results
            var totalResults = filterdProducts.length;

            /****** start build pagination links ******/
            var totalpages = Math.ceil(totalResults / rowsPerPage); // calculate the total pages

            if (totalpages > 1) {
                // fix displayed page number if its biger then exist
                if (currentpage > totalpages) {
                    // set current page to last page
                    currentpage = totalpages;
                }
                // set the offset of the list, based on current page
                offset = (currentpage - 1) * rowsPerPage;

                var pagination = '';
                var lastPage = 0;
                // set the min page of the list, based on the range
                var minPage = parseFloat(currentpage) - parseFloat(range);
                minPage = minPage > 0 ? minPage : 1;
                // if not page 1, don't show back links
                if (currentpage > 1) {
                    // get previous page num
                    pagination += '<button type="button" name="' + (currentpage - 1) + '" class="product_button" title="&#9668;Previous" >&#9668;Previous<\/button>';
                    // show page 1 only if the min page isn`t page 1 (prevent page 1 to show twice)
                    if (minPage > 1) {
                        pagination += '<button type="button" name="1" class="product_button" title="1" >1<\/button>';
                    }
                }

                // loop to show links to range of pages around current page
                for (var x = minPage; x <= (currentpage + range) ; x++) {
                    // validate page number
                    if (x <= totalpages) {
                        lastPage = x;
                        // if this is current page set its value to 0 (prevent click) and set class as selected
                        if (x == currentpage) {
                            pagination += '<button type="button" name="0" class="product_button_selected" title="' + x + '" >' + x + '<\/button>';
                        } else {
                            pagination += '<button type="button" name="' + x + '" class="product_button" title="' + x + '" >' + x + '<\/button>';
                        }
                    }
                }

                // if not on last page, show forward and last page links
                if (currentpage != totalpages) {
                    // get next page
                    var nextPage = parseFloat(currentpage) + 1;
                    if (lastPage < totalpages) {
                        // show page last page only if the min page isn`t last page (prevent page 1 to show twice)
                        pagination += '<button type="button" name="' + totalpages + '" class="product_button" title="' + totalpages + '" >' + totalpages + '<\/button>';
                    }
                    pagination += '<button type="button" name="' + nextPage + '" class="product_button" title="Next&#9658;" >Next&#9658;<\/button>';
                }
                // update the html
                $('.pagination').html(pagination);
            } else {
                // if no pages or just one page dont show pagination
                $('.pagination').html('<button type="button" name="0" class="product_button_selected" title="1" >1<\/button>');
            }
            var offsetEnd = parseFloat(rowsPerPage) + parseFloat(offset);
            /****** end build pagination links ******/


            // build cells content
            var cell = "";

            var pageProducts = filterdProducts.slice(offset, offsetEnd);
            $.each(pageProducts, function (i, object) {
                countCellData++; // flug to know if there is content
                cell += "<div class='result'>\n";
                cell += "   <h4><a href='" + object.link + "'>" + object.title + "</a></h4>\n";
                cell += "   <p>" + object.shortDesc + "</p>";
                cell += "</div>\n";

            });

            if (countCellData > 0) {
                // if exist content
                $('.resultItems').html(cell);
            }
            else {
                cell = resultsMsg + cell;
                $('.resultItems').html(cell);
            }

            $('.allProducts').hide();
            $('.selectorResults').show();

        }
        else {
            //No search criteria - display all products
            $('.resultItems').html("");
            $('.selectorResults').hide();
            $('.allProducts').show();
        }

        setPagination();
    }


    // animante list display
    /*
    function displayProducts()
    {
        $('.selectorResults').fadeOut('slow', function() {
            // Animation complete
            setProducts();
            $('.selectorResults').fadeIn('slow');
        });
    }
    */

    function dropDownChanged() {
        //A drop down has been changed. Loop through all drop downs and set the selectedCategories Array
        //add selected category to the selectedCategories Array
        selectedCategories = [];
        $(".pfSelect").each(function () {
            var dropDownIndex = this.selectedIndex;
            var dropDownValues = this.options;
            var dropDownValue = dropDownValues[dropDownIndex].value;
            if (dropDownValue != "") {
                //Add this text to the selectedCategories array
                selectedCategories.push(dropDownValue);
            }
        });
    }


    function setChildDropDown(childName, parentName) {
        //Set the values in a child drop down to reflect the value selected in the parent
        //show the child drop down if it is not already hidden

        var parentDropDown = document.getElementById(parentName);
        var parentDropDownIndex = parentDropDown.selectedIndex;
        var parentDropDownValues = parentDropDown.options;
        var parentDropDownValue = parentDropDownValues[parentDropDownIndex].value;
        var childLastChar = childName.substring(childName.length - 1, childName.length);

        //Set contents of the child drop down
        $('#' + childName + ' option:gt(0)').remove(); // remove all options, but not the first

        if (parentDropDownValue == "") {
            //reset and hide all children
            if (childLastChar == "1") {
                //Parent is a top level drop down: Hide all L1 and any L2 children
                $('#' + parentName + "_1").hide();
                $('#' + parentName + "_2").hide();
                $('#' + parentName + "_2" + ' option:gt(0)').remove(); // remove all options, but not the first
            }
            else if (childLastChar == "2") {
                //Parent is a L1 drop down: Hide L2 child
                $('#' + childName).hide();
            }
        }
        else {
            var allOptions = "";
            $.each(categories, function (i, category) {
                //looping through all cateogories. Include any child cats that include the selected parent value

                if (category.indexOf(parentDropDownValue, 0) > -1) {
                    //Get child data
                    var catSplit = category.split("/");
                    if (childLastChar == "1") {
                        /*if(catSplit.length > 6)
                        {
                            //we are dealing with a L3 drop down
                            var catVal = "/" + catSplit[2] + "/" + catSplit[3] + "/" + catSplit[4];
                            var catText = catSplit[4];
                            if(allOptions.indexOf('<option value="' + catVal + '"') < 0)
                            {
                                allOptions += '<option value="' + catVal + '">' + catText + '</option>';
                            }
                        }
                        else */
                        if (catSplit.length > 5) {
                            //we are dealing with a L2 drop down
                            var catVal = "/" + catSplit[2] + "/" + catSplit[3] + "/" + catSplit[4];
                            var catText = catSplit[4];
                            if (allOptions.indexOf('<option value="' + catVal + '"') < 0) {
                                allOptions += '<option value="' + catVal + '">' + catText + '</option>';
                            }
                        }
                    }
                    else if (childLastChar == "2") {
                        if (catSplit.length > 6) {
                            var catVal = "/" + catSplit[2] + "/" + catSplit[3] + "/" + catSplit[4] + "/" + catSplit[5];
                            var catText = catSplit[5];
                            if (allOptions.indexOf('<option value="' + catVal + '"') < 0) {
                                allOptions += '<option value="' + catVal + '">' + catText + '</option>';
                            }
                        }
                    }
                }
            });

            if (allOptions.length > 0) {
                $("#" + childName).append(allOptions);

                $('#' + childName).show();
            }
        }
    }

    // page button click
    function setPagination() {
        $('.pagination button[name!=0]').click(function () {
            currentpage = $(this).attr('name');
            setProducts();
        });
    }

    $(document).ready(function () {
        //set drop down on change functions

        $('#Application').change(function () {


            dropDownChanged();

            //Set to display results on first page
            currentpage = 1;

            //displayProducts();
            setProducts();
        });


        $('#Market').change(function () {

            //Set Child drop down
            setChildDropDown("Market_1", "Market");


            dropDownChanged();

            //Set to display results on first page
            currentpage = 1;

            //displayProducts();
            setProducts();
        });


        $('#Market_1').change(function () {


            dropDownChanged();

            //Set to display results on first page
            currentpage = 1;

            //displayProducts();
            setProducts();
        });


        $('#Polymer').change(function () {


            dropDownChanged();

            //Set to display results on first page
            currentpage = 1;

            //displayProducts();
            setProducts();
        });



        //Trigger search is return key pressed inside search box
        $("#searchText").keyup(function (event) {
            //if(event.keyCode == 13)
            //{
            //displayProducts();
            setProducts();
            //}
        });

    });


</script>
