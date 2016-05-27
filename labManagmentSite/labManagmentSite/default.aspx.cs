using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


namespace labManagmentSite
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void change_Click(object sender, EventArgs e)
        {
            image.Src = "Images/Picture1.PNG";
             
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            image.Src = "Images/Slide1.PNG";
        }
    }
}