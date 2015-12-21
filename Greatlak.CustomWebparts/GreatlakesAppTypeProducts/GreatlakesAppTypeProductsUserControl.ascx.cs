using Microsoft.SharePoint;
using Microsoft.SharePoint.Utilities;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Greatlak.CustomWebparts.GreatlakesAppTypeProducts
{
    public partial class GreatlakesAppTypeProductsUserControl : UserControl
    {
        string indName = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {               
                if (!string.IsNullOrEmpty(Page.Request.QueryString["Ind"]))
                {
                    indName = Convert.ToString(Page.Request.QueryString["Ind"]);
                    BindData(indName);
                }
            }
        }

        public string GetUrl(object pageUrl)
        {
            string url = new SPFieldUrlValue(Convert.ToString(pageUrl)).Url;
            return url;
        }

        public string GetPDF(object pdfUrl)
        {
            string originalValue = string.Empty;
            string pdflink = SPHttpUtility.ConvertSimpleHtmlToText(pdfUrl.ToString(), pdfUrl.ToString().Length);
            string[] pdfvalue = pdflink.Split('#');
            for (int i = 0; i < pdfvalue.Length; i++)
            {
                if (Convert.ToString(pdfvalue) != string.Empty)
                    if (pdfvalue[i].ToString().Contains("Technical Data Sheet"))
                    {
                        originalValue = pdfvalue[i].ToString().Split(';')[1];
                    }
            }
            return originalValue;
        }
        private void BindData(string ApplicationName)
        {
            try
            {
                using (SPSite site = new SPSite(SPContext.Current.Site.Url))
                {
                    using (SPWeb web = site.OpenWeb())
                    {
                        SPList spList = web.Lists.TryGetList("Products");
                        if (spList != null)
                        {
                            SPQuery spQuery = new SPQuery();
                            spQuery.Query = "<Where><Contains><FieldRef Name='Application_Type'/><Value Type='Text'>" + ApplicationName + "</Value></Contains></Where>";
                            SPListItemCollection spItemCollection = spList.GetItems(spQuery);
                            if (spItemCollection != null && spItemCollection.Count > 0)
                            {
                                if (indName == "Mercury_Control_Solutions")
                                {
                                    DataTable dtPrinted = spItemCollection.GetDataTable();
                                    DataView dvPrinted = dtPrinted.DefaultView;
                                    dvPrinted.RowFilter = String.Format("Application_Sub_Type = '{0}'", "Calcium Bromide Products");

                                    if (dvPrinted.Count > 0)
                                    {
                                        hprod.InnerHtml = "Calcium Bromide Products";
                                        region5.Attributes.Add("style", "display:block");
                                        rptProductTab.DataSource = dvPrinted;
                                        rptProductTab.DataBind();
                                    }
                                    DataTable dtConnectors = spItemCollection.GetDataTable();
                                    dtConnectors.DefaultView.RowFilter = String.Format("Application_Sub_Type = '{0}'", "Sodium Bromide Products");
                                    if (dtConnectors.DefaultView.Count > 0)
                                    {
                                        hProd1.InnerHtml = "Sodium Bromide Products";
                                        Div1.Attributes.Add("style", "display:block");
                                        Repeater1.DataSource = dtConnectors;
                                        Repeater1.DataBind();
                                    }
                                    DataTable dt = spItemCollection.GetDataTable();
                                    dt.DefaultView.RowFilter = String.Format("Application_Sub_Type = '{0}'", "Hydrobromic Acid Products");
                                    if (dt.DefaultView.Count > 0)
                                    {
                                        hProd2.InnerHtml = "Hydrobromic Acid Products";
                                        Div2.Attributes.Add("style", "display:block");
                                        Repeater2.DataSource = dt;
                                        Repeater2.DataBind();
                                    }
                                }
                                else if (indName == "Clear_Brine_Fluids")
                                {
                                    DataTable dtPrinted = spItemCollection.GetDataTable();

                                    if (dtPrinted.Rows.Count > 0)
                                    {
                                        hprod.InnerHtml = "Products";
                                        region5.Attributes.Add("style", "display:block");
                                        rptProductTab.DataSource = dtPrinted;
                                        rptProductTab.DataBind();
                                    }
                                }
                                else if (indName == "Fumigants")
                                {
                                    DataTable dtPrinted = spItemCollection.GetDataTable();
                                    DataView dvPrinted = dtPrinted.DefaultView;
                                    dvPrinted.RowFilter = String.Format("Application_Sub_Type = '{0}'", "Commodity Fumigants");

                                    if (dvPrinted.Count > 0)
                                    {
                                        hprod.InnerHtml = "Commodity Fumigants";
                                        region5.Attributes.Add("style", "display:block");
                                        rptProductTab.DataSource = dvPrinted;
                                        rptProductTab.DataBind();
                                    }
                                    DataTable dtConnectors = spItemCollection.GetDataTable();
                                    dtConnectors.DefaultView.RowFilter = String.Format("Application_Sub_Type = '{0}'", "Manufacturing Use Pesticides");
                                    if (dtConnectors.DefaultView.Count > 0)
                                    {
                                        hProd1.InnerHtml = "Manufacturing Use Pesticides";
                                        Div1.Attributes.Add("style", "display:block");
                                        Repeater1.DataSource = dtConnectors;
                                        Repeater1.DataBind();
                                    }
                                    DataTable dt = spItemCollection.GetDataTable();
                                    dt.DefaultView.RowFilter = String.Format("Application_Sub_Type = '{0}'", "Quarantine Fumigants");
                                    if (dt.DefaultView.Count > 0)
                                    {
                                        hProd2.InnerHtml = "Quarantine Fumigants";
                                        Div2.Attributes.Add("style", "display:block");
                                        Repeater2.DataSource = dt;
                                        Repeater2.DataBind();
                                    }
                                    DataTable dt1 = spItemCollection.GetDataTable();
                                    dt1.DefaultView.RowFilter = String.Format("Application_Sub_Type = '{0}'", "Soil Fumigants");
                                    if (dt1.DefaultView.Count > 0)
                                    {
                                        hProd3.InnerHtml = "Soil Fumigants";
                                        Div3.Attributes.Add("style", "display:block");
                                        Repeater3.DataSource = dt1;
                                        Repeater3.DataBind();
                                    }
                                }
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
