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
if(Page.ClientQueryString == "")
            {

            }

            //Page.LoadComplete += new EventHandler(Page_LoadComplete);

        }

        /*  protected override void OnPreRender(EventArgs e)
          {
              base.OnPreRender(e);
              if (Page.ClientQueryString != "")
              {
                  String lab = Page.ClientQueryString.TrimStart('I', 'D', '=').ToUpper();



                  System.Web.UI.HtmlControls.HtmlGenericControl show = (System.Web.UI.HtmlControls.HtmlGenericControl)rptrLabs.FindControl(lab);



                  show.Visible = true;

              }
              }
          
          */
    
        protected void Page_LoadComplete(object sender, EventArgs e)
        {


        }

        protected void areaClucked(System.Web.UI.HtmlControls.HtmlArea Lab)
        {
            String id = Lab.ID;









        }

        protected void rptrLabs_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                String name = Page.ClientQueryString.TrimStart('I', 'D', '=').ToUpper();
                System.Web.UI.HtmlControls.HtmlGenericControl lab = (System.Web.UI.HtmlControls.HtmlGenericControl)e.Item.FindControl("indLab");
                HiddenField hdn = (HiddenField)e.Item.FindControl("hdnValue");
                lab.ClientIDMode = ClientIDMode.Static;

                if (hdn.Value== name)
                {


                    e.Item.Visible = true;


                }
                else if(name == "")
                {
                    e.Item.Visible = true;
                }
                
                else { e.Item.Visible = false; }



               




              



            }

        }
    }
}