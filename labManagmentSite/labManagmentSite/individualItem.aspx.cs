﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using System.Web.Security;

namespace labManagmentSite
{
    public partial class individualItem : System.Web.UI.Page
    {
        db_1421049_LabManagementEntities db = new db_1421049_LabManagementEntities();
 
        protected void btnLogSubmit_Click(object sender, EventArgs e)
        {
            
            TextBox comment = (TextBox)frmItem.FindControl("txtLogComment");
            
            TextBox user = (TextBox)frmItem.FindControl("txtLogUser");

            
            submitLog(comment, user);

            


        }
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (Context.User.IsInRole("Admin") && Page.ClientQueryString != ""){
                Button btnLocalUpload = (Button)frmItem.FindControl("btnLocalUpload");
                btnLocalUpload.Visible = true; 
            }

        }

        private void submitLog(TextBox comment, TextBox User)
        {

            String id = Page.ClientQueryString;
            String peice = id.TrimStart('I','D','=');



            var log = new Logbook();

            log.Comment = comment.Text;
            log.User = User.Text;

            log.Date = DateTime.Now;
            log.PieceofEquipment = int.Parse(peice);


            db.Logbooks.Add(log);
            db.SaveChanges();

            Repeater rptr = (Repeater)frmItem.FindControl("rptrLogbook");
            rptr.DataBind();

        }


      
    }
}