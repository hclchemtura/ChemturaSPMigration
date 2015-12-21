using Microsoft.SharePoint;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Greatlak.CustomWebparts.GreatlakesVideo
{
    public partial class GreatlakesVideoUserControl : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }       

        private void BindGrid()
        {
            try
            {
                using (SPSite site = new SPSite(SPContext.Current.Site.Url))
                {
                    using (SPWeb web = site.OpenWeb())
                    {
                        SPList List = web.Lists["Video Links"];
                        if (List != null)
                        {
                            SPQuery Query = new SPQuery();                            
                            Query.Query = "<OrderBy><FieldRef Name='Link_x0020_Id' Type='Number' Ascending='True'/> </OrderBy>";

                            SPListItemCollection spItemCollection = List.GetItems(Query);
                            if (spItemCollection != null && spItemCollection.Count > 0)
                            {
                                lvVideoLib.DataSource = spItemCollection.GetDataTable();
                                lvVideoLib.DataBind();
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
