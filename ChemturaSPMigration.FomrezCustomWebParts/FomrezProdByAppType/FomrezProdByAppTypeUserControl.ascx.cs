using Microsoft.SharePoint;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace ChemturaSPMigration.FomrezCustomWebParts.FomrezProdByAppType
{
    public partial class FomrezProdByAppTypeUserControl : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                if (Request.QueryString["Prod"] != null && Convert.ToString(Request.QueryString["Prod"]) != string.Empty)
                {
                    BindData(Convert.ToString(Request.QueryString["Prod"]));
                }
            }
        }

        public string GetURL(object pageURl)
        {
            SPFieldUrlValue value = new SPFieldUrlValue(pageURl.ToString());
            if (Request.QueryString["Prod"] != null && Convert.ToString(Request.QueryString["Prod"]) != string.Empty)
            {
                return value.Url+"&app="+ Convert.ToString(Request.QueryString["Prod"]);
            }
            else
            return value.Url;
        }
        public void BindData(string prodType)
        {
            using (SPSite site = new SPSite(SPContext.Current.Web.Url))
            {
                using (SPWeb web = site.OpenWeb())
                {
                    SPList spList = web.Lists.TryGetList("Products");
                    if (spList != null)
                    {

                        SPQuery spQuery = new SPQuery();
                        //spQuery.Query = "<Where><Eq><FieldRef Name = 'Application_Type' /><Value Type ='Text'>" + prodType + "</Value></Eq></Where><OrderBy><FieldRef Name='Title' /></OrderBy>";
                        spQuery.Query = "<Where><Contains><FieldRef Name = 'Associated_Application' /><Value Type ='Text'>" + prodType + "</Value></Contains></Where><OrderBy><FieldRef Name='Title' /></OrderBy>";
                        //spQuery.ViewFields = "<FieldRef Name = 'Datasheet' /><FieldRef Name = 'MSDS' /><FieldRef Name = 'PageUrl' /><FieldRef Name = 'ProdName' /><FieldRef Name = 'Description' />";
                        // spQuery.ViewFieldsOnly = true;
                        SPListItemCollection spItemCollection = spList.GetItems(spQuery);
                        if (spItemCollection != null)
                        {
                            DataTable dt = spItemCollection.GetDataTable();
                            if (dt != null && dt.Rows.Count > 0)
                            {
                                // Bind Repeter
                                fomrezWrapper.Style.Add("display","block");
                                rprProduct.DataSource = dt;
                                rprProduct.DataBind();

                            }
                            else
                            {
                                fomrezWrapper.Style.Add("display", "none");
                            }
                        }
                    }
                }
            }
        }
    }
}
