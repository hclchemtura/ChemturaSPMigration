using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint;
using System.Data;
using System.Text;

namespace ChemturaSPMigration.FomrezCustomWebParts.FomrezNews
{
    public partial class FomrezNewsUserControl : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetNews();
        }
        public void GetNews()
        {

            using (SPSite site = new SPSite(SPContext.Current.Web.Url))
            {
                using (SPWeb web = site.OpenWeb())
                {
                    try
                    {
                        SPList spList = web.Lists.TryGetList("News");
                        if (spList != null)
                        {
                            SPQuery spQuery = new SPQuery();
                            SPListItemCollection spItemCollection = spList.GetItems(spQuery);
                            StringBuilder sbNews = new StringBuilder();
                            if (spItemCollection != null)
                            {
                                foreach (SPListItem item in spItemCollection)
                                {                                    
                                    SPFieldUrlValue value = new SPFieldUrlValue(item["RelatedDoc"].ToString());
                                    sbNews.Append(@"<div class='newsItem'>"+
                                        "<div class='date'>"+item["Date"].ToString()+"</div>"+
                                        "<div class='title'><a href='"+ value.Url+ "'title='"+item["Title"]+"' target='_blank'>"+
                                        item["Title"] + "</a></div>"+
                                        "<div class='description'>"+item["Description"]+"</div>");
                                }
                                fomrezNews.InnerHtml = sbNews.ToString();
                            }
                        }
                    }
                    catch (Exception ex)
                    {

                    }
                }
            }
        }
    }
}
