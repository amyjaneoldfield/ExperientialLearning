using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace labManagmentSite
{
    public partial class imageManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                ViewState["RefUrl"] = Request.UrlReferrer.ToString();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            object refurl = ViewState["RefUrl"];
            if (refurl != null)
            {

                Response.Redirect((string)refurl);
            }
        }
    }
}