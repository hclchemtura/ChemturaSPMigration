﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ChemturaSPMigration.FomrezCustomWebParts.FomrezFindProduct {
    using System.Web.UI.WebControls.Expressions;
    using System.Web.UI.HtmlControls;
    using System.Collections;
    using System.Text;
    using System.Web.UI;
    using System.Collections.Generic;
    using System.Linq;
    using System.Xml.Linq;
    using Microsoft.SharePoint.WebPartPages;
    using System.Web.SessionState;
    using System.Configuration;
    using Microsoft.SharePoint;
    using System.Web;
    using System.Web.DynamicData;
    using System.Web.Caching;
    using System.Web.Profile;
    using System.ComponentModel.DataAnnotations;
    using System.Web.UI.WebControls;
    using System.Web.Security;
    using System;
    using Microsoft.SharePoint.Utilities;
    using System.Text.RegularExpressions;
    using System.Collections.Specialized;
    using System.Web.UI.WebControls.WebParts;
    using Microsoft.SharePoint.WebControls;
    using System.CodeDom.Compiler;
    
    
    public partial class FomrezFindProduct {
        
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        protected global::System.Web.UI.WebControls.DropDownList ddlApplication;
        
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        protected global::System.Web.UI.WebControls.DropDownList ddlHydroxyl1s;
        
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        protected global::System.Web.UI.WebControls.DropDownList ddlType;
        
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        protected global::System.Web.UI.WebControls.Repeater rprProduct;
        
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebPartCodeGenerator", "14.0.0.0")]
        public static implicit operator global::System.Web.UI.TemplateControl(FomrezFindProduct target) 
        {
            return target == null ? null : target.TemplateControl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        private global::System.Web.UI.WebControls.ListItem @__BuildControl__control3() {
            global::System.Web.UI.WebControls.ListItem @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.ListItem();
            @__ctrl.Text = "";
            @__ctrl.Value = "0";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        private void @__BuildControl__control2(System.Web.UI.WebControls.ListItemCollection @__ctrl) {
            global::System.Web.UI.WebControls.ListItem @__ctrl1;
            @__ctrl1 = this.@__BuildControl__control3();
            @__ctrl.Add(@__ctrl1);
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        private global::System.Web.UI.WebControls.DropDownList @__BuildControlddlApplication() {
            global::System.Web.UI.WebControls.DropDownList @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.DropDownList();
            this.ddlApplication = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "ddlApplication";
            @__ctrl.CssClass = "pfSelect";
            this.@__BuildControl__control2(@__ctrl.Items);
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        private global::System.Web.UI.WebControls.ListItem @__BuildControl__control5() {
            global::System.Web.UI.WebControls.ListItem @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.ListItem();
            @__ctrl.Text = "";
            @__ctrl.Value = "0";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        private void @__BuildControl__control4(System.Web.UI.WebControls.ListItemCollection @__ctrl) {
            global::System.Web.UI.WebControls.ListItem @__ctrl1;
            @__ctrl1 = this.@__BuildControl__control5();
            @__ctrl.Add(@__ctrl1);
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        private global::System.Web.UI.WebControls.DropDownList @__BuildControlddlHydroxyl1s() {
            global::System.Web.UI.WebControls.DropDownList @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.DropDownList();
            this.ddlHydroxyl1s = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "ddlHydroxyl1s";
            @__ctrl.CssClass = "pfSelect";
            this.@__BuildControl__control4(@__ctrl.Items);
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        private global::System.Web.UI.WebControls.ListItem @__BuildControl__control7() {
            global::System.Web.UI.WebControls.ListItem @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.ListItem();
            @__ctrl.Text = "";
            @__ctrl.Value = "0";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        private void @__BuildControl__control6(System.Web.UI.WebControls.ListItemCollection @__ctrl) {
            global::System.Web.UI.WebControls.ListItem @__ctrl1;
            @__ctrl1 = this.@__BuildControl__control7();
            @__ctrl.Add(@__ctrl1);
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        private global::System.Web.UI.WebControls.DropDownList @__BuildControlddlType() {
            global::System.Web.UI.WebControls.DropDownList @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.DropDownList();
            this.ddlType = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "ddlType";
            @__ctrl.CssClass = "pfSelect";
            this.@__BuildControl__control6(@__ctrl.Items);
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        private global::System.Web.UI.DataBoundLiteralControl @__BuildControl__control9() {
            global::System.Web.UI.DataBoundLiteralControl @__ctrl;
            @__ctrl = new global::System.Web.UI.DataBoundLiteralControl(3, 2);
            @__ctrl.TemplateControl = this;
            @__ctrl.SetStaticString(0, "\r\n                <div class=\"result\">\r\n                    <h4><a href=\'");
            @__ctrl.SetStaticString(1, "\'>");
            @__ctrl.SetStaticString(2, "</a></h4>\r\n                </div>\r\n            ");
            @__ctrl.DataBinding += new System.EventHandler(this.@__DataBind__control9);
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        public void @__DataBind__control9(object sender, System.EventArgs e) {
            System.Web.UI.WebControls.RepeaterItem Container;
            System.Web.UI.DataBoundLiteralControl target;
            target = ((System.Web.UI.DataBoundLiteralControl)(sender));
            Container = ((System.Web.UI.WebControls.RepeaterItem)(target.BindingContainer));
            target.SetDataBoundString(0, global::System.Convert.ToString(GetURL(Eval("PageURL")), global::System.Globalization.CultureInfo.CurrentCulture));
            target.SetDataBoundString(1, global::System.Convert.ToString(Eval("ProdName"), global::System.Globalization.CultureInfo.CurrentCulture));
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        private void @__BuildControl__control8(System.Web.UI.Control @__ctrl) {
            global::System.Web.UI.DataBoundLiteralControl @__ctrl1;
            @__ctrl1 = this.@__BuildControl__control9();
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            @__parser.AddParsedSubObject(@__ctrl1);
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        private global::System.Web.UI.WebControls.Repeater @__BuildControlrprProduct() {
            global::System.Web.UI.WebControls.Repeater @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Repeater();
            this.rprProduct = @__ctrl;
            @__ctrl.ItemTemplate = new System.Web.UI.CompiledTemplateBuilder(new System.Web.UI.BuildTemplateMethod(this.@__BuildControl__control8));
            @__ctrl.ID = "rprProduct";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        private void @__BuildControlTree(global::ChemturaSPMigration.FomrezCustomWebParts.FomrezFindProduct.FomrezFindProduct @__ctrl) {
            global::System.Web.UI.WebControls.DropDownList @__ctrl1;
            @__ctrl1 = this.@__BuildControlddlApplication();
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            @__parser.AddParsedSubObject(@__ctrl1);
            global::System.Web.UI.WebControls.DropDownList @__ctrl2;
            @__ctrl2 = this.@__BuildControlddlHydroxyl1s();
            @__parser.AddParsedSubObject(@__ctrl2);
            global::System.Web.UI.WebControls.DropDownList @__ctrl3;
            @__ctrl3 = this.@__BuildControlddlType();
            @__parser.AddParsedSubObject(@__ctrl3);
            global::System.Web.UI.WebControls.Repeater @__ctrl4;
            @__ctrl4 = this.@__BuildControlrprProduct();
            @__parser.AddParsedSubObject(@__ctrl4);
            @__ctrl.SetRenderMethodDelegate(new System.Web.UI.RenderMethod(this.@__Render__control1));
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        private void @__Render__control1(System.Web.UI.HtmlTextWriter @__w, System.Web.UI.Control parameterContainer) {
            @__w.Write(@"


<script type=""text/javascript"" src=""/Sites/Fomrez/Style Library/FormezCustomFiles/Scripts/jquery-1.7.2.min.js""></script>
<script type=""text/javascript"" src=""/Sites/Fomrez/Style Library/FormezCustomFiles/Scripts/jquery.selectbox-0.1.3.js""></script>
<link href=""/Sites/Fomrez/Style Library/FormezCustomFiles/Styles/FomrezProducts.css"" rel=""stylesheet"" type=""text/css"" />


<div id=""productSelectorWrapper"" class=""fomrezProdFinder"">
    <div class=""productSelector"">
        <h3>FIND THE RIGHT PRODUCT</h3>
        <!--<input id=""searchText"" type=""text"" onclick=""if(this.value=='Search'){this.value = '';}"" value=""Search"" />-->
        <input id=""searchText"" onfocus=""if (this.value=='Search') this.value = ''"" onblur=""if (this.value=='') this.value = 'Search'"" type=""text"" maxlength=""80"" value=""Search"" />
        <h4>Application</h4>
        ");
            parameterContainer.Controls[0].RenderControl(@__w);
            @__w.Write("\r\n\r\n        <h4>Hydroxyl Number Range</h4>\r\n        ");
            parameterContainer.Controls[1].RenderControl(@__w);
            @__w.Write("\r\n        <h4>Type</h4>\r\n        ");
            parameterContainer.Controls[2].RenderControl(@__w);
            @__w.Write(@"

        <input type=""button"" id=""reset"" name=""reset"" onclick=""resetProductsearch()"" value=""Reset"" title=""Reset"" />
    </div>
    <div class=""selectorResults"" style=""display: none"">
        <h3>Results</h3>
        <p class='pagination'></p>
        <div class=""resultItems"">
        </div>
    </div>
    <!--- /.selectorResults --->
    <div class=""allProducts"">
        <h3>All Products</h3>
        ");
            parameterContainer.Controls[3].RenderControl(@__w);
            @__w.Write("\r\n    </div>\r\n</div>\r\n\r\n\r\n\r\n<script type=\"text/javascript\">\r\n\r\n    $(document).re" +
                    "ady(function () {\r\n        //set drop down on change functions\r\n\r\n        // $(\'" +
                    "#Application\').change(function () {\r\n        $(\'[id*=ddlApplication]\').change(fu" +
                    "nction (e) {\r\n            dropDownChanged();\r\n            //Set to display resul" +
                    "ts on first page\r\n            currentpage = 1;\r\n            //displayProducts();" +
                    "\r\n            setProducts();\r\n        });\r\n        //$(\'#Hydroxyl--Number--Range" +
                    "\').change(function () {\r\n        $(\'[id*=ddlHydroxyl1s]\').change(function (e) {\r" +
                    "\n            dropDownChanged();\r\n            //Set to display results on first p" +
                    "age\r\n            currentpage = 1;\r\n            //displayProducts();\r\n           " +
                    " setProducts();\r\n        });\r\n        //$(\'#Type\').change(function () {\r\n       " +
                    " $(\'[id*=ddlType]\').change(function (e) {\r\n            dropDownChanged();\r\n     " +
                    "       //Set to display results on first page\r\n            currentpage = 1;\r\n   " +
                    "         //displayProducts();\r\n            setProducts();\r\n        });\r\n        " +
                    "//Trigger search is return key pressed inside search box\r\n        $(\"#searchText" +
                    "\").keyup(function (event) {\r\n            //if(event.keyCode == 13)\r\n            " +
                    "//{\r\n            //displayProducts();\r\n            setProducts();\r\n            /" +
                    "/}\r\n        });\r\n\r\n    });\r\n\r\n\r\n    // start user setings\r\n    var maxColumn = 2" +
                    ";    // max cells in a row\r\n    var range = 3;    // range of num links to show\r" +
                    "\n    // end user setings\r\n\r\n    var rowsPerPage = 10;\r\n    var currentpage = 1;\r" +
                    "\n    var sortBy = \'\';\r\n    var sortOrder = 0;\r\n    var searchText = \'\';\r\n    var" +
                    " resultsMsg = \'\';\r\n\r\n    var selectedCategories = new Array();\r\n\r\n    // the pro" +
                    "ducts and categories information arrays\r\n    var products = [");
            @__w.Write(strProdJSON);

            @__w.Write("];\r\n    var categories = [");
              @__w.Write(strCatJSON);

            @__w.Write("];\r\n\r\n    function resetProductsearch() {\r\n        searchText = \"\";\r\n        sele" +
                    "ctedCategories = [];\r\n\r\n        $(\"#searchText\").val(\"Search\");\r\n        $(\".pfS" +
                    "elect\").each(function () {\r\n            $(this).val(\"\");\r\n            if ($(this" +
                    ").attr(\"id\").indexOf(\"_\") > 0) {\r\n                //this is a child dro down - h" +
                    "ide\r\n                // $(this).hide();\r\n                $(\'[id*=ddlApplication]" +
                    "\').prop(\'selectedIndex\', 0);\r\n                $(\'[id*=ddlType]\').prop(\'selectedI" +
                    "ndex\', 0);\r\n                $(\'[id*=ddlHydroxyl1s]\').prop(\'selectedIndex\', 0);\r\n" +
                    "            }\r\n        });\r\n        $(\'.resultItems\').html(\"\");\r\n        $(\'.sel" +
                    "ectorResults\').hide();\r\n        $(\'.allProducts\').show();\r\n    }\r\n\r\n    function" +
                    " setProducts() {\r\n        searchText = $(\"input#searchText\").val();\r\n\r\n        v" +
                    "ar countCellData = 0;\r\n        var offset = 0;\r\n        // empty content\r\n\r\n\r\n  " +
                    "      var filterdProducts = [];  // displayed products array\r\n        var key = " +
                    "0;\r\n\r\n        resultsMsg = \"<h2>No results matched your search</h2>\";\r\n\r\n       " +
                    " if (searchText == null || searchText == \"Search\") {\r\n            searchText = \"" +
                    "\";\r\n        }\r\n\r\n        if (selectedCategories.length > 0 || searchText != \"\") " +
                    "{\r\n            //There are selected categories to search on\r\n            $.each(" +
                    "products, function (i, object) {\r\n                var productOK = false;\r\n      " +
                    "          var productFail = false;\r\n\r\n                if (searchText != \'\') {\r\n " +
                    "                   searchText = searchText.toUpperCase();\r\n                    /" +
                    "/remove special characters from search string\r\n                    searchText = " +
                    "searchText.replace(\"®\", \"\");\r\n                    searchText = searchText.replac" +
                    "e(\"™\", \"\");\r\n                    searchText = searchText.replace(\"°\", \"\");\r\n\r\n  " +
                    "                  var fieldsToSearch = object.title + object.shortDesc + \" force" +
                    " object to text\";\r\n                    fieldsToSearch = fieldsToSearch.toUpperCa" +
                    "se();\r\n\r\n                    if (searchText.indexOf(\" \") > 0) {\r\n               " +
                    "         //search text contains multiple words\r\n\r\n                        //spli" +
                    "t the search text into an array of individual words\r\n                        var" +
                    " searchWords = searchText.split(\" \");\r\n\r\n                        for (var ind = " +
                    "0; ind < searchWords.length; ind++) {\r\n                            var searchWor" +
                    "d = searchWords[ind];\r\n                            if (searchWord.length > 0) {\r" +
                    "\n                                if (fieldsToSearch.indexOf(searchWord, 0) > -1)" +
                    " {\r\n                                    productOK = true;\r\n                     " +
                    "           }\r\n                                else {\r\n                          " +
                    "          productFail = true;\r\n                                }\r\n              " +
                    "              }\r\n                        }\r\n                    }\r\n             " +
                    "       else {\r\n                        //search text contains a single word\r\n   " +
                    "                     if (fieldsToSearch.indexOf(searchText, 0) > -1) {\r\n        " +
                    "                    productOK = true;\r\n                        }\r\n              " +
                    "          else {\r\n                            productFail = true;\r\n             " +
                    "           }\r\n                    }\r\n\r\n                }\r\n\r\n                //Si" +
                    "mple search for drop down search within drop down option\r\n                var pr" +
                    "oductCategory = object.categories + \'force object to text\';\r\n\r\n                /" +
                    "/NOTE: in order to handle / chars within categories we must swap with html codes" +
                    " for both the\r\n                // selectedCategories arrays and and productCateg" +
                    "ory array\r\n                productCategory = productCategory.replace(/\\//g, \"&#4" +
                    "7;\");\r\n\r\n                //loop through all selected categories. Select this pro" +
                    "duct if all categories match\r\n                for (var j = 0; j < selectedCatego" +
                    "ries.length; j++) {\r\n                    var thisSelectedCategoty = selectedCate" +
                    "gories[j];\r\n                    thisSelectedCategoty = thisSelectedCategoty.repl" +
                    "ace(/\\//g, \"&#47;\");\r\n\r\n                    if (productCategory.indexOf(thisSele" +
                    "ctedCategoty, 0) > -1) {\r\n                        //This product references the " +
                    "category string selected by the drop downs\r\n                        productOK = " +
                    "true;\r\n                    }\r\n                    else {\r\n                      " +
                    "  productFail = true;\r\n                    }\r\n                };\r\n\r\n            " +
                    "    //add this product to the filteredProduct list if it matches all selected dr" +
                    "op downs and search text\r\n                if (productOK && !productFail) {\r\n    " +
                    "                filterdProducts[key] = object;\r\n                    key++;\r\n    " +
                    "            }\r\n\r\n            });\r\n\r\n            // get the amount of results\r\n  " +
                    "          var totalResults = filterdProducts.length;\r\n\r\n            /****** star" +
                    "t build pagination links ******/\r\n            var totalpages = Math.ceil(totalRe" +
                    "sults / rowsPerPage); // calculate the total pages\r\n\r\n            if (totalpages" +
                    " > 1) {\r\n                // fix displayed page number if its biger then exist\r\n " +
                    "               if (currentpage > totalpages) {\r\n                    // set curre" +
                    "nt page to last page\r\n                    currentpage = totalpages;\r\n           " +
                    "     }\r\n                // set the offset of the list, based on current page\r\n  " +
                    "              offset = (currentpage - 1) * rowsPerPage;\r\n\r\n                var p" +
                    "agination = \'\';\r\n                var lastPage = 0;\r\n                // set the m" +
                    "in page of the list, based on the range\r\n                var minPage = parseFloa" +
                    "t(currentpage) - parseFloat(range);\r\n                minPage = minPage > 0 ? min" +
                    "Page : 1;\r\n                // if not page 1, don\'t show back links\r\n            " +
                    "    if (currentpage > 1) {\r\n                    // get previous page num\r\n      " +
                    "              pagination += \'<button type=\"button\" name=\"\' + (currentpage - 1) +" +
                    " \'\" class=\"product_button\" title=\"&#9668;Previous\" >&#9668;Previous<\\/button>\';\r" +
                    "\n                    // show page 1 only if the min page isn`t page 1 (prevent p" +
                    "age 1 to show twice)\r\n                    if (minPage > 1) {\r\n                  " +
                    "      pagination += \'<button type=\"button\" name=\"1\" class=\"product_button\" title" +
                    "=\"1\" >1<\\/button>\';\r\n                    }\r\n                }\r\n\r\n               " +
                    " // loop to show links to range of pages around current page\r\n                fo" +
                    "r (var x = minPage; x <= (currentpage + range) ; x++) {\r\n                    // " +
                    "validate page number\r\n                    if (x <= totalpages) {\r\n              " +
                    "          lastPage = x;\r\n                        // if this is current page set " +
                    "its value to 0 (prevent click) and set class as selected\r\n                      " +
                    "  if (x == currentpage) {\r\n                            pagination += \'<button ty" +
                    "pe=\"button\" name=\"0\" class=\"product_button_selected\" title=\"\' + x + \'\" >\' + x + " +
                    "\'<\\/button>\';\r\n                        } else {\r\n                            pag" +
                    "ination += \'<button type=\"button\" name=\"\' + x + \'\" class=\"product_button\" title=" +
                    "\"\' + x + \'\" >\' + x + \'<\\/button>\';\r\n                        }\r\n                 " +
                    "   }\r\n                }\r\n\r\n                // if not on last page, show forward " +
                    "and last page links\r\n                if (currentpage != totalpages) {\r\n         " +
                    "           // get next page\r\n                    var nextPage = parseFloat(curre" +
                    "ntpage) + 1;\r\n                    if (lastPage < totalpages) {\r\n                " +
                    "        // show page last page only if the min page isn`t last page (prevent pag" +
                    "e 1 to show twice)\r\n                        pagination += \'<button type=\"button\"" +
                    " name=\"\' + totalpages + \'\" class=\"product_button\" title=\"\' + totalpages + \'\" >\' " +
                    "+ totalpages + \'<\\/button>\';\r\n                    }\r\n                    paginat" +
                    "ion += \'<button type=\"button\" name=\"\' + nextPage + \'\" class=\"product_button\" tit" +
                    "le=\"Next&#9658;\" >Next&#9658;<\\/button>\';\r\n                }\r\n                //" +
                    " update the html\r\n                $(\'.pagination\').html(pagination);\r\n          " +
                    "  } else {\r\n                // if no pages or just one page dont show pagination" +
                    "\r\n                $(\'.pagination\').html(\'<button type=\"button\" name=\"0\" class=\"p" +
                    "roduct_button_selected\" title=\"1\" >1<\\/button>\');\r\n            }\r\n            va" +
                    "r offsetEnd = parseFloat(rowsPerPage) + parseFloat(offset);\r\n            /******" +
                    " end build pagination links ******/\r\n\r\n\r\n            // build cells content\r\n   " +
                    "         var cell = \"\";\r\n\r\n            var pageProducts = filterdProducts.slice(" +
                    "offset, offsetEnd);\r\n            $.each(pageProducts, function (i, object) {\r\n  " +
                    "              countCellData++; // flug to know if there is content\r\n            " +
                    "    cell += \"<div class=\'result\'>\\n\";\r\n                cell += \"   <h4><a href=\'" +
                    "\" + object.link + \"\'>\" + object.title + \"</a></h4>\\n\";\r\n                cell += " +
                    "\"   <p>\" + object.shortDesc + \"</p>\";\r\n                cell += \"</div>\\n\";\r\n\r\n  " +
                    "          });\r\n\r\n            if (countCellData > 0) {\r\n                // if exi" +
                    "st content\r\n                $(\'.resultItems\').html(cell);\r\n            }\r\n      " +
                    "      else {\r\n                cell = resultsMsg + cell;\r\n                $(\'.res" +
                    "ultItems\').html(cell);\r\n            }\r\n\r\n            $(\'.allProducts\').hide();\r\n" +
                    "            $(\'.selectorResults\').show();\r\n\r\n        }\r\n        else {\r\n        " +
                    "    //No search criteria - display all products\r\n            $(\'.resultItems\').h" +
                    "tml(\"\");\r\n            $(\'.selectorResults\').hide();\r\n            $(\'.allProducts" +
                    "\').show();\r\n        }\r\n\r\n        setPagination();\r\n    }\r\n\r\n\r\n    // animante li" +
                    "st display\r\n    /*\r\n    function displayProducts()\r\n    {\r\n        $(\'.selectorR" +
                    "esults\').fadeOut(\'slow\', function() {\r\n            // Animation complete\r\n      " +
                    "      setProducts();\r\n            $(\'.selectorResults\').fadeIn(\'slow\');\r\n       " +
                    " });\r\n    }\r\n    */\r\n\r\n    function dropDownChanged() {\r\n        //A drop down h" +
                    "as been changed. Loop through all drop downs and set the selectedCategories Arra" +
                    "y\r\n        //add selected category to the selectedCategories Array\r\n        sele" +
                    "ctedCategories = [];\r\n        $(\".pfSelect\").each(function () {\r\n            var" +
                    " dropDownIndex = this.selectedIndex;\r\n            var dropDownValues = this.opti" +
                    "ons;\r\n            var dropDownValue = dropDownValues[dropDownIndex].value;\r\n    " +
                    "        if (dropDownValue != \"\") {\r\n                //Add this text to the selec" +
                    "tedCategories array\r\n                selectedCategories.push(dropDownValue);\r\n  " +
                    "          }\r\n        });\r\n    }\r\n\r\n\r\n    function setChildDropDown(childName, pa" +
                    "rentName) {\r\n        //Set the values in a child drop down to reflect the value " +
                    "selected in the parent\r\n        //show the child drop down if it is not already " +
                    "hidden\r\n\r\n        var parentDropDown = document.getElementById(parentName);\r\n   " +
                    "     var parentDropDownIndex = parentDropDown.selectedIndex;\r\n        var parent" +
                    "DropDownValues = parentDropDown.options;\r\n        var parentDropDownValue = pare" +
                    "ntDropDownValues[parentDropDownIndex].value;\r\n        var childLastChar = childN" +
                    "ame.substring(childName.length - 1, childName.length);\r\n\r\n        //Set contents" +
                    " of the child drop down\r\n        $(\'#\' + childName + \' option:gt(0)\').remove(); " +
                    "// remove all options, but not the first\r\n\r\n        if (parentDropDownValue == \"" +
                    "\") {\r\n            //reset and hide all children\r\n            if (childLastChar =" +
                    "= \"1\") {\r\n                //Parent is a top level drop down: Hide all L1 and any" +
                    " L2 children\r\n                $(\'#\' + parentName + \"_1\").hide();\r\n              " +
                    "  $(\'#\' + parentName + \"_2\").hide();\r\n                $(\'#\' + parentName + \"_2\" " +
                    "+ \' option:gt(0)\').remove(); // remove all options, but not the first\r\n         " +
                    "   }\r\n            else if (childLastChar == \"2\") {\r\n                //Parent is " +
                    "a L1 drop down: Hide L2 child\r\n                $(\'#\' + childName).hide();\r\n     " +
                    "       }\r\n        }\r\n        else {\r\n            var allOptions = \"\";\r\n         " +
                    "   $.each(categories, function (i, category) {\r\n                //looping throug" +
                    "h all cateogories. Include any child cats that include the selected parent value" +
                    "\r\n\r\n                if (category.indexOf(parentDropDownValue, 0) > -1) {\r\n      " +
                    "              //Get child data\r\n                    var catSplit = category.spli" +
                    "t(\"/\");\r\n                    if (childLastChar == \"1\") {\r\n                      " +
                    "  /*if(catSplit.length > 6)\r\n                        {\r\n                        " +
                    "    //we are dealing with a L3 drop down\r\n                            var catVal" +
                    " = \"/\" + catSplit[2] + \"/\" + catSplit[3] + \"/\" + catSplit[4];\r\n                 " +
                    "           var catText = catSplit[4];\r\n                            if(allOptions" +
                    ".indexOf(\'<option value=\"\' + catVal + \'\"\') < 0)\r\n                            {\r\n" +
                    "                                allOptions += \'<option value=\"\' + catVal + \'\">\' " +
                    "+ catText + \'</option>\';\r\n                            }\r\n                       " +
                    " }\r\n                        else */\r\n                        if (catSplit.length" +
                    " > 5) {\r\n                            //we are dealing with a L2 drop down\r\n     " +
                    "                       var catVal = \"/\" + catSplit[2] + \"/\" + catSplit[3] + \"/\" " +
                    "+ catSplit[4];\r\n                            var catText = catSplit[4];\r\n        " +
                    "                    if (allOptions.indexOf(\'<option value=\"\' + catVal + \'\"\') < 0" +
                    ") {\r\n                                allOptions += \'<option value=\"\' + catVal + " +
                    "\'\">\' + catText + \'</option>\';\r\n                            }\r\n                  " +
                    "      }\r\n                    }\r\n                    else if (childLastChar == \"2" +
                    "\") {\r\n                        if (catSplit.length > 6) {\r\n                      " +
                    "      var catVal = \"/\" + catSplit[2] + \"/\" + catSplit[3] + \"/\" + catSplit[4] + \"" +
                    "/\" + catSplit[5];\r\n                            var catText = catSplit[5];\r\n     " +
                    "                       if (allOptions.indexOf(\'<option value=\"\' + catVal + \'\"\') " +
                    "< 0) {\r\n                                allOptions += \'<option value=\"\' + catVal" +
                    " + \'\">\' + catText + \'</option>\';\r\n                            }\r\n               " +
                    "         }\r\n                    }\r\n                }\r\n            });\r\n\r\n       " +
                    "     if (allOptions.length > 0) {\r\n                $(\"#\" + childName).append(all" +
                    "Options);\r\n\r\n                $(\'#\' + childName).show();\r\n            }\r\n        " +
                    "}\r\n    }\r\n\r\n    // page button click\r\n    function setPagination() {\r\n        $(" +
                    "\'.pagination button[name!=0]\').click(function () {\r\n            currentpage = $(" +
                    "this).attr(\'name\');\r\n            setProducts();\r\n        });\r\n    }\r\n\r\n</script>" +
                    "\r\n");
        }
        
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        private void InitializeControl() {
            this.@__BuildControlTree(this);
            this.Load += new global::System.EventHandler(this.Page_Load);
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        protected virtual object Eval(string expression) {
            return global::System.Web.UI.DataBinder.Eval(this.Page.GetDataItem(), expression);
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        [GeneratedCodeAttribute("Microsoft.VisualStudio.SharePoint.ProjectExtensions.CodeGenerators.SharePointWebP" +
            "artCodeGenerator", "14.0.0.0")]
        protected virtual string Eval(string expression, string format) {
            return global::System.Web.UI.DataBinder.Eval(this.Page.GetDataItem(), expression, format);
        }
    }
}
