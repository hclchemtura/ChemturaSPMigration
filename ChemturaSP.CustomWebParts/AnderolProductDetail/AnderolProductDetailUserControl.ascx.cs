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

namespace ChemturaSP.CustomWebParts.AnderolProductDetail
{
    public partial class AnderolProductDetailUserControl : UserControl
    {
        string strAppPageUrl = "/sites/anderol/Pages/Applications.aspx";
        string strInd = "Industrial";
        string strAero = "Aerospace & Defense";
        string strSubType = "";
        DataTable dtAero;
        DataTable dtInd;
        bool isAero = false;
        bool isInd = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            getlist();
        }
        public void getlist()
        {

            using (SPSite spSite = SPContext.Current.Site)
            {
                try
                {
                    string kquery = Page.Request.QueryString["prod"];
                    //SPWeb sp_Web = spSite.OpenWeb("/");

                    SPWeb sp_Web = spSite.OpenWeb("/sites/anderol/");

                    SPList list_A = sp_Web.Lists["Aerospace and Defense"];
                    SPList list_I = sp_Web.Lists["Industrial"];

                    SPList sp_List = sp_Web.Lists["Products"];
                    SPQuery query = new SPQuery();
                    query.Query = "<Where><Contains><FieldRef Name='Title' /><Value Type='Text'>" + kquery + "</Value></Contains></Where>";
                    SPListItemCollection ospItemCollection = sp_List.GetItems(query);
                    DataTable dt = ospItemCollection.GetDataTable();
                    Label1.Text = dt.Rows[0][1].ToString();//prodname
                    Label2.Text = dt.Rows[0][2].ToString();//table tech info
                    Literal1.Text = dt.Rows[0][3].ToString();//desc
                    msdslink.HRef = dt.Rows[0][8].ToString();//msds link
                    tdslink.HRef = dt.Rows[0][7].ToString();//msds link
                    if (dt.Rows[0][5].ToString().Equals(strAero)) isAero = true;
                    else if (dt.Rows[0][5].ToString().Equals(strInd)) isInd = true;
                    strSubType = dt.Rows[0][6].ToString();
                    LeftNavPopulation();
                    string strlinks = dt.Rows[0][4].ToString();
                    string[] separators = { "/" };

                    string appHtml = appSplit(strlinks, separators);
                    int count = strlinks.Split('&').Length - 1;
                    string strnew = "";
                    /*  for (int i = 0; i < count; i++)PENDING
                      {

                          strnew = strnew + "<a href='#'>" +split(strlinks,0,';')+"</a><br>";
                      }*/
                    Label3.Text = appHtml;
                }
                catch (Exception ex)
                {
                    //Label2.Text = ex.Message;
                }
            }
        }
        public string appSplit(string valueStr, string[] splitbycharacter)
        {
            StringBuilder appDet = new StringBuilder("<a></a>");
            try
            {

                string[] words = valueStr.Split(splitbycharacter, StringSplitOptions.RemoveEmptyEntries);
                for (int i = 0; i <= words.Length; i++)
                {
                    string strWords = words[i];
                    //string expression = "[Title] = '" + strWords+"'";
                    DataRow[] foundRows;

                    if (strWords.Contains("#"))
                    {
                        int AppNo=strWords.Split('#').Length;
                        if (AppNo > 1)
                        {
                            string expression = "[Title] = '" + words[0].Split(';')[0] + "'";
                            if (words[i - 1].Equals(strAero))
                            {
                                foundRows = dtAero.Select(expression);
                                for (int k = 0; k < foundRows.Length; k++)
                                    //appDet.Append(foundRows[k][0]);
                                    appDet.Append("<a href='" + strAppPageUrl + "?aero=" + foundRows[k][5] + "'>" + foundRows[k][0] + "</a><br>");
                            }
                            else if (words[i - 1].Equals(strInd))
                            {
                                foundRows = dtInd.Select(expression);
                                for (int j = 0; j < foundRows.Length; j++)
                                    appDet.Append("<a href='" + strAppPageUrl + "?ind=" + foundRows[j][5] + "'>" + foundRows[j][0] + "</a><br>");
                            }

                            //Other App to be populated
                            string expression1 = "[Title] = '" + strWords.Split('#')[AppNo-1].Split(';')[0] + "'";
                            if (words[i + 2].Equals(strAero))
                            {
                                foundRows = dtAero.Select(expression1);
                                for (int k = 0; k < foundRows.Length; k++)
                                    //appDet.Append(foundRows[k][0]);
                                    appDet.Append("<a href='" + strAppPageUrl + "?aero=" + foundRows[k][5] + "'>" + foundRows[k][0] + "</a><br>");
                            }
                            else if (words[i + 2].Equals(strInd))
                            {
                                foundRows = dtInd.Select(expression1);
                                for (int j = 0; j < foundRows.Length; j++)
                                    appDet.Append("<a href='" + strAppPageUrl + "?ind=" + foundRows[j][5] + "'>" + foundRows[j][0] + "</a><br>");
                            }
                        }
                        else
                        {
                            string expression = "[Title] = '" + words[0].Split(';')[0] + "'";
                            if (words[i - 1].Equals(strAero))
                            {
                                foundRows = dtAero.Select(expression);
                                for (int k = 0; k < foundRows.Length; k++)
                                    //appDet.Append(foundRows[k][0]);
                                    appDet.Append("<a href='" + strAppPageUrl + "?aero=" + foundRows[k][5] + "'>" + foundRows[k][0] + "</a>");
                            }
                            else if (words[i - 1].Equals(strInd))
                            {
                                foundRows = dtInd.Select(expression);
                                for (int j = 0; j < foundRows.Length; j++)
                                    appDet.Append("<a href='" + strAppPageUrl + "?ind=" + foundRows[j][5] + "'>" + foundRows[j][0] + "</a>");
                            }
                        }
                        break;
                    }

                }

            }
            catch (Exception ex)
            {
            }

            return appDet.ToString();
            //return "";
        }
        public void LeftNavPopulation()
        {
            SPSite site = SPContext.Current.Site;
            SPWeb web = SPContext.Current.Web;
            SPList aero = web.Lists.TryGetList("Aerospace and Defense");
            SPQuery spQuery = new SPQuery();
            spQuery.Query = "<OrderBy>  <FieldRef Name='Pos' Type='Number' Ascending='True'/>   </OrderBy>";
            if (aero != null)
            {
                SPListItemCollection spAeroItemCollection = aero.GetItems(spQuery);
                if (spAeroItemCollection != null)
                {
                    dtAero = spAeroItemCollection.GetDataTable();
                }
            }

            SPList ind = web.Lists.TryGetList("Industrial");
            spQuery = new SPQuery();
            spQuery.Query = "<OrderBy>  <FieldRef Name='Pos' Type='Number' Ascending='True'/>   </OrderBy>";
            if (ind != null)
            {
                SPListItemCollection spIndItemCollection = ind.GetItems(spQuery);
                if (spIndItemCollection != null)
                {
                    dtInd = spIndItemCollection.GetDataTable();
                }
            }

            StringBuilder leftNav = new StringBuilder("<ul>");
            //SPList spList;
            //if (isAero) spList = web.Lists.TryGetList("Aerospace and Defense");
            //else spList = web.Lists.TryGetList("Industrial");
            //if (spList != null)
            //{
            //spQuery = new SPQuery();
            //spQuery.Query = "<OrderBy>  <FieldRef Name='Pos' Type='Number' Ascending='True'/>   </OrderBy>";

            //SPListItemCollection spItemCollection = spList.GetItems(spQuery);
            //if (spItemCollection != null)
            //{
            if (!isAero)
            {
                leftNav.Append("<li class='parent'><a href=" + strAppPageUrl + "?aero=6 title='Aerospace & Defense'>Aerospace & Defense</a></li>");
                DataTable dt1 = dtInd;//spItemCollection.GetDataTable();
                int count1 = 0;
                foreach (DataRow row in dt1.Rows) // Loop over the rows.
                {

                    if (count1 == 0)
                    {

                        leftNav.Append("<li class='parent current'><a href=" + strAppPageUrl + "?ind=" + row["ID"] + " title='" + row["Title"] + "'>" + row["Title"] + "</a></li>");

                    }
                    else if (row["Title"].ToString().Equals(strSubType))
                    {


                        leftNav.Append("<li class='current'><a href=" + strAppPageUrl + "?ind=" + row["ID"] + " title='" + row["Title"] + "'>" + row["Title"] + "</a></li>");
                    }
                    else
                        leftNav.Append("<li ><a href=" + strAppPageUrl + "?ind=" + row["ID"] + " title='" + row["Title"] + "'>" + row["Title"] + "</a></li>");
                    count1++;
                }
            }
            else
            {
                DataTable dt = dtAero;//spItemCollection.GetDataTable();
                int count = 0;
                foreach (DataRow row in dt.Rows) // Loop over the rows.
                {
                    if (count == 0)
                    {
                        leftNav.Append("<li class='parent current'><a href=" + strAppPageUrl + "?aero=" + row["ID"] + " title='" + row["Title"] + "'>" + row["Title"] + "</a></li>");
                    }
                    else if (row["Title"].ToString().Equals(strSubType))
                    {
                        leftNav.Append("<li class='current'><a href=" + strAppPageUrl + "?aero=" + row["ID"] + " title='" + row["Title"] + "'>" + row["Title"] + "</a></li>");
                    }
                    else
                        leftNav.Append("<li ><a href=" + strAppPageUrl + "?aero=" + row["ID"] + " title='" + row["Title"] + "'>" + row["Title"] + "</a></li>");
                    count++;
                }
                leftNav.Append("<li class='parent'><a href=" + strAppPageUrl + "?ind=9 title='Industrial'>Industrial</a></li>");
            }
            leftNavDiv.InnerHtml = leftNav.ToString();
            //}
            //}
        }
    }
}
