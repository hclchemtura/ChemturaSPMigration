using Microsoft.SharePoint;
using Microsoft.SharePoint.Utilities;
using System;
using System.Data;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Greatlak.CustomWebparts.GreatlakesProductdetails
{
    public partial class GreatlakesProductdetailsUserControl : UserControl
    {
        public GreatlakesProductdetails MyVisualWebpart { get; set; }//get dynamic url value
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getlist();
                setContactdata();
            }
        }
        public void setContactdata()
        {
            try
            {
                using (SPSite site = new SPSite(SPContext.Current.Site.Url))
                {
                    using (SPWeb web = site.OpenWeb())
                    {
                        SPList olist = web.Lists.TryGetList("Contact_Us");
                        DataTable dtContact = olist.Items.GetDataTable();
                        contactName.InnerHtml = "<h3>" + dtContact.Rows[0]["Title"].ToString() + "</h3>";
                        contactDesc.InnerHtml = dtContact.Rows[0]["Description"].ToString();
                        string strPath = new SPFieldUrlValue(dtContact.Rows[0]["Page_URL"].ToString()).Url;
                        contactref.HRef = strPath;
                    }
                }
            }
            catch (Exception ex)
            { }
        }

        public void getlist()
        {
            using (SPSite spSite = new SPSite(SPContext.Current.Site.Url))
            {
                using (SPWeb sp_Web = spSite.OpenWeb())
                {
                    try
                    {
                        StringBuilder techSheet = new StringBuilder();
                        StringBuilder marketapp = new StringBuilder();
                        marketapp.Append("<ul class='marketsApplications'>");
                        string kquery = Page.Request.QueryString["prod"];
                        string appID = Page.Request.QueryString["app"];
                        techSheet.Append("<ul class='productLiterature'>");
                        SPList sp_List = sp_Web.Lists["Products"];
                        SPQuery query = new SPQuery();
                        query.Query = "<Where><Eq><FieldRef Name='Title' /><Value Type='Text'>" + kquery + "</Value></Eq></Where>";
                        SPListItemCollection ospItemCollection = sp_List.GetItems(query);
                        DataTable dt = ospItemCollection.GetDataTable();
                        Label1.Text = dt.Rows[0][1].ToString();//prodname
                        Label3.Text = dt.Rows[0][2].ToString();//table tech info
                        Label2.Text = dt.Rows[0][11].ToString();//other desc
                        Literal1.Text = dt.Rows[0][3].ToString();//desc
                        techSheet.Append(" <li class='msds'><a href='" + dt.Rows[0][8].ToString() + "' target='_blank'>(M)SDS</a></li>");
                        //msdslink.HRef = dt.Rows[0][8].ToString();//msds link                       
                        string pdflink = SPHttpUtility.ConvertSimpleHtmlToText(Convert.ToString(dt.Rows[0][7]), Convert.ToString(dt.Rows[0][7]).Length);

                        string[] techsheetlink = pdflink.Split('#');
                        foreach (string techlink in techsheetlink)
                        {
                            if (techlink != string.Empty &&techlink!= " ")
                            {
                                string[] getvalue = techlink.Split(';');
                                techSheet.Append("<li><a href = '" + getvalue[1] + "' target = '_blank' >" + getvalue[0] + "</a></li>");
                            }
                        }
                        techSheet.Append("</ul>");
                        LAbel4.InnerHtml = techSheet.ToString();
                        if (MyVisualWebpart.GreatLake_IndURL != null)
                        {
                            string strlinks = dt.Rows[0][4].ToString();
                            string[] strlnk = strlinks.Split(';');
                            foreach (string lnk in strlnk)
                            {
                                if (lnk != string.Empty)
                                {
                                    if (lnk == "Fine Chemicals and Pharmaceuticals")
                                    {
                                        marketapp.Append("<li><a href='" + SPContext.Current.Site.Url + "/Pages/IndustriesAppProd.aspx?app=6" + "' title='" + lnk + "'>" + lnk + "</a></li>");// }
                                    }
                                    else if (lnk == "Biocide")
                                    {
                                        marketapp.Append("<li><a href='" + SPContext.Current.Site.Url + "/Pages/IndustriesAppProd.aspx?app=2" + "' title='" + lnk + "'>" + lnk + "</a></li>");// }
                                    }
                                    else
                                    {
                                        using (SPSite site = new SPSite(SPContext.Current.Site.Url))
                                        {
                                            using (SPWeb web = site.OpenWeb())
                                            {
                                                //child list loop
                                                SPList childlist = web.Lists.TryGetList("Industries_App_Child");
                                                SPQuery oquery = new SPQuery();
                                                oquery.Query = "<Where><Eq><FieldRef Name='Title'/><Value Type='Text'>" + Convert.ToString(lnk).Replace("Printed Wiring Board", "Electrical Components").Replace("Connectors", "Electrical Components") + "</Value></Eq></Where>";

                                                SPListItemCollection oItemCollection = childlist.GetItems(oquery);
                                                foreach (SPListItem ochitem in oItemCollection)
                                                {
                                                    marketapp.Append("<li><a href='" + SPContext.Current.Site.Url + MyVisualWebpart.GreatLake_IndURL + "?Ind=" + lnk.Replace("Printed Wiring Board", "Electrical Components").Replace("Connectors", "Electrical Components") + "&app=" + ochitem["Parentid"].ToString().Split(';')[0] + "' title='" + lnk + "'>" + lnk + "</a></li>");//
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        marketapp.Append("</ui>");
                        markrt.InnerHtml = marketapp.ToString();
                    }
                    catch (Exception ex)
                    {

                    }
                }
            }
        }
    }
}
