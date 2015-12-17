using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.ComponentModel;
using Microsoft.SharePoint;
using System.Data;
using System.Text;
using Microsoft.SharePoint.Utilities;

namespace ChemturaSP.CustomWebParts.AnderolApplicationProducts
{
    public partial class AnderolApplicationProductsUserControl : UserControl
    {
        enum ProductType
        {
            AerospaceProducts = 1,
            IndustryProducts = 2
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Page.Request.QueryString["aero"] != null)
            {
                BindData(ProductType.AerospaceProducts);
            }
            else if (this.Page.Request.QueryString["ind"] != null)
            {
                BindData(ProductType.IndustryProducts);
            }
            else
            {

            }
        }
        private void BindData(ProductType productCategory)
        {
            string productApplicationSubType = string.Empty;

            SPSite site = SPContext.Current.Site;
            SPWeb web = SPContext.Current.Web;

            SPList spList = null;
            SPQuery spQuery = null;
            SPListItemCollection spItemCollection = null;

            if (productCategory == ProductType.AerospaceProducts)
            {
                string aeroID = this.Page.Request.QueryString["aero"].ToString().Trim();
                if (aeroID == Convert.ToString(6))
                    region5.Visible = false;
                spList = web.Lists.TryGetList("Aerospace and Defense");
                if (spList != null)
                {
                    spQuery = new SPQuery();
                    spQuery.Query = "<Where><Contains><FieldRef Name='ID'/><Value Type='Counter'>" + aeroID + "</Value></Contains></Where>";
                }
            }
            else if (productCategory == ProductType.IndustryProducts)
            {
                string indID = this.Page.Request.QueryString["ind"].ToString().Trim();
                if (indID == Convert.ToString(9))
                    region5.Visible = false;
                spList = web.Lists.TryGetList("Industrial");
                if (spList != null)
                {
                    spQuery = new SPQuery();
                    spQuery.Query = "<Where><Contains><FieldRef Name='ID'/><Value Type='Counter'>" + indID + "</Value></Contains></Where>";
                }
            }

            if (spList != null && spQuery != null)
            {
                spItemCollection = spList.GetItems(spQuery);
            }
            if (spItemCollection != null && spItemCollection.Count > 0)
            {
                if (spItemCollection[0]["Title"] != null)
                {
                    productApplicationSubType = spItemCollection[0]["Title"].ToString();
                }

            }


            if (!String.IsNullOrEmpty(productApplicationSubType))
            {
                spList = web.Lists.TryGetList("Products");
                if (spList != null)
                {
                    spQuery = new SPQuery();
                    spQuery.Query = "<Where><Contains><FieldRef Name='Application_Sub_Type'/><Value Type='Text'>" + productApplicationSubType + "</Value></Contains></Where>";
                    spItemCollection = spList.GetItems(spQuery);
                    if (spItemCollection != null && spItemCollection.Count > 0)
                    {
                        rptProducts.DataSource = spItemCollection.GetDataTable();
                        rptProducts.DataBind();

                    }
                }
            }

        }
    }
}
