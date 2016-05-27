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
            List<String> alphabet = new List<string> { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z" };

            List<String> index = new List<string> {"A"};
            int letter = 0;


            var equip = (from f in db.User_Research_Equip
                         where f.Name.StartsWith("A")
                         select f.Name).ToList();

            equip.Sort();

            foreach (String f in equip)
            {
                
                {
                   
                    var start = alphabet.ElementAt(letter);



                    if (f.StartsWith(start)) // check what f starts with
                    {
                        if (index.ElementAt(index.Count()-1) == start)  //check if the last element that was added is a header

                        {
                            index.Add(f);// if so add element 

                        }
                        else {
                            index.Add(start); //if not add header then element
                            index.Add(f);

                        } 

                    } 
                    


                }

            }
            ListView1.DataSource = index;
            ListView1.DataBind();

              









        }
    }
}