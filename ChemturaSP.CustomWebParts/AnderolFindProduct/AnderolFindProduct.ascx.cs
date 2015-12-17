using System;
using System.ComponentModel;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint;
using System.Data;
using System.Text;
using Microsoft.SharePoint.Utilities;

namespace ChemturaSP.CustomWebParts.AnderolFindProduct
{
    [ToolboxItemAttribute(false)]
    public partial class AnderolFindProduct : WebPart
    {
        public string strProdJSON, strCatJSON;
        // Uncomment the following SecurityPermission attribute only when doing Performance Profiling on a farm solution
        // using the Instrumentation method, and then remove the SecurityPermission attribute when the code is ready
        // for production. Because the SecurityPermission attribute bypasses the security check for callers of
        // your constructor, it's not recommended for production purposes.
        // [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Assert, UnmanagedCode = true)]
        public AnderolFindProduct()
        {
        }
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            InitializeControl();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.ChromeType = PartChromeType.None;
                BindData();
                setProdCat();
            }
        }
        public void setProdCat()
        {
            try
            {
                using (SPSite site = SPContext.Current.Site)
                {
                    using (SPWeb web = SPContext.Current.Web)
                    {
                        SPList spList = web.Lists.TryGetList("Products");
                        if (spList != null)
                        {
                            SPQuery spQuery = new SPQuery();
                            //spQuery.Query = "< OrderBy >< FieldRef Name = 'ProdName' /></ OrderBy >< Where >< Eq >< FieldRef Name = 'Application_Type' />< Value Type = 'Text' > Flame_Retardants </ Value ></ Eq ></ Where >";
                            spQuery.Query = "<OrderBy><FieldRef Name='ID' /></OrderBy>";
                            SPListItemCollection spItemCollection = spList.GetItems(spQuery);

                            if (spItemCollection != null)
                            {
                                DataTable dt = spItemCollection.GetDataTable();
                                foreach (DataRow row in dt.Rows) // Loop over the rows.
                                {
                                    string id = Convert.ToString(row["ID"]);
                                    string title = Convert.ToString(row["ProdName"]);


                                    string indusType = Convert.ToString(row["IndustrialType"]);
                                    string aeroType = Convert.ToString(row["AerospaceType"]);


                                    string strIndus = string.Empty;
                                    string strAero = string.Empty;




                                    //string catType = string.Empty;

                                    // ApplicationType
                                    string catIndus = string.Empty;
                                    if (indusType != string.Empty)
                                    {
                                        if (indusType.IndexOf("#") != -1)
                                        {
                                            var indusArr = indusType.Split('#');
                                            for (int i = 0; i < indusArr.Length; i++)
                                            {
                                                if (Convert.ToString(indusArr[i]) != string.Empty)
                                                {
                                                    strIndus += "Home/Markets--and--Applications/Industrial/" + indusArr[i] + "/";

                                                    catIndus += ", 'Home/Markets--and--Applications/Industrial/" + indusArr[i] + "//'";
                                                }
                                            }
                                        }
                                        else
                                        {
                                            strIndus = "Home/Markets--and--Applications/Industrial/" + indusType + "/";
                                            catIndus = ", 'Home/Markets--and--Applications/Industrial/" + indusType + "//'";

                                        }
                                    }


                                    //MarketType
                                    string catAero = string.Empty;
                                    if (aeroType != string.Empty)
                                    {
                                        if (aeroType.IndexOf("#") != -1)
                                        {
                                            var aeroArr = aeroType.Split('#');
                                            for (int i = 0; i < aeroArr.Length; i++)
                                            {
                                                if (Convert.ToString(aeroArr[i]) != string.Empty)
                                                {
                                                    strAero += "Home/Markets--and--Applications/Aerospace--and--Defense/" + aeroArr[i] + "/";
                                                    catAero += ", 'Home/Markets--and--Applications/Aerospace--and--Defense/" + aeroArr[i] + "//'";
                                                }
                                            }
                                        }
                                        else
                                        {
                                            strAero = "Home/Markets--and--Applications/Aerospace--and--Defense/" + aeroType + "/";
                                            catAero = ", 'Home/Markets--and--Applications/Aerospace--and--Defense/" + aeroType + "//'";
                                        }
                                    }



                                    strProdJSON += "{\"id\":\"" + id + "\",\"title\":\"" + title + "\",\"categories\":\"," + strIndus + strAero + "\", \"link\":\"" + Convert.ToString(row["PageLink"]) + " \", \"shortDesc\": \"" + SPHttpUtility.ConvertSimpleHtmlToText(Convert.ToString(row["Description"]), Convert.ToString(row["Description"]).Length).Replace("\"", "&quot;") + "\" }, ";
                                    //"id":"759321771c019310VgnVCM1000000753810aRCRD","title":"Antimony Trioxide and Smoke Suppressants","categories":",/GreatLakes-en-US/Market/Electrical

                                    //strProdJSON += "{\"id\": \"" + id + "\", \"title\": \"" + title + "\", \"categories\": \",/Fomrez-en-US/Hydroxyl--Number--Range/" + strHydroxyl + strApp + strType + "/\", \"link\":\"" + Convert.ToString(row["PageLink"]) + " \", \"shortDesc\": \"" + SPHttpUtility.ConvertSimpleHtmlToText(Convert.ToString(row["Description"]), Convert.ToString(row["Description"]).Length).Replace("\"", "&quot;") + "\" }, ";

                                    strCatJSON += catIndus + catAero;
                                    //}

                                }
                                if (strProdJSON.Length > 0)
                                {
                                    strProdJSON = strProdJSON.Trim();
                                    strProdJSON = strProdJSON.Substring(0, strProdJSON.Length - 1);
                                }
                                if (strCatJSON.Length > 0)
                                {

                                    strCatJSON = strCatJSON.Substring(1, strCatJSON.Length - 1);
                                    strCatJSON = strCatJSON.Trim();


                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }

        }
        public void BindData()
        {
            try
            {
                using (SPSite site = SPContext.Current.Site)
                {
                    using (SPWeb web = SPContext.Current.Web)
                    {
                        SPList spList = web.Lists.TryGetList("Products");
                        if (spList != null)
                        {
                            // ddlAerospace.Attributes.Add("ddlAerospace","");

                            // for Aerospace
                            SPQuery spQuery = new SPQuery();
                            spQuery.Query = "<OrderBy><FieldRef Name='Application_Sub_Type' /></OrderBy>";
                            spQuery.ViewFields = "<FieldRef Name = 'Application_Type' /><FieldRef Name = 'Application_Sub_Type' /><FieldRef Name = 'PageURL' /><FieldRef Name = 'ProdName' /><FieldRef Name = 'Title' />";
                            spQuery.ViewFieldsOnly = true;
                            SPListItemCollection spItemCollection = spList.GetItems(spQuery);
                            if (spItemCollection != null)
                            {
                                DataTable dt = spItemCollection.GetDataTable();
                                dt.Columns.Add("Category", Type.GetType("System.String"));
                                foreach (DataRow row in dt.Rows) // Loop over the rows.
                                {
                                    string category = "/" + Convert.ToString(row["Application_Type"]).Trim() + "/" + Convert.ToString(row["Application_Sub_Type"]).Trim() + "/";
                                    row["Category"] = category.Replace(" ", "--").Replace("&", "and");
                                }
                                if (dt.Rows.Count > 0)
                                {
                                    //DataView dvInd = new DataView(dt);
                                    ////dvInd.RowFilter = "Application_Type = 'Aerospace and Defense'";
                                    //dvInd.RowFilter = "Application_Type = 'Aerospace & Defense'";
                                    ////ddlAerospace.DataSource = dvInd.ToTable(true, "Application_Sub_Type", "Category");
                                    ////ddlAerospace.DataValueField = "Category";
                                    ////ddlAerospace.DataTextField = "Application_Sub_Type";
                                    ////ddlAerospace.DataBind();
                                    ////ddlAerospace.Items.Insert(0, "");

                                    //DataView dvAero = new DataView(dt);
                                    //dvAero.RowFilter = "Application_Type = 'Industrial'";
                                    ////ddlIndustrial.DataSource = dvAero.ToTable(true, "Application_Sub_Type", "Category");
                                    ////ddlIndustrial.DataValueField = "Category";
                                    ////ddlIndustrial.DataTextField = "Application_Sub_Type";
                                    ////ddlIndustrial.DataBind();
                                    ////ddlIndustrial.Items.Insert(0, "");

                                    rprProduct.DataSource = dt;
                                    rprProduct.DataBind();
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}
