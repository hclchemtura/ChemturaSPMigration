using Microsoft.SharePoint;
using System;
using System.Data;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Greatlak.CustomWebparts.GreatlakesNewsroom
{
    public partial class GreatlakesNewsroomUserControl : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                setContactdata();
                SetNavDetails();
                if (!string.IsNullOrEmpty(Page.Request.QueryString["newsid"]))
                {
                    string strNewsid = Page.Request.QueryString["newsid"];
                    if (strNewsid == "1")
                    {
                        divreg3.Attributes.Add("style", "display:block");
                        BindData("0");
                        hpress.InnerHtml = "Press Releases";
                    }
                    else if (strNewsid == "0")
                    {
                        divreg3.Attributes.Add("style", "display:block");
                        BindData("1");
                        hpress.InnerHtml = "Newsroom Home";
                        hrecent.InnerHtml = "Recent Releases";
                        ppress.Attributes.Add("style", "display:block");
                        hredpress.HRef = SPContext.Current.Site.Url + "/" + SPContext.Current.File.Url + "?newsid=1";
                    }
                    else if (strNewsid == "2")
                    {
                        region5.Attributes.Add("style", "display:block");
                        region4.Attributes.Add("style", "display:none");
                        hMulti.InnerHtml = "Multimedia";
                        hlogo.InnerHtml = "Logos";
                        BindMultimediaData();
                    }
                    else if (strNewsid == "3")
                    {
                        region6.Attributes.Add("style", "display:block");
                        region4.Attributes.Add("style", "display:none");
                        hbusi.InnerHtml = "Business Publications";
                        BindBusinessData();
                    }
                    else if (strNewsid == "4")
                    {
                        region7.Attributes.Add("style", "display:block");
                        region4.Attributes.Add("style", "display:none");
                        setMediaContactdata();
                    }
                    
                }
            }
        }

        public string GetUrl(object pageUrl)
        {
            string url = new SPFieldUrlValue(Convert.ToString(pageUrl)).Url;
            return url;
        }
        private void BindData(string ApplicationName)
        {
            try
            {
                using (SPSite site = new SPSite(SPContext.Current.Site.Url))
                {
                    using (SPWeb web = site.OpenWeb())
                    {
                        SPList spList = web.Lists.TryGetList("Newsroom");
                        if (spList != null)
                        {
                            SPQuery spQuery = new SPQuery();
                            spQuery.Query = "<Where><Eq><FieldRef Name='Recent'/><Value Type='Integer'>" + ApplicationName + "</Value></Eq></Where>";
                            SPListItemCollection spItemCollection = spList.GetItems(spQuery);
                            if (spItemCollection != null && spItemCollection.Count > 0)
                            {
                                rptnewspress.DataSource = spItemCollection.GetDataTable();
                                rptnewspress.DataBind();
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

        private void BindMultimediaData()
        {
            try
            {
                using (SPSite site = new SPSite(SPContext.Current.Site.Url))
                {
                    using (SPWeb web = site.OpenWeb())
                    {
                        SPList spList = web.Lists.TryGetList("Newsroom_Multimedia");
                        if (spList != null)
                        {
                            SPQuery spQuery = new SPQuery();
                            spQuery.Query = "";
                            SPListItemCollection spItemCollection = spList.GetItems(spQuery);
                            if (spItemCollection != null && spItemCollection.Count > 0)
                            {
                                rptMulti.DataSource = spItemCollection.GetDataTable();
                                rptMulti.DataBind();
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

        private void BindBusinessData()
        {
            try
            {
                using (SPSite site = new SPSite(SPContext.Current.Site.Url))
                {
                    using (SPWeb web = site.OpenWeb())
                    {
                        SPList spList = web.Lists.TryGetList("Business_Publications");
                        if (spList != null)
                        {
                            SPQuery spQuery = new SPQuery();
                            spQuery.Query = "";
                            SPListItemCollection spItemCollection = spList.GetItems(spQuery);
                            if (spItemCollection != null && spItemCollection.Count > 0)
                            {
                                rptBusiness.DataSource = spItemCollection.GetDataTable();
                                rptBusiness.DataBind();
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

        public void setMediaContactdata()
        {
            try
            {
                using (SPSite site = new SPSite(SPContext.Current.Site.Url))
                {
                    using (SPWeb web = site.OpenWeb())
                    {
                        SPList olist = web.Lists.TryGetList("Media_Contacts");
                        DataTable dtContact = olist.Items.GetDataTable();                        
                        mediacontact.InnerHtml = dtContact.Rows[0]["Description"].ToString();
                       
                    }
                }
            }
            catch (Exception ex)
            { }
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
                        string strchildpath = string.Empty;//
                        
                        string strApp = Page.Request.QueryString["newsid"];
                        
                        StringBuilder leftNav = new StringBuilder("<ul><li class='T1 current'><a href='"+pageUrl+"?newsid=0"+"' title='Newsroom Home'>Newsroom Home</a></li>");
                        StringBuilder breadcrum = new StringBuilder("<a title='Industries We Serve' href='" + pageUrl + "?newsid=0" + "'>Newsroom Home</a> &#47; ");
                        SPList spList;
                        spList = web.Lists.TryGetList("Newsroom_Application");
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

                                            leftNav.Append("<li class='T2 parent current'><a href=" + pageUrl + "?newsid=" + oitem["ID"] + " title='" + oitem["Title"] + "'>" + oitem["Title"] + "</a></li>");
                                            breadcrum.Append("<a title='" + oitem["Title"] + "' href='" + pageUrl + "?newsid=" + oitem["ID"] + "'>" + oitem["Title"] + "</a> ");                                           
                                        }
                                        else
                                            leftNav.Append("<li class='T2 parent'><a href=" + pageUrl + "?newsid=" + oitem["ID"] + " title='" + oitem["Title"] + "'>" + oitem["Title"] + "</a></li>");

                                    }
                                }
                                leftNav.Append("</ul>");
                                leftNavUl.InnerHtml = leftNav.ToString();
                                
                                appBreadcrumb.InnerHtml = breadcrum.ToString();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)

            { throw ex; }
        }
    }
}
