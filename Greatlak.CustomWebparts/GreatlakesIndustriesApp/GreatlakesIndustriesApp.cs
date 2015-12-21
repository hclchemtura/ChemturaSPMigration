using System;
using System.ComponentModel;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint;
using Microsoft.SharePoint.WebControls;

namespace Greatlak.CustomWebparts.GreatlakesIndustriesApp
{
    [ToolboxItemAttribute(false)]
    public class GreatlakesIndustriesApp : WebPart
    {
        [WebBrowsable(true),
        Category("Personalize"),
        WebDisplayName("GreatLakes Industries URL"),
        WebDescription("Custom list name editable by user")]
        [Personalizable(PersonalizationScope.Shared)]
        public string GreatLake_IndURL { get; set; }

        // Visual Studio might automatically update this path when you change the Visual Web Part project item.
        private const string _ascxPath = @"~/_CONTROLTEMPLATES/15/Greatlak.CustomWebparts/GreatlakesIndustriesApp/GreatlakesIndustriesAppUserControl.ascx";

        protected override void CreateChildControls()
        {
            GreatlakesIndustriesAppUserControl control=Page.LoadControl(_ascxPath) as GreatlakesIndustriesAppUserControl;

            ////Control control = Page.LoadControl(_ascxPath);
            ////Controls.Add(control);

            if (control != null)
                control.MyVisualWebpart = this;

            Controls.Add(control);
        }
    }
}
