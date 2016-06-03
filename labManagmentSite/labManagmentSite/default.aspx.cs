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

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            System.Web.UI.HtmlControls.HtmlGenericControl image = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl(e.CommandArgument.ToString());

            image.Visible = true;







        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            System.Web.UI.HtmlControls.HtmlGenericControl image = hartGround;

            image.Visible = true;

            image = hartFirst;

            image.Visible = false;

            image = sanGround;
            image.Visible = false;

            image = sanFirst;
            image.Visible = false;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            System.Web.UI.HtmlControls.HtmlGenericControl image = hartFirst;
           
            image.Visible = true;


            image = hartGround;
            image.Visible = false;

            image = sanGround;
            image.Visible = false;

            image = sanFirst;
            image.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            System.Web.UI.HtmlControls.HtmlGenericControl image = sanGround;
            image.Visible = true;

            image = hartFirst;
            image.Visible = false;

            image = hartGround;
            image.Visible = false;

            image = sanFirst;
            image.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            System.Web.UI.HtmlControls.HtmlGenericControl image = sanFirst;
            image.Visible = true;

            image = hartFirst;
            image.Visible = false;

            image = sanGround;
            image.Visible = false;

            image = hartGround;
            image.Visible = false;
        }
    }
}