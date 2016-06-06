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

        public class SortedElements
        {
            public string Letter { get; set; }
            public IList<User_Research_Equip> Elements { get; set; }
        }

        public class Index
        {
            private String element;


            public String indexVal
            {
                get
                {

                    return element;


                }
                set
                {

                    element = value;

                }

            }
            public Index()
            {

            }
            public Index(String val)
            {
                element = val;


            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            var grouped = db.User_Research_Equip.GroupBy(x => x.Name.Substring(0, 1).ToUpper(), (letter, subList) => new SortedElements { Letter = letter, Elements = subList.OrderBy(x => x.Name).ToList() }).OrderBy(x => x.Letter).ToList();

            rptrLetter.DataSource = grouped;
            rptrLetter.DataBind();

            /*Index equipList = new Index();


            var start = "A";

            List<Index> index = new List<Index> { new Index("A") };




            var equip = (from f in db.User_Research_Equip

                         select f.Name).ToList();

            equip.Sort();

            foreach (String f in equip)
            {

                {






                    if (f.StartsWith(start)) // check what f starts with 
                    {


                        index.Add(new Index(f));// if so add element 

                    }





                    else
                    {
                        start = f.Substring(0, 1);
                        index.Add(new Index(start)); //if not add header then element


                        index.Add(new Index(f));

                    }








                }


            }
            ListView1.DataSource = index;
            ListView1.DataBind();
            */











        }
    }
}