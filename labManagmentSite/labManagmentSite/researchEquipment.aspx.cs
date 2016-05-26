using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace labManagmentSite
{
    public partial class researchEquipment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
       
        protected void exampleMapping(System.Web.UI.HtmlControls.HtmlArea Lab)
        {
            String labName = "";
            labName = Lab.ID;

            Panel panel = (Panel)rptrLabs.FindControl(labName);
            panel.CssClass = "";





        }
    }
}