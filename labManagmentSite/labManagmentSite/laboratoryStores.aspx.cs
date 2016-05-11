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

          
            




        }

        protected void rptrGases_ItemCreated(object sender, RepeaterItemEventArgs e)
        {
         SqlDataSource sql = (SqlDataSource) 
            //Repeater child = (Repeater)e.Item.FindControl("rptrItems");
             
        }

        private String selectCommand()
        {
            String command = "\'<%#\"SELECT [Name] From [Lab_Stores] WHERE [Category] = \' \"  + Eval(\"Category\") + \"\'\" %>\'";
                
            return command;
        }
    }
}