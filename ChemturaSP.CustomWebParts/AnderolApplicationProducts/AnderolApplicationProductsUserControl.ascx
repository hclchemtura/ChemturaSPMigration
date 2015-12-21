<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AnderolApplicationProductsUserControl.ascx.cs" Inherits="ChemturaSP.CustomWebParts.AnderolApplicationProducts.AnderolApplicationProductsUserControl" %>
<div class="region" id="region5" runat="server">
				    <div>
                        <div>
                            <div id="productSelectorWrapper">
    <div class="productSelector">
        <h3>PRODUCTS</h3>
    </div> 
                                <div class="selectorResults">
        <div class="result">

<asp:Repeater ID="rptProducts" runat="server">

    <HeaderTemplate>
              <table>
              <tr>
                 <th class="product">Product</th>
                 <th class="description">Description</th>
                  <th class="datasheet">Datasheet</th>
                  <th class="msds">(M)SDS</th>
              </tr>
          </HeaderTemplate>

          <ItemTemplate>
          <tr>
              <td bgcolor="#FFFFFF">
                <%--<asp:Label runat="server" ID="Label1" 
                    text='<%# Eval("ProdName") %>' />--%>
                  <%--<asp:HyperLink ID="hypProd" runat="server" NavigateUrl='<%# Eval("PageURL") %>'
            Text='<%# Eval("ProdName") %>'></asp:HyperLink>--%>

                   <a href='/sites/anderol/Pages/Product_Details.aspx?Prod=<%# Eval("Title")%>'>
                        <h4><%# Eval("ProdName")%></h4>
                    </a>
                 
              </td>
              <td bgcolor="#FFFFFF">
                  <asp:Label runat="server" ID="Label2" 
                      text='<%# Eval("Description") %>' />
              </td>
              <td bgcolor="#FFFFFF">
                  <a href='<%# Eval("Datasheet") %>'><img alt='<%# Eval("ProdName") %>'  src='../corporatev2/chemturav8/layout/Anderol-en-US/sm_pdf.jpg'></img></a>
              </td>
              <td bgcolor="#FFFFFF">
                  <a href='<%# Eval("MSDS") %>'><img alt='<%# Eval("ProdName") %>' src='../corporatev2/chemturav8/layout/Anderol-en-US/sm_pdf.jpg'></img></a>
              </td>
          </tr>
          </ItemTemplate>


          <FooterTemplate>
              </table>
          </FooterTemplate>
</asp:Repeater>
            </div>
    </div> <!--- /.selectorResults --->
</div> <!--- /#productSelectorWrapper ---></div>

</div>
				</div> <!--- /#region5 --->