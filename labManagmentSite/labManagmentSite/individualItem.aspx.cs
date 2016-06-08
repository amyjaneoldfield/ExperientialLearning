using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using System.Web.Security;
using System.ComponentModel;

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
            System.Web.UI.HtmlControls.HtmlGenericControl accordian = (System.Web.UI.HtmlControls.HtmlGenericControl)frmItem.FindControl("adminAccordian");


            if (Context.User.IsInRole("Admin") && Page.ClientQueryString != "")
            {
                accordian.Visible = true;
               

            }

         
        }



        private void submitLog(TextBox comment, TextBox User)
        {

            String id = Page.ClientQueryString;
            String peice = id.TrimStart('I', 'D', '=');


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

        protected void btnAdminFileUpload_Click(object sender, EventArgs e)

        {

            Button upload = (Button)frmItem.FindControl("btnAdminFileUpload");
            FileUpload file = (FileUpload)frmItem.FindControl("adminFileControl");
            TextBox name = (TextBox)frmItem.FindControl("txtFileName");

            String fn = file.FileName;
            String extension = (System.IO.Path.GetExtension(file.FileName).ToLower());
            String id = Page.ClientQueryString;
            String peice = id.TrimStart('I', 'D', '=');



            if ((file.PostedFile != null) && (file.PostedFile.ContentLength > 0))






                try
                {

                    file.PostedFile.SaveAs(Server.MapPath("~/Docs/") + fn);
                    var doc = new Doc();
                    doc.name = name.Text;
                    doc.path = (Page.ResolveUrl("~/Docs/" + fn));
                    doc.pieceOfEquipment = peice;

                    db.Docs.Add(doc);
                    db.SaveChanges();



                }
                catch (Exception ex)
                {
                    Response.Write("Error " + ex.Message);
                }



            else
            {
                Response.Write("Please select a file to upload");


            }

            Response.Redirect(HttpContext.Current.Request.Url.AbsoluteUri);
        }



        protected void rptrDocs_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Button btn = (Button)e.Item.FindControl("btnAdminDel");
                HiddenField hf = (HiddenField)e.Item.FindControl("hdnField");


                btn.ID = "txtReplyArea" + hf.Value;

                if (User.IsInRole("admin"))
                {
                    btn.Visible = true;

                }
            }
        }

        protected void btnAdminDel_Command(object sender, CommandEventArgs e)
        {

            var item = (from x in db.Docs where x.path == e.CommandArgument.ToString() select x).First();
            db.Docs.Remove(item);
            db.SaveChanges();
            try
            {

                System.IO.File.Delete((e.CommandArgument.ToString()));
            }
            catch (Exception ex)
            {

            }

            Response.Redirect(HttpContext.Current.Request.Url.AbsoluteUri);

        }

        protected void adminImageBtn_Click(object sender, EventArgs e)
        {
            Button upload = (Button)frmItem.FindControl("adminImagebtn");
            FileUpload file = (FileUpload)frmItem.FindControl("adminImageAdd");
            

            String fn = file.FileName;
            String extension = (System.IO.Path.GetExtension(file.FileName).ToLower());
            String id = Page.ClientQueryString;
            String peice = id.TrimStart('I', 'D', '=');



            if ((file.PostedFile != null) && (file.PostedFile.ContentLength > 0))

                if (extension == ".png" || extension == ".jpg" || extension == ".gif")
            {
                try
                {
                    file.PostedFile.SaveAs(Server.MapPath("~/Images/" + fn));
                    var images = new Image();
                    images.path = (Page.ResolveUrl("~/Images/" + fn.Remove(fn.Length - 4)));
                    images.ext = extension;
                    images.peiceofEquipment = peice;
                    images.height = "400";
                    images.width = "400";
                    db.Images.Add(images);
                    db.SaveChanges();


                }

                catch (Exception er)
                {
                    Response.Write("Error" + er.Message);


                }

            }
            Response.Redirect(HttpContext.Current.Request.Url.AbsoluteUri);

        }
    }
}
