﻿<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FomrezFindProduct.ascx.cs" Inherits="ChemturaSPMigration.FomrezCustomWebParts.FomrezFindProduct.FomrezFindProduct" %>


<script type="text/javascript" src="/Sites/Fomrez/Style Library/FormezCustomFiles/Scripts/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/Sites/Fomrez/Style Library/FormezCustomFiles/Scripts/jquery.selectbox-0.1.3.js"></script>
<link href="/Sites/Fomrez/Style Library/FormezCustomFiles/Styles/FomrezProducts.css" rel="stylesheet" type="text/css" />


<div id="productSelectorWrapper" class="fomrezProdFinder">
    <div class="productSelector">
        <h3>FIND THE RIGHT PRODUCT</h3>
        <!--<input id="searchText" type="text" onclick="if(this.value=='Search'){this.value = '';}" value="Search" />-->
        <input id="searchText" onfocus="if (this.value=='Search') this.value = ''" onblur="if (this.value=='') this.value = 'Search'" type="text" maxlength="80" value="Search" />
        <h4>Application</h4>
        <asp:DropDownList ID="ddlApplication" runat="server" CssClass="pfSelect">
            <asp:ListItem Text="" Value="0" />
        </asp:DropDownList>

        <h4>Hydroxyl Number Range</h4>
        <asp:DropDownList ID="ddlHydroxyl1s" runat="server" CssClass="pfSelect">
            <asp:ListItem Text="" Value="0" />
        </asp:DropDownList>
        <h4>Type</h4>
        <asp:DropDownList ID="ddlType" runat="server" CssClass="pfSelect">
            <asp:ListItem Text="" Value="0" />
        </asp:DropDownList>

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
                    <h4><a href='<%# GetURL(Eval("PageURL"))%>'><%# Eval("ProdName")%></a></h4>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>



<script type="text/javascript">

    $(document).ready(function () {
        //set drop down on change functions

        // $('#Application').change(function () {
        $('[id*=ddlApplication]').change(function (e) {
            dropDownChanged();
            //Set to display results on first page
            currentpage = 1;
            //displayProducts();
            setProducts();
        });
        //$('#Hydroxyl--Number--Range').change(function () {
        $('[id*=ddlHydroxyl1s]').change(function (e) {
            dropDownChanged();
            //Set to display results on first page
            currentpage = 1;
            //displayProducts();
            setProducts();
        });
        //$('#Type').change(function () {
        $('[id*=ddlType]').change(function (e) {
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
    var categories = [<%=strCatJSON%>];

    function resetProductsearch() {
        searchText = "";
        selectedCategories = [];

        $("#searchText").val("Search");
        $(".pfSelect").each(function () {
            $(this).val("");
            if ($(this).attr("id").indexOf("_") > 0) {
                //this is a child dro down - hide
                // $(this).hide();
                $('[id*=ddlApplication]').prop('selectedIndex', 0);
                $('[id*=ddlType]').prop('selectedIndex', 0);
                $('[id*=ddlHydroxyl1s]').prop('selectedIndex', 0);
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

</script>
