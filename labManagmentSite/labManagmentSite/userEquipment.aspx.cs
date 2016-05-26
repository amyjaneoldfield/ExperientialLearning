using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace labManagmentSite
{
  
    public partial class userEquipment : System.Web.UI.Page
    {
        db_1421049_LabManagementEntities db = new db_1421049_LabManagementEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

            var data = db.User_Research_Equip.SqlQuery("SELECT Name FROM User_Research_Equip ORDER BY Name ASC");

            var arrayData = data.ToArray();

            for (int i =0; i == arrayData.Length; i++ )
            {
                String word = arrayData.ElementAt(i).ToString();


                if (word.Substring(0, 1) == "A")
                {
                   // arrayData.Add("A");

                }


            }

        }
    }
}