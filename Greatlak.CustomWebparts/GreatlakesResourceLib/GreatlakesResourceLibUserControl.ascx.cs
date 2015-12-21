using Microsoft.SharePoint;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Text;

namespace Greatlak.CustomWebparts.GreatlakesResourceLib
{
    public partial class GreatlakesResourceLibUserControl : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //setContactdata();
                string stres = Page.Request.QueryString["resid"];
                if (!string.IsNullOrEmpty(stres))
                {
                    if (stres == "Flame Retardants")
                        BindData(stres);
                    if (stres == "Fumigants")
                        BindData(stres);
                    if (stres == "Bromine")
                        BindResData(stres);
                    if (stres == "GeoBrom")
                        BindResData(stres);
                }
            }
        }

        public string GetUrl(object pageUrl)
        {
            if (pageUrl != null)
            {
                string url = new SPFieldUrlValue(Convert.ToString(pageUrl)).Url;
                return url;
            }
            else
                return "";
        }

        //public void setContactdata()
        //{
        //    try
        //    {
        //        using (SPSite site = new SPSite(SPContext.Current.Site.Url))
        //        {
        //            using (SPWeb web = site.OpenWeb())
        //            {
        //                SPList olist = web.Lists.TryGetList("Contact_Us");
        //                DataTable dtContact = olist.Items.GetDataTable();
        //                contactName.InnerHtml = "<h2>" + dtContact.Rows[0]["Title"].ToString() + " <br />" + dtContact.Rows[0]["Name"].ToString() + "</h2>";
        //                contactDesc.InnerHtml = dtContact.Rows[0]["Description"].ToString();
        //                string strPath = new SPFieldUrlValue(dtContact.Rows[0]["Page_URL"].ToString()).Url;
        //                contactref.HRef = strPath;
        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    { }
        //}
        /*<table border='0' cellpadding='0' cellspacing='0' width='100%'>
	<tbody>
                    
		<tr>
			<td style='text-align: center; vertical-align: bottom;' width='34%'><a target='_blank' href='<%# GetUrl(Eval('PDFLink')) %>'><b><%#Eval('Title') %></b></a></td>
			<td style='text-align: center; vertical-align: bottom;' width='34%'><a target='_blank' href='<%# GetUrl(Eval('PDFLink')) %>'><b><%#Eval('Title') %></b></a></td>
			<td style='text-align: center; vertical-align: bottom;' width='34%'><a target='_blank' href='<%# GetUrl(Eval('PDFLink')) %>'><b><%#Eval('Title') %></b></a></td>
		</tr>
		<tr>
			<td style='text-align: center; vertical-align: top;' width='34%'><a target='_blank' href='<%# GetUrl(Eval('PDFLink')) %>'>
				<img alt='Flame Retardands Overview' src='<%# GetUrl(Eval('ImageLink')) %>'></a></td>
<td style='text-align: center; vertical-align: top;' width='34%'><a target='_blank' href='<%# GetUrl(Eval('PDFLink')) %>'>
				<img alt='Flame Retardands Overview' src='<%# GetUrl(Eval('ImageLink')) %>'></a></td>
<td style='text-align: center; vertical-align: top;' width='34%'><a target='_blank' href='<%# GetUrl(Eval('PDFLink')) %>'>
				<img alt='Flame Retardands Overview' src='<%# GetUrl(Eval('ImageLink')) %>'></a></td>				
		</tr>
		<tr>
			<td style='vertical-align: top;' width='34%'><%#Eval('Description') %></td>
			<td style='vertical-align: top;' width='34%'><%#Eval('Description') %></td>
			<td style='vertical-align: top;' width='34%'><%#Eval('Description') %></td>
		</tr>
                    
	</tbody>
</table>*/
        private void BindData(string ApplicationName)
        {
            try
            {
                StringBuilder sbRes = new StringBuilder();

                using (SPSite site = new SPSite(SPContext.Current.Site.Url))
                {
                    using (SPWeb web = site.OpenWeb())
                    {
                        SPList spList = web.Lists.TryGetList("Resource Library");
                        if (spList != null)
                        {
                            SPQuery spQuery = new SPQuery();
                            spQuery.Query = "<Where><Eq><FieldRef Name='Category'/><Value Type='Text'>" + ApplicationName + "</Value></Eq></Where>";
                            SPListItemCollection spItemCollection = spList.GetItems(spQuery);
                            if (spItemCollection != null && spItemCollection.Count > 0)
                            {
                                //// lvResourceLib.DataSource = spItemCollection.GetDataTable();
                                //lvResourceLib.DataBind();
                                decimal d = spItemCollection.Count / 3;
                                int mod = Convert.ToInt32(Math.Ceiling(d));
                                //int mod = spItemCollection.Count % 3;
                                for (int i = 0; i < mod; i++)
                                {
                                    StringBuilder table = new StringBuilder(@"<table border='0' cellpadding='0' cellspacing='0' width='100%'><tbody>");
                                    StringBuilder firstRow = new StringBuilder("<tr>");
                                    StringBuilder secRow = new StringBuilder("<tr>");
                                    StringBuilder thirdRow = new StringBuilder("<tr>");
                                    for (int j = 0; j < 3; j++)
                                    {
                                        if ((i + j) < spItemCollection.Count)
                                        {
                                            SPListItem item = spItemCollection[i + j];
                                            firstRow.Append(@"<td style='text-align: center; vertical-align: bottom;' width='34%'><a target='_blank' href='" + GetUrl(item["PDFLink"]) + "'><b>" + item["Title"] + "</b></a></td>");
                                            secRow.Append(@"<td style='text-align: center; vertical-align: top;' width='34%'><a target='_blank' href='"
+ GetUrl(item["PDFLink"]) + "'>" +
                    "<img alt='Flame Retardands Overview' src='" + GetUrl(item["ImageLink"]) + "'></a></td>");
                                            thirdRow.Append(@"<td style='vertical-align: top;' width='34%'>" + item["Description"] + "</td>");
                                        }
                                        else
                                        {
                                            firstRow.Append(@"<td style='text-align: center; vertical-align: bottom;' width='34%'></td>");
                                            secRow.Append(@"<td style='text-align: center; vertical-align: bottom;' width='34%'></td>");
                                            thirdRow.Append(@"<td style='text-align: center; vertical-align: bottom;' width='34%'></td>");
                                        }
                                    }
                                    firstRow.Append(@"</tr>");
                                    secRow.Append(@"</tr>");
                                    thirdRow.Append(@"</tr>");
                                    table.Append(firstRow.ToString());
                                    table.Append(secRow.ToString());
                                    table.Append(thirdRow.ToString());
                                    table.Append("</tbody></table><p></p>");
                                    sbRes.Append(table.ToString());
                                }
                                resLibThreeCol.InnerHtml = sbRes.ToString();
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

        private void BindResData(string ApplicationName)
        {
            try
            {
                using (SPSite site = new SPSite(SPContext.Current.Site.Url))
                {
                    using (SPWeb web = site.OpenWeb())
                    {
                        StringBuilder sbRes = new StringBuilder();
                        SPList spList = web.Lists.TryGetList("Resource Library");
                        if (spList != null)
                        {
                            SPQuery spQuery = new SPQuery();
                            spQuery.Query = "<Where><Eq><FieldRef Name='Category'/><Value Type='Text'>" + ApplicationName + "</Value></Eq></Where>";
                            SPListItemCollection spItemCollection = spList.GetItems(spQuery);
                            if (spItemCollection != null && spItemCollection.Count > 0)
                            {
                                // dlResource.DataSour= spItemCollection.GetDataTable();
                                //dlResource.DataBind();


                                //// lvResourceLib.DataSource = spItemCollection.GetDataTable();
                                //lvResourceLib.DataBind();
                                decimal d = spItemCollection.Count / 2;
                                int mod = Convert.ToInt32( Math.Ceiling(d));
                                StringBuilder table = new StringBuilder(@"<table border='0' cellpadding='0' cellspacing='0' width='100%'><tbody>");
                                for (int i = 0; i < mod; i++)
                                {
                                    
                                    StringBuilder firstRow = new StringBuilder("<tr>");
                                    StringBuilder secRow = new StringBuilder("<tr>");
                                    StringBuilder thirdRow = new StringBuilder("<tr>");
                                    for (int j = 0; j < 2; j++)
                                    {
                                        if ((i + j) < spItemCollection.Count)
                                        {
                                            SPListItem item = spItemCollection[i + j];
                                            firstRow.Append(@"<td style='text-align: center; vertical-align: bottom;' width='50%'><a target='_blank' href='" + GetUrl(item["PDFLink"]) + "'><b>" + item["Title"] + "</b></a></td>");
                                            secRow.Append(@"<td style='text-align: center; vertical-align: top;' width='50%'><a target='_blank' href='"
+ GetUrl(item["PDFLink"]) + "'>" +
                    "<img alt='Flame Retardands Overview' src='" + GetUrl(item["ImageLink"]) + "'></a></td>");
                                            thirdRow.Append(@"<td style='vertical-align: top;' width='50%'>" + item["Description"] + "</td>");
                                        }
                                        else
                                        {
                                            firstRow.Append(@"<td style='text-align: center; vertical-align: bottom;' width='50%'></td>");
                                            secRow.Append(@"<td style='text-align: center; vertical-align: bottom;' width='50%'></td>");
                                            thirdRow.Append(@"<td style='text-align: center; vertical-align: bottom;' width='50%'></td>");
                                        }
                                    }
                                    firstRow.Append(@"</tr>");
                                    secRow.Append(@"</tr>");
                                    thirdRow.Append(@"</tr>");
                                    table.Append(firstRow.ToString());
                                    table.Append(secRow.ToString());
                                    table.Append(thirdRow.ToString());
                                   
                                }
                                table.Append("</tbody></table>");
                                sbRes.Append(table.ToString());
                                resLibTwoCol.InnerHtml = sbRes.ToString();

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
