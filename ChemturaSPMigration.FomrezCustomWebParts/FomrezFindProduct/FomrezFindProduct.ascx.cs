using System;
using System.ComponentModel;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint;
using System.Data;
using System.Text;
using Microsoft.SharePoint.Utilities;

namespace ChemturaSPMigration.FomrezCustomWebParts.FomrezFindProduct
{
    [ToolboxItemAttribute(false)]
    public partial class FomrezFindProduct : WebPart
    {
        public string strProdJSON, strCatJSON;
        // Uncomment the following SecurityPermission attribute only when doing Performance Profiling on a farm solution
        // using the Instrumentation method, and then remove the SecurityPermission attribute when the code is ready
        // for production. Because the SecurityPermission attribute bypasses the security check for callers of
        // your constructor, it's not recommended for production purposes.
        // [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Assert, UnmanagedCode = true)]
        public FomrezFindProduct()
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

        private void setProdCat()
        {
            using (SPSite site = SPContext.Current.Site)
            {
                using (SPWeb web = SPContext.Current.Web)
                {
                    SPList spList = web.Lists.TryGetList("Products");
                    if (spList != null)
                    {
                        SPQuery spQuery = new SPQuery();
                        spQuery.Query = "";
                        SPListItemCollection spItemCollection = spList.GetItems(spQuery);
                        if (spItemCollection != null)
                        {
                            DataTable dt = spItemCollection.GetDataTable();
                            foreach (DataRow row in dt.Rows) // Loop over the rows.
                            {
                                string id = Convert.ToString(row["ID"]);
                                string title = Convert.ToString(row["ProdName"]);
                                string strHydroxyl = Convert.ToString(row["Hydroxyl_x0020_Number_x0020_Rang"]);
                                string strApp = string.Empty;
                                string strType = string.Empty;
                                string prodType = Convert.ToString(row["ProductType"]);
                                string catType = string.Empty;
                                if (prodType.IndexOf("#") != -1)
                                {
                                    var typArr = prodType.Split('#');
                                    for (int i = 0; i < typArr.Length; i++)
                                    {
                                        if (Convert.ToString(typArr[i]) != string.Empty)
                                        {
                                            strType += "/,/Fomrez-en-US/Type/" + typArr[i];
                                            catType += ",'/Fomrez-en-US/Type/" + typArr[i] + "/'";
                                        }
                                    }
                                }
                                else
                                {
                                    strType = "/,/Fomrez-en-US/Type/" + prodType;
                                    catType += ",'/Fomrez-en-US/Type/" + prodType + "/'";
                                }

                                string app = Convert.ToString(row["Application_Sub_Type"]);
                                string catApp = string.Empty;
                                if (app.IndexOf("#") != -1)
                                {
                                    var appArr = app.Split('#');

                                    for (int i = 0; i < appArr.Length; i++)
                                    {
                                        if (Convert.ToString(appArr[i]) != string.Empty)
                                        {
                                            strApp += "/,/Fomrez-en-US/Application/" + appArr[i];
                                            catApp += ",'/Fomrez-en-US/Application/" + appArr[i] + "/'";
                                        }
                                    }
                                }
                                else
                                {
                                    strApp = "/,/Fomrez-en-US/Application/" + app;
                                    catApp += ",'/Fomrez-en-US/Application/" + app + "/'";
                                }
                                SPFieldUrlValue value = new SPFieldUrlValue(row["PageURL"].ToString());

                                strProdJSON += "{\"id\": \"" + id + "\", \"title\": \"" + title + "\", \"categories\": \",/Fomrez-en-US/Hydroxyl--Number--Range/" + strHydroxyl + strApp + strType + "/\", \"link\":\"" + Convert.ToString(value.Url) + " \", \"shortDesc\": \"" + SPHttpUtility.ConvertSimpleHtmlToText(Convert.ToString(row["Description"]), Convert.ToString(row["Description"]).Length).Replace("\"", "&quot;") + "\" }, ";

                                strCatJSON += "'/Fomrez-en-US/Hydroxyl--Number--Range/" + strHydroxyl + "/'" + catApp + catType + ",";
                            }
                            if (strProdJSON.Length > 0)
                            {
                                strProdJSON = strProdJSON.Trim();
                                strProdJSON = strProdJSON.Substring(0, strProdJSON.Length - 1);

                            }
                            if (strCatJSON.Length > 0)
                            {
                                strCatJSON = strCatJSON.Trim();
                                strCatJSON = strCatJSON.Substring(0, strCatJSON.Length - 1);

                            }
                        }
                    }
                }
            }
        }
        public string GetURL(object pageURl)
        {
            SPFieldUrlValue value = new SPFieldUrlValue(pageURl.ToString());
            return value.Url;
        }
        public void BindData()
        {
            using (SPSite site = SPContext.Current.Site)
            {
                using (SPWeb web = SPContext.Current.Web)
                {
                    SPList spList = web.Lists.TryGetList("Products");
                    if (spList != null)
                    {

                        SPQuery spQuery = new SPQuery();
                        spQuery.Query = "<OrderBy><FieldRef Name='Application_Sub_Type' /></OrderBy>";
                        spQuery.ViewFields = "<FieldRef Name = 'Application_Type' /><FieldRef Name = 'Application_Sub_Type' /><FieldRef Name = 'PageURL' /><FieldRef Name = 'ProdName' /><FieldRef Name = 'Hydroxyl_x0020_Number_x0020_Rang' /><FieldRef Name = 'ProductType' />";
                        spQuery.ViewFieldsOnly = true;
                        SPListItemCollection spItemCollection = spList.GetItems(spQuery);
                        if (spItemCollection != null)
                        {
                            DataTable dt = spItemCollection.GetDataTable();
                            if (dt != null && dt.Rows.Count > 0)
                            {
                                // Data for Application dropdowm
                                DataTable dtApplication = new DataTable();
                                dtApplication.Columns.Add("AppText", Type.GetType("System.String"));
                                dtApplication.Columns.Add("AppVal", Type.GetType("System.String"));
                                
                                foreach (DataRow row in dt.Rows) // Loop over the rows.
                                {
                                    //Applications 
                                    if (Convert.ToString(row["Application_Sub_Type"]).IndexOf('#') != -1)
                                    {
                                        string[] arrAppType = Convert.ToString(row["Application_Sub_Type"]).Split('#');
                                        for (int i = 0; i < arrAppType.Length; i++)
                                        {
                                            if (Convert.ToString(arrAppType[i]) != string.Empty)
                                            {
                                                dtApplication.Rows.Add(Convert.ToString(arrAppType[i]), "/Application/" + Convert.ToString(arrAppType[i]) + "/");
                                            }
                                        }
                                    }
                                    else
                                    {
                                        dtApplication.Rows.Add(Convert.ToString(row["Application_Sub_Type"]), "/Application/" + Convert.ToString(row["Application_Sub_Type"]) + "/");
                                    }
                                }

                                // Data for Types dropdown
                                DataTable dtType = new DataTable();
                                dtType.Columns.Add("TypeText", Type.GetType("System.String"));
                                dtType.Columns.Add("TypeVal", Type.GetType("System.String"));
                                foreach (DataRow row in dt.Rows) // Loop over the rows.
                                {
                                    if (Convert.ToString(row["ProductType"]).IndexOf('#') != -1)
                                    {
                                        string[] arrAppType = Convert.ToString(row["ProductType"]).Split('#');
                                        for (int i = 0; i < arrAppType.Length; i++)
                                        {
                                            if (Convert.ToString(arrAppType[i]) != string.Empty)
                                            {
                                                dtType.Rows.Add(Convert.ToString(arrAppType[i]), "/Type/" + Convert.ToString(arrAppType[i]) + "/");
                                            }
                                        }
                                    }
                                    else
                                    {
                                        dtType.Rows.Add(Convert.ToString(row["ProductType"]), "/Type/" + Convert.ToString(row["ProductType"]) + "/");
                                    }
                                }
                                // Data for Hydroxyl dropdown
                                DataTable dtHydroxyl = new DataTable();
                                dtHydroxyl.Columns.Add("HydroxylText", Type.GetType("System.String"));
                                dtHydroxyl.Columns.Add("HydroxylVal", Type.GetType("System.String"));
                                foreach (DataRow row in dt.Rows) // Loop over the rows.
                                {
                                    dtHydroxyl.Rows.Add(Convert.ToString(row["Hydroxyl_x0020_Number_x0020_Rang"]), "/Hydroxyl--Number--Range/" + Convert.ToString(row["Hydroxyl_x0020_Number_x0020_Rang"]) + "/");
                                }

                                // Bind Application Dropdown
                                DataView dvApplication = new DataView(dtApplication);
                                ddlApplication.DataSource = dvApplication.ToTable(true, "AppText", "AppVal");
                                ddlApplication.DataTextField = "AppText";
                                ddlApplication.DataValueField = "AppVal";
                                ddlApplication.DataBind();
                                ddlApplication.Items.Insert(0, "");

                                //Bind Type Dropdown
                                DataView dvType = new DataView(dtType);
                                ddlType.DataSource = dvType.ToTable(true, "TypeText", "TypeVal");
                                ddlType.DataTextField = "TypeText";
                                ddlType.DataValueField = "TypeVal";
                                ddlType.DataBind();
                                ddlType.Items.Insert(0, "");

                                //Bind Hydroxyl Dropdown
                                DataView dvHydroxyl = new DataView(dtHydroxyl);
                                ddlHydroxyl1s.DataSource = dvHydroxyl.ToTable(true, "HydroxylText", "HydroxylVal");
                                ddlHydroxyl1s.DataTextField = "HydroxylText";
                                ddlHydroxyl1s.DataValueField = "HydroxylVal";
                                ddlHydroxyl1s.DataBind();
                                ddlHydroxyl1s.Items.Insert(0, "");

                                // Bind Repeter
                                rprProduct.DataSource = dt;
                                rprProduct.DataBind();

                            }
                        }
                    }
                }
            }
        }
    }
}
