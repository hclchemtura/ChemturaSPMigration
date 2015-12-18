using Microsoft.SharePoint;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace ChemturaSPMigration.FomrezCustomWebParts.ProductsApplicationTypes
{
    public partial class ProductsApplicationTypesUserControl : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                fillProdAppList();
            }
        }

        private void fillProdAppList()
        {
            using (SPSite site = SPContext.Current.Site)
            {
                using (SPWeb web = SPContext.Current.Web)
                {
                    SPList spList = web.Lists.TryGetList("ProductsApplicationTypes");
                    if (spList != null)
                    {
                        SPQuery spQuery = new SPQuery();
                        spQuery.Query = "<OrderBy><FieldRef Name='Title' /></OrderBy>";
                        spQuery.ViewFields = "<FieldRef Name = 'Title' /><FieldRef Name = 'Description' /><FieldRef Name = 'ApplicationImage' />";
                        spQuery.ViewFieldsOnly = true;
                        SPListItemCollection spItemCollection = spList.GetItems(spQuery);
                        if (spItemCollection != null)
                        {
                            DataTable dt = spItemCollection.GetDataTable();
                            rprProdAppList.DataSource = dt;
                            rprProdAppList.DataBind();
                        }
                    }
                }
            }
        }
    }
}
