using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint;
using System.Data;
using System.Text;


namespace ChemturaSPMigration.FomrezCustomWebParts.FomrezProductDetail
{
    public partial class FomrezProductDetailUserControl : UserControl
    {
        string strAppPageUrl = "/sites/fomrez/Pages/ProdAppDetail.aspx";
        //http://usthvgdev05:28289/sites/fomrez/Pages/ProdAppDetail.aspx?Prod=Adhesives
        
        protected void Page_Load(object sender, EventArgs e)
        {
            getlist();
        }
        public void getlist()
        {

            using (SPSite spSite = new SPSite(SPContext.Current.Web.Url))
            {
                using (SPWeb sp_Web = spSite.OpenWeb())
                {
                    try
                    {
                        string kquery = Page.Request.QueryString["prod"];
                        string strApp = Page.Request.QueryString["app"];
                        //SPWeb sp_Web = spSite.OpenWeb((SPContext.Current.Web.Url));
                        SPList sp_List = sp_Web.Lists["Products"];
                        SPQuery query = new SPQuery();
                        query.Query = "<Where><Eq><FieldRef Name='Title' /><Value Type='Text'>" + kquery + "</Value></Eq></Where>";
                        SPListItemCollection ospItemCollection = sp_List.GetItems(query);
                        DataTable dt = ospItemCollection.GetDataTable();
                        DataRow row = dt.Rows[0];
                        Label1.Text = dt.Rows[0][1].ToString();//prodname
                        //SPFieldMultiLineText field = (SPFieldMultiLineText)row["Technical_Info"];
                        SPListItem item = ospItemCollection[0];

                        var eventDescField = sp_List.Fields.GetFieldByInternalName("Technical_Info");
                        var eventDesc = item[eventDescField.Id];
                        var eventDescText = eventDescField.GetFieldValueAsText(eventDesc);


                       // string text = field.GetFieldValueAsText(row["Technical_Info"]);
                        Label2.Text ="<table><tr>"+ eventDescText + "</tr></table>";//table tech info
                        Literal1.Text = dt.Rows[0][3].ToString();//desc
                        msdslink.HRef = dt.Rows[0][8].ToString();//msds link
                        tdslink.HRef = dt.Rows[0][7].ToString();//msds link
                        string strlinks = dt.Rows[0][4].ToString();
                        
                        if (strApp == null)
                        {                            
                            strApp = item["Application_Type"].ToString();
                            fillProdAppType(strApp, strlinks);
                        }
                        else
                            fillProdAppType(strApp, strlinks);

                    }
                    catch (Exception ex)
                    {
                        Label2.Text = ex.Message;
                    }
                }
            }
        }

        private void fillProdAppType(string strApp, string strLinkApps)
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
                        StringBuilder leftNavSb = new StringBuilder("<ul>");
                        if (spItemCollection != null)
                        {
                            foreach (SPListItem item in spItemCollection)
                            {
                                if (item["Title"].ToString().Equals(strApp))
                                    leftNavSb.Append("<li class='parent current'><a  href='/sites/fomrez/Pages/ProdAppDetail.aspx?Prod=" + item["Title"].ToString()+ "' title =" + item["Title"].ToString() + ">"+ item["Title"].ToString() +"</a></li>");
                                else
                                    leftNavSb.Append("<li class='parent'><a href='/sites/fomrez/Pages/ProdAppDetail.aspx?Prod=" + item["Title"].ToString() + "' title =" + item["Title"].ToString() + ">" + item["Title"].ToString() + "</a></li>");
                            }
                            leftNavSb.Append("</ul>");
                        }
                        leftNavDiv.InnerHtml = leftNavSb.ToString();
                        string[] words=strLinkApps.Split('#');
                        StringBuilder appSb = new StringBuilder("<ul>");
                        foreach (string word in words)
                        {

                           // appSb.Append(word.Split(';')[0]);
                            appSb.Append("<li><a href='/sites/fomrez/Pages/ProdAppDetail.aspx?Prod=" + word.Split(';')[0] + "' title =" + word.Split(';')[0] + ">" + word.Split(';')[0] + "</a></li>");
                        }
                        appSb.Append("</ul>");
                        Label3.Text = appSb.ToString();
                    }
                }
            }
        }
        public string split(string valueStr, int index, char splitbycharacter)
        {

            var vals = valueStr.Split(splitbycharacter)[index];
            return vals;
        }
    }
}
