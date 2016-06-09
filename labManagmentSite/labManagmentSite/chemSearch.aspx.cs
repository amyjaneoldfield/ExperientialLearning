using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace labManagmentSite
{
    public partial class chemSearch : System.Web.UI.Page
    {
        db_1421049_LabManagementEntities db = new db_1421049_LabManagementEntities();
        String term = null;
        protected void Page_Load(object sender, EventArgs e)

        {


        }
        protected void txtSearch_TextChanged(object sender, EventArgs e)  // search method
        {


            term = txtSearch.Text;

            var data = db.ChemDatas.SqlQuery("SELECT * FROM dbo.ChemData WHERE [Name_of_Substance] LIKE '%" + term + "%' ORDER BY [Name_of_Substance] ASC").ToList();
            rptrSearch.DataSource = data;
            rptrSearch.DataBind();
            lblSearchTerm.Text = "Results for " + term;





        }
    }
}