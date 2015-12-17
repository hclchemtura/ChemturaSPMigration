using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.ComponentModel;
using Microsoft.SharePoint;
using System.Data;
using System.Text;
using Microsoft.SharePoint.Utilities;

namespace ChemturaSP.CustomWebParts.AnderolApplications
{
    public partial class AnderolApplicationsUserControl : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            setNavDetails();
        }
        public void setNavDetails()
        {

            SPSite site = SPContext.Current.Site;
            SPWeb web = SPContext.Current.Web;

            //using (SPSite site = SPContext.Current.Site)
            //{
            //    using (SPWeb web = SPContext.Current.Web)
            //    {
            string pageUrl = SPContext.Current.Web.Url + "/" + SPContext.Current.File.Url;
            SPList list_A = web.Lists["Aerospace and Defense"];
            SPList list_I = web.Lists["Industrial"];
            string strAero = Page.Request.QueryString["aero"];
            string strInd = Page.Request.QueryString["ind"];
            string strAppTitle = "";
            string strAppDesc = "";
            string strImgPath = "";
            StringBuilder leftNav = new StringBuilder("<ul>");
            StringBuilder breadcrum = new StringBuilder("<a title='Markets and Application' href='/sites/anderol/Pages/Markets%20and%20Applications.aspx'>Markets and Applications</a> &#47; ");
            SPList spList;
            if (strAero != null) spList = web.Lists.TryGetList("Aerospace and Defense");
            else spList = web.Lists.TryGetList("Industrial");
            if (spList != null)
            {
                SPQuery spQuery = new SPQuery();
                spQuery.Query = "<OrderBy>  <FieldRef Name='Pos' Type='Number' Ascending='True'/>   </OrderBy>";

                SPListItemCollection spItemCollection = spList.GetItems(spQuery);
                if (spItemCollection != null)
                {
                    if (strAero == null)
                    {
                        leftNav.Append("<li class='parent'><a href=" + pageUrl + "?aero=6 title='Aerospace & Defense'>Aerospace & Defense</a></li>");
                        DataTable dt1 = spItemCollection.GetDataTable();
                        int count1 = 0;
                        foreach (DataRow row in dt1.Rows) // Loop over the rows.
                        {

                            if (count1 == 0)
                            {
                                if (row["ID"].ToString() == strInd)
                                {
                                    strAppTitle = row["Title"].ToString();
                                    strAppDesc = row["Description"].ToString();
                                    if (row["Image"] != null)
                                    {
                                        strImgPath = new SPFieldUrlValue(row["Image"].ToString()).Url;
                                        //strImgPath = row["Image"].ToString();
                                    }


                                }
                                leftNav.Append("<li class='parent current'><a href=" + pageUrl + "?ind=" + row["ID"] + " title='" + row["Title"] + "'>" + row["Title"] + "</a></li>");
                                breadcrum.Append("<a title='" + row["Title"] + "' href='" + pageUrl + "?ind=" + row["ID"] + "'>" + row["Title"] + "</a> ");

                            }
                            else if (row["ID"].ToString() == strInd)
                            {
                                strAppTitle = row["Title"].ToString();
                                strAppDesc = row["Description"].ToString();
                                if (row["Image"] != null)
                                {
                                    strImgPath = new SPFieldUrlValue(row["Image"].ToString()).Url;
                                    //strImgPath = row["Image"].ToString();
                                }


                                leftNav.Append("<li class='current'><a href=" + pageUrl + "?ind=" + row["ID"] + " title='" + row["Title"] + "'>" + row["Title"] + "</a></li>");
                                breadcrum.Append("&#47; <a title='+strAppTitle+' href='" + pageUrl + "?ind=" + row["ID"] + "'>" + strAppTitle + "</a> ");


                            }
                            else
                                leftNav.Append("<li ><a href=" + pageUrl + "?ind=" + row["ID"] + " title='" + row["Title"] + "'>" + row["Title"] + "</a></li>");
                            count1++;
                        }
                    }
                    else
                    {
                        DataTable dt = spItemCollection.GetDataTable();
                        int count = 0;
                        foreach (DataRow row in dt.Rows) // Loop over the rows.
                        {
                            if (count == 0)
                            {
                                leftNav.Append("<li class='parent current'><a href=" + pageUrl + "?aero=" + row["ID"] + " title='" + row["Title"] + "'>" + row["Title"] + "</a></li>");
                                if (row["ID"].ToString() == strAero)
                                {
                                    strAppTitle = row["Title"].ToString();
                                    strAppDesc = row["Description"].ToString();
                                    if (row["Image"] != null)
                                    {
                                        strImgPath = new SPFieldUrlValue(row["Image"].ToString()).Url;
                                        //strImgPath = row["Image"].ToString();
                                    }


                                }
                                breadcrum.Append("<a title='" + row["Title"] + "' href='" + pageUrl + "?ind=" + row["ID"] + "'>" + row["Title"] + "</a> ");
                            }
                            else if (row["ID"].ToString() == strAero)
                            {
                                leftNav.Append("<li class='current'><a href=" + pageUrl + "?aero=" + row["ID"] + " title='" + row["Title"] + "'>" + row["Title"] + "</a></li>");
                                strAppTitle = row["Title"].ToString();
                                strAppDesc = row["Description"].ToString();
                                if (row["Image"] != null)
                                {
                                    strImgPath = new SPFieldUrlValue(row["Image"].ToString()).Url;
                                    //strImgPath = row["Image"].ToString();
                                }
                                breadcrum.Append("&#47; <a title='+strAppTitle+' href='" + pageUrl + "?ind=" + row["ID"] + "'>" + strAppTitle + "</a> ");
                            }
                            else
                                leftNav.Append("<li ><a href=" + pageUrl + "?aero=" + row["ID"] + " title='" + row["Title"] + "'>" + row["Title"] + "</a></li>");
                            count++;
                        }
                        leftNav.Append("<li class='parent'><a href=" + pageUrl + "?ind=9 title='Industrial'>Industrial</a></li>");
                    }
                    leftNavDiv.InnerHtml = leftNav.ToString();
                    appTitleDiv.InnerHtml = "<h1>" + strAppTitle + "</h1>";
                    appSubTitleDiv.InnerHtml = "<h2>" + strAppTitle + "</h2 ><p>" + strAppDesc + "</p>";
                    appImgDiv.InnerHtml = "<img alt='' src='" + strImgPath + "'>";
                    breadcrumbDiv.InnerHtml = breadcrum.ToString();


                }
            }
            // }
            //}
        }
    }
}
