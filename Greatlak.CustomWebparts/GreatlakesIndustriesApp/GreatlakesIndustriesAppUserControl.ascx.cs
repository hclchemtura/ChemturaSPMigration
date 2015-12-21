using Microsoft.SharePoint;
using Microsoft.SharePoint.Utilities;
using System;
using System.Data;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Greatlak.CustomWebparts.GreatlakesIndustriesApp
{
    public partial class GreatlakesIndustriesAppUserControl : UserControl
    {
        public GreatlakesIndustriesApp MyVisualWebpart { get; set; }//get dynamic url value
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetNavDetails();
                setContactdata();
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
                        originalValue=pdfvalue[i].ToString().Split(';')[1];
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
                            spQuery.Query = "<Where><Contains><FieldRef Name='Associated_Application'/><Value Type='Text'>" + ApplicationName + "</Value></Contains></Where>";
                            SPListItemCollection spItemCollection = spList.GetItems(spQuery);
                            if (spItemCollection != null && spItemCollection.Count > 0)
                            {
                                rptProductTab.DataSource = spItemCollection.GetDataTable();
                                rptProductTab.DataBind();
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
        public void SetNavDetails()
        {
            try
            {
                using (SPSite site = new SPSite(SPContext.Current.Site.Url))
                {
                    using (SPWeb web = site.OpenWeb())
                    {
                        string pageUrl = SPContext.Current.Web.Url + "/" + SPContext.Current.File.Url;
                        string strchildpath = string.Empty;// "http://usthvgdev02:5480/sites/greatlakes/Pages/IndustriesAppSubProd.aspx";
                        if (MyVisualWebpart.GreatLake_IndURL != null)
                            strchildpath = SPContext.Current.Web.Url + MyVisualWebpart.GreatLake_IndURL;
                        string strApp = Page.Request.QueryString["app"];
                        string strAppTitle = "";
                        string strAppDesc = "";
                        string strImgPath = "";
                        StringBuilder desc = new StringBuilder();
                        StringBuilder leftNav = new StringBuilder("<ul><li class='T1 current'><a href='/sites/greatlakes/Pages/Industries_We_Serve.aspx' title='Industries We Serve'>Industries We Serve</a></li>");
                        StringBuilder breadcrum = new StringBuilder("<a title='Industries We Serve' href='/sites/greatlakes/Pages/Industries_We_Serve.aspx'>Industries We Serve</a> &#47; ");
                        SPList spList;
                        spList = web.Lists.TryGetList("Industries_App_Parent");
                        if (spList != null)
                        {
                            SPQuery spQuery = new SPQuery();
                            spQuery.Query = "<OrderBy><FieldRef Name='Pos' Type='Number' Ascending='True'/> </OrderBy>";
                            SPListItemCollection spItemCollection = spList.GetItems(spQuery);
                            if (spItemCollection != null)
                            {
                                if (strApp != null)
                                {
                                    foreach (SPListItem oitem in spItemCollection) // Loop over the rows.
                                    {
                                        if (oitem["ID"].ToString() == strApp)
                                        {
                                            strAppTitle = oitem["Title"].ToString();
                                            SPFieldMultiLineText commentsField = oitem.Fields.GetField("Description") as SPFieldMultiLineText;
                                            strAppDesc = commentsField.GetFieldValueAsText(oitem["Description"]);
                                            desc.Append("<p>" + strAppDesc + "</p>");
                                            if (oitem["Image"] != null)
                                                strImgPath = new SPFieldUrlValue(oitem["Image"].ToString()).Url;

                                            leftNav.Append("<li class='T2 parent current'><a href=" + pageUrl + "?app=" + oitem["ID"] + " title='" + oitem["Title"] + "'>" + oitem["Title"] + "</a></li>");
                                            breadcrum.Append("<a title='" + strAppTitle + "' href='" + pageUrl + "?app=" + oitem["ID"] + "'>" + strAppTitle + "</a> ");

                                            //child list loop
                                            SPList childlist = web.Lists.TryGetList("Industries_App_Child");
                                            SPQuery query = new SPQuery();
                                            query.Query = "<Where><Eq><FieldRef Name='Parentid' LookupId='TRUE' /><Value Type='Lookup'>" + Convert.ToString(strApp) + "</Value></Eq></Where>";
                                            query.Query += "<OrderBy><FieldRef Name='Pos' Type='Number' Ascending='True'/> </OrderBy>";

                                            SPListItemCollection oItemCollection = childlist.GetItems(query);
                                            foreach (SPListItem ochitem in oItemCollection)
                                            {
                                                SPFieldMultiLineText commentsField1 = ochitem.Fields.GetField("Description") as SPFieldMultiLineText;
                                                string childdesc = commentsField1.GetFieldValueAsText(ochitem["Description"]);
                                                desc.Append("<h3><a href='" + strchildpath + "?Ind=" + ochitem["Title"] + "&app=" + oitem["ID"] + "'>" + Convert.ToString(ochitem["Title"]) + "</a></h3><p>" + childdesc + "</p>");
                                                if (Convert.ToString(oitem["Ischild"]) == "True")
                                                {
                                                    leftNav.Append(" <li class='T3'><a href='" + strchildpath + "?Ind=" + ochitem["Title"] + "&app=" + oitem["ID"] + "' title='" + Convert.ToString(ochitem["Title"]) + "'>" + Convert.ToString(ochitem["Title"]) + "</a></li>");
                                                }
                                            }
                                            if (Convert.ToString(oitem["Ischild"]) != "True")
                                            {
                                                region5.Attributes.Add("style", "display:block");
                                                BindData(Convert.ToString(oitem["Title"]));
                                            }
                                        }
                                        else
                                            leftNav.Append("<li class='T2 parent'><a href=" + pageUrl + "?app=" + oitem["ID"] + " title='" + oitem["Title"] + "'>" + oitem["Title"] + "</a></li>");

                                    }
                                }
                                leftNav.Append("</ul>");
                                leftNavUl.InnerHtml = leftNav.ToString();
                                pgTitle.InnerHtml = "<h1>" + strAppTitle + "</h1>";
                                pgDesc.InnerHtml = desc.ToString();
                                pgImg.InnerHtml = "<img alt='' src='" + strImgPath + "'>";
                                appBreadcrumb.InnerHtml = breadcrum.ToString();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)

            { throw ex; }
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
                        contactName.InnerHtml = "<h2>" + dtContact.Rows[0]["Title"].ToString() + " <br />" + dtContact.Rows[0]["Name"].ToString() + "</h2>";
                        contactDesc.InnerHtml = dtContact.Rows[0]["Description"].ToString();
                        string strPath = new SPFieldUrlValue(dtContact.Rows[0]["Page_URL"].ToString()).Url;
                        contactref.HRef = strPath;
                    }
                }
            }
            catch (Exception ex)
            { }
        }
    }
}
