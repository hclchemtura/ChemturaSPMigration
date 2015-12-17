using System;
using System.ComponentModel;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint;
using Microsoft.SharePoint.WebControls;
using System.Data;
using System.Text;

namespace ChemturaSP.CustomWebParts.AnderolNews
{
    public partial class AnderolNewsUserControl : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetLiteratureLibrary();
        }
        public void GetLiteratureLibrary()
        {
            using (SPSite spSite = SPContext.Current.Site)
            {
                try
                {
                    StringBuilder litLib = new StringBuilder();
                    SPWeb sp_Web = spSite.OpenWeb("/sites/anderol/");

                    SPList sp_List = sp_Web.Lists.TryGetList("List_Literature");
                    if (sp_List != null)
                    {
                        SPQuery query = new SPQuery();
                        query.Query = "";
                        DataTable dt;
                        SPListItemCollection ospItemCollection = sp_List.GetItems(query);
                        if (ospItemCollection != null)
                        {
                            dt = ospItemCollection.GetDataTable();
                            foreach (DataRow row in dt.Rows)
                            {
                                SPFieldUrlValue value = new SPFieldUrlValue(row["TitleLink"].ToString());

                                string URL = value.Url;

                                litLib.Append("<div class='icon'>" +
                                    "<a title = " + row["Title"] + " href='" + URL + "' target='_blank'>"
                                    + "<img alt = '" + row["Title"] + "' src='/sites/anderol/corporatev2/chemturav8/layout/Anderol-en-US/icon_img.png' />" +
                                    "</a></div>" +
                                    "<div class='title'>" +
                                    "<a title ='" + row["Title"] + "' href='" + URL + "' target='_blank'>" + row["Title"] + "</a>" + "<p>" + row["Description"] + "</p></div>");
                            }
                        }
                    }
                    AnderolNews.InnerHtml = litLib.ToString();
                }
                catch (Exception ex)
                {
                    //Label2.Text = ex.Message;
                }
            }

        }
    }
}
