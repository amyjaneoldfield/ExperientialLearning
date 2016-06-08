using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace labManagmentSite.admin
{
    public partial class addEquipment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                add();
                clear();
                Response.Redirect(HttpContext.Current.Request.Url.AbsoluteUri);
            }
        }

        private void add()
        {
            var db = new db_1421049_LabManagementEntities();
            var entry = new User_Research_Equip();

            entry.Name = txtAddEquipName.Text;
            entry.Location = txtAddEquipLocation.Text;
            entry.Custodian = txtAddEquipCustodian.Text;

            db.User_Research_Equip.Add(entry);
            db.SaveChanges();

        }

        private void clear()
        {
            txtAddEquipCustodian.Text = "";
            txtAddEquipLocation.Text = "";
            txtAddEquipName.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}