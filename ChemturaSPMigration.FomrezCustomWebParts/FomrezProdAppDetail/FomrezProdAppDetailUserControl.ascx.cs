using Microsoft.SharePoint;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace ChemturaSPMigration.FomrezCustomWebParts.FomrezProdAppDetail
{
    public partial class FomrezProdAppDetailUserControl : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                fillProdAppType();
                if (Request.QueryString["Prod"] != null && Convert.ToString(Request.QueryString["Prod"]) != string.Empty)
                {
                    fillProdAppList(Convert.ToString(Request.QueryString["Prod"]));
                }
            }
        }
        private void fillProdAppType()
        {
            using (SPSite site = new SPSite(SPContext.Current.Web.Url))
            {
                using (SPWeb web = site.OpenWeb())
                {
                    SPList spList = web.Lists.TryGetList("ProductsApplicationTypes");
                    if (spList != null)
                    {
                        SPQuery spQuery = new SPQuery();
                        //spQuery.Query = "<Where><Eq><FieldRef Name = 'Title' /><Value Type ='Text'>" + str + "</Value></Eq></Where>";
                        spQuery.ViewFields = "<FieldRef Name = 'Title' />";
                        spQuery.ViewFieldsOnly = true;
                        SPListItemCollection spItemCollection = spList.GetItems(spQuery);

                        if (spItemCollection != null)
                        {
                            DataTable dt = spItemCollection.GetDataTable();
                            rprAppType.DataSource = dt;
                            rprAppType.DataBind();
                        }
                    }
                }
            }
        }
        private void fillProdAppList(string str)
        {
            using (SPSite site = new SPSite(SPContext.Current.Web.Url))
            {
                using (SPWeb web = site.OpenWeb())
                {
                    SPList spList = web.Lists.TryGetList("ProductsApplicationTypes");
                    if (spList != null)
                    {
                        SPQuery spQuery = new SPQuery();
                        spQuery.Query = "<Where><Eq><FieldRef Name = 'Title' /><Value Type ='Text'>"+str+"</Value></Eq></Where>";
                        spQuery.ViewFields = "<FieldRef Name = 'Title' /><FieldRef Name = 'Description' /><FieldRef Name = 'ApplicationImage' />";
                        spQuery.ViewFieldsOnly = true;
                        SPListItemCollection spItemCollection = spList.GetItems(spQuery);

                        if (spItemCollection != null)
                        {
                            foreach (SPListItem spItem in spItemCollection)
                            {
                                lilTitle.Text = Convert.ToString(spItem["Title"]);
                                lilDeatil.Text = Convert.ToString(spItem["Description"]);
                                imgProd.ImageUrl = Convert.ToString(spItem["ApplicationImage"]);
                            }                    

                        }
                    }
                }
            }
        }
    }
}
