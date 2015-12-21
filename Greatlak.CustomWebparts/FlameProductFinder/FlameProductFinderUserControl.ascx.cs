using Microsoft.SharePoint;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint.Utilities;

namespace Greatlak.CustomWebparts.FlameProductFinder
{
    public partial class FlameProductFinderUserControl : UserControl
    {
        public string strProdJSON, strCatJSON;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindData();
                SetProdCat();
            }
        }

        private void SetProdCat()
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
                            spQuery.Query = "<Where><Contains><FieldRef Name='Application_Type' /><Value Type='Text'>Flame_Retardants</Value></Contains></Where>";
                            SPListItemCollection spItemCollection = spList.GetItems(spQuery);

                            if (spItemCollection != null)
                            {
                                DataTable dt = spItemCollection.GetDataTable();
                                foreach (DataRow row in dt.Rows) // Loop over the rows.
                                {
                                    string id = Convert.ToString(row["ID"]);
                                    string title = Convert.ToString(row["ProdName"]);


                                    string strAppType = Convert.ToString(row["Applications_Type"]);
                                    string strMarketType = Convert.ToString(row["Market_Type"]);
                                    string strMarketSubType = Convert.ToString(row["MarketSub_Type"]);
                                    string strPolymerType = Convert.ToString(row["Polymer_Type"]);

                                    string strApp = string.Empty;
                                    string strMarket = string.Empty;
                                    string strMarketSub = string.Empty;
                                    string strPolymer = string.Empty;



                                    //string catType = string.Empty;

                                    // ApplicationType
                                    string catAppType = string.Empty;
                                    if (strAppType != string.Empty)
                                    {
                                        if (strAppType.IndexOf("#") != -1)
                                        {
                                            var appArr = strAppType.Split('#');
                                            for (int i = 0; i < appArr.Length; i++)
                                            {
                                                if (Convert.ToString(appArr[i]) != string.Empty)
                                                {
                                                    strApp += "/,/GreatLakes-en-US/Application/" + appArr[i];
                                                    catAppType += ",'/GreatLakes-en-US/Application/" + appArr[i] + "/'";
                                                }
                                            }
                                        }
                                        else
                                        {
                                            strApp = "/,/GreatLakes-en-US/Application/" + strAppType;
                                            catAppType += ",'/GreatLakes-en-US/Application/" + strAppType + "/'";
                                        }
                                    }


                                    //MarketType
                                    string catMarketType = string.Empty;
                                    if (strMarketType != string.Empty)
                                    {
                                        if (strMarketType.IndexOf("#") != -1)
                                        {
                                            var marketArr = strMarketType.Split('#');
                                            for (int i = 0; i < marketArr.Length; i++)
                                            {
                                                if (Convert.ToString(marketArr[i]) != string.Empty)
                                                {
                                                    strMarket += "/,/GreatLakes-en-US/Market/" + marketArr[i];
                                                    catMarketType += ",'/GreatLakes-en-US/Market/" + marketArr[i] + "/'";
                                                }
                                            }
                                        }
                                        else
                                        {
                                            strMarket = "/,/GreatLakes-en-US/Market/" + strMarketType;
                                            catMarketType += ",'/GreatLakes-en-US/Market/" + strMarketType + "/'";
                                        }
                                    }


                                    //MarketSubType
                                    string catMarketSubType = string.Empty;
                                    if (strMarketSubType != string.Empty)
                                    {
                                        if (strMarketSubType.IndexOf("#") != -1)
                                        {
                                            var marketSubArr = strMarketSubType.Split('#');
                                            for (int i = 0; i < marketSubArr.Length; i++)
                                            {
                                                if (Convert.ToString(marketSubArr[i]) != string.Empty)
                                                {
                                                    strMarketSub += "/,/GreatLakes-en-US/Market/" + marketSubArr[i];
                                                    catMarketSubType += ",'/GreatLakes-en-US/Market/" + marketSubArr[i] + "/'";
                                                }
                                            }
                                        }
                                        else
                                        {
                                            strMarketSub = "/,/GreatLakes-en-US/Market/" + strMarketSubType;
                                            catMarketSubType += ",'/GreatLakes-en-US/Market/" + strMarketSubType + "/'";
                                        }
                                    }


                                    //PolymerType
                                    string catPolymerType = string.Empty;
                                    if (strPolymerType != string.Empty)
                                    {
                                        if (strPolymerType.IndexOf("#") != -1)
                                        {
                                            var polymerArr = strPolymerType.Split('#');
                                            for (int i = 0; i < polymerArr.Length; i++)
                                            {
                                                if (Convert.ToString(polymerArr[i]) != string.Empty)
                                                {
                                                    strPolymer += "/,/GreatLakes-en-US/Polymer/" + polymerArr[i];
                                                    catPolymerType += ",'/GreatLakes-en-US/Polymer/" + polymerArr[i] + "/'";
                                                }
                                            }
                                        }
                                        else
                                        {
                                            strPolymer = "/,/GreatLakes-en-US/Polymer/" + strPolymerType;
                                            catPolymerType += ",'/GreatLakes-en-US/Polymer/" + strPolymerType + "/'";
                                        }
                                    }

                                    strProdJSON += "{\"id\":\"" + id + "\",\"title\":\"" + title + "\",\"categories\":\"," + strApp + strMarket + strMarketSub + strPolymer + "/\", \"link\":\"" + Convert.ToString(row["PageLink"]) + " \", \"shortDesc\": \"" + SPHttpUtility.ConvertSimpleHtmlToText(Convert.ToString(row["Description"]), Convert.ToString(row["Description"]).Length).Replace("\"", "&quot;") + "\" }, ";
                                    //"id":"759321771c019310VgnVCM1000000753810aRCRD","title":"Antimony Trioxide and Smoke Suppressants","categories":",/GreatLakes-en-US/Market/Electrical

                                    //strProdJSON += "{\"id\": \"" + id + "\", \"title\": \"" + title + "\", \"categories\": \",/Fomrez-en-US/Hydroxyl--Number--Range/" + strHydroxyl + strApp + strType + "/\", \"link\":\"" + Convert.ToString(row["PageLink"]) + " \", \"shortDesc\": \"" + SPHttpUtility.ConvertSimpleHtmlToText(Convert.ToString(row["Description"]), Convert.ToString(row["Description"]).Length).Replace("\"", "&quot;") + "\" }, ";

                                    strCatJSON += catAppType + catMarketType + catMarketSubType + catPolymerType + ",";
                                    //}

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
            catch (Exception ex)
            {

            }
        }
        private void BindData()
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
                            // spQuery.Query = "<OrderBy><FieldRef Name='ID' /></OrderBy>";
                            spQuery.Query = "< OrderBy >< FieldRef Name = 'ID' /></ OrderBy >< Where >< Eq >< FieldRef Name = 'Application_Type' />< Value Type = 'Text' > Flame_Retardants </ Value ></ Eq ></ Where >";
                            spQuery.ViewFields = "<FieldRef Name = 'Application_Type' /><FieldRef Name = 'Application_Sub_Type' /><FieldRef Name = 'PageURL' /><FieldRef Name = 'ProdName' /><FieldRef Name = 'Title' />";

                            spQuery.ViewFieldsOnly = true;
                            SPListItemCollection spItemCollection = spList.GetItems(spQuery);
                            if (spItemCollection != null)
                            {
                                DataTable dt = spItemCollection.GetDataTable();
                                if (dt != null && dt.Rows.Count > 0)
                                {
                                    // Bind Repeter
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
