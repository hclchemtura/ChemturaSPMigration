using Microsoft.SharePoint;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint.Utilities;

namespace Greatlak.CustomWebparts.BromineProductFinder
{
    public partial class BromineProductFinderUserControl : UserControl
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
                            //spQuery.Query = "<Where><Contains><FieldRef Name='Application_Type' /><Value Type='Text'>Bromine_&_Intermediates</Value></Contains></Where>";
                            spQuery.Query = "<Where><And><Geq><FieldRef Name='ID' /><Value Type='Counter'>515</Value></Geq><Leq><FieldRef Name='ID' /><Value Type='Counter'>527</Value></Leq></And></Where>";
                            SPListItemCollection spItemCollection = spList.GetItems(spQuery);
                            if (spItemCollection != null)
                            {
                                DataTable dt = spItemCollection.GetDataTable();
                                foreach (DataRow row in dt.Rows) // Loop over the rows.
                                {
                                    string id = Convert.ToString(row["ID"]);
                                    string title = Convert.ToString(row["ProdName"]);


                                    string strAppType = Convert.ToString(row["Applications_Type"]);

                                    string strMarketSubType = Convert.ToString(row["MarketSub_Type"]);


                                    string strApp = string.Empty;

                                    string strMarketSub = string.Empty;
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
                                                    strApp += ",/GreatLakes-en-US BPP/Application/" + appArr[i] + "/";
                                                    // catAppType += ",'/GreatLakes-en-US BPP/Application/" + appArr[i] + "/'";

                                                    catAppType += ", '/GreatLakes-en-US BPP/Application/" + appArr[i] + "/'";
                                                }
                                            }
                                        }
                                        else
                                        {
                                            strApp = ",/GreatLakes-en-US BPP/Application/" + strAppType + "/";
                                            catAppType = ", '/GreatLakes-en-US BPP/Application/" + strAppType + "/'";
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
                                                    strMarketSub += ",/GreatLakes-en-US BPP/Market/" + marketSubArr[i] + "/";
                                                    catMarketSubType += ", '/GreatLakes-en-US BPP/Market/" + marketSubArr[i] + "/'";
                                                }
                                            }
                                        }
                                        else
                                        {
                                            strMarketSub = ",/GreatLakes-en-US BPP/Market/" + strMarketSubType + "/";
                                            catMarketSubType = ", '/GreatLakes-en-US BPP/Market/" + strMarketSubType + "/'";
                                        }
                                    }


                                    strProdJSON += "{\"id\":\"" + id + "\",\"title\":\"" + title + "\",\"categories\":\"" + strApp + strMarketSub + "/\", \"link\":\"" + Convert.ToString(row["PageLink"]) + " \", \"shortDesc\": \"" + SPHttpUtility.ConvertSimpleHtmlToText(Convert.ToString(row["Description"]), Convert.ToString(row["Description"]).Length).Replace("\"", "&quot;") + "\" }, ";
                                    //"id":"759321771c019310VgnVCM1000000753810aRCRD","title":"Antimony Trioxide and Smoke Suppressants","categories":",/GreatLakes-en-US/Market/Electrical

                                    //strProdJSON += "{\"id\": \"" + id + "\", \"title\": \"" + title + "\", \"categories\": \",/Fomrez-en-US/Hydroxyl--Number--Range/" + strHydroxyl + strApp + strType + "/\", \"link\":\"" + Convert.ToString(row["PageLink"]) + " \", \"shortDesc\": \"" + SPHttpUtility.ConvertSimpleHtmlToText(Convert.ToString(row["Description"]), Convert.ToString(row["Description"]).Length).Replace("\"", "&quot;") + "\" }, ";

                                    strCatJSON += catAppType + catMarketSubType;
                                    //strCatJSON += "/GreatLakes-en-US BPP/Application/" + catAppType + "/";

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
                                    //strCatJSON = "," + strCatJSON + ",";

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
                            spQuery.Query = "<Where><Contains><FieldRef Name='Application_Type' /><Value Type='Text'>Bromine_&_Intermediates</Value></Contains></Where>";
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
