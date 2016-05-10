using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace labManagmentSite
{
    public partial class laboratoryStores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var db = new db_1421049_LabManagementEntities();
            var Categories = db.Lab_Stores.ToList();



        }

       
    }
}