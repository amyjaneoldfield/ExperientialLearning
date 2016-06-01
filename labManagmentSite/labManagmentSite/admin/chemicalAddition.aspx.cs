using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Data;

namespace labManagmentSite.admin
{
    public partial class chemicalAddition : System.Web.UI.Page
    { db_1421049_LabManagementEntities db = new db_1421049_LabManagementEntities();
        String term = null;
        

        public int PageNum
        {
            get
            {
                if (ViewState["PageNum"] != null)
                    return Convert.ToInt32(ViewState["PageNum"]);
                else return 0;

            }
            set
            {
                ViewState["PageNum"] = value;


            }

        }



        protected void Page_Load(object sender, EventArgs e)
            
       {
            //if (!IsPostBack)
           // {
            //    BringData();

//}


        }
       /* protected void BringData() {
            SqlConnection conn = new SqlConnection("Data Source =sql2014.studentwebserver.co.uk; Initial Catalog=db_1421049_LabManagement; Integrated Security =False; User ID=user_db_1421049_LabManagement; Password=P@55word");

            int cnt;
            string sql = "SELECT * FROM dbo.ChemData WHERE [Name_of_Substance] LIKE '%" + term + "%' ORDER BY [Name_of_Substance] ASC";
            SqlCommand sqlCom = new SqlCommand(sql,conn);

            SqlDataAdapter sqlData = new SqlDataAdapter(sqlCom);
            DataSet Ds = new DataSet();
            sqlData.Fill(Ds);
            cnt = Ds.Tables[0].Rows.Count;

            PagedDataSource pagedData = new PagedDataSource();
            pagedData.DataSource = Ds.Tables[0].DefaultView;
            pagedData.AllowPaging = true;
            pagedData.PageSize = 4;
            pagedData.CurrentPageIndex = PageNum;

            int vcnt = cnt / pagedData.PageSize;

            if (PageNum < 1)
            {
                LnkPrevious.Enabled = false;


            }
            else if (PageNum > 0) {
                LnkPrevious.Enabled = true;

 }
            if (PageNum == vcnt)
            {
                LnkNext.Enabled = false;

            }
            else if (PageNum < vcnt)
            {
                LnkNext.Enabled = true;

            }
            rptrSearch.DataSource = Ds;
            rptrSearch.DataBind();



        }
       
 
         
*/
        protected void btnClearFields_Click(object sender, EventArgs e)
        {                                // button to clear all fields
            clear();

        }
        protected void btnAddChemicalData_Click(object sender, EventArgs e)   
        {
            Page.Validate();             // validate page if JS not enabled
            if (Page.IsValid)
            {
                add();          //chemicalAddition of data when button clicked
                clear();
                



            }

        }
        
        private void clear()                 // method to clear all fields
        {
            txtNameOfSubstance.Text = "";
            txtFormula.Text = "";
            txtLocation.Text = "";
            txtUnits.Text = "";
            txtTriggerLevel.Text = "";
            txtCurrentStockLevel.Text = "";
            txtSupplier.Text = "";
            txtSupplierProductCode.Text = "";
            txtCASCode.Text = "";
            txtBatchCode.Text = "";
            txtPurityGrade.Text = "";
            txtExpiryDate.Text = "";
            txtSummaryOfHazards.Text = "";
            txtOrderedBy.Text = "";
            txtReviewed.Text = "";
            txtPurpose.Text = "";
            txtLinkToMSDS.Text = "";
            txtCatagory.Text = "";
            txtCOSHHCompleted.Text = "";
            txtMSDSAvailable.Text = "";


        }

        private void add()                  // method to add records and data to database
        {
            var db = new db_1421049_LabManagementEntities();
            var entry = new ChemData();

            entry.Name_of_Substance = txtNameOfSubstance.Text;
            entry.Formula = txtFormula.Text;
            entry.Location = txtLocation.Text;
            entry.Units = txtUnits.Text;
            entry.Trigger_Level = txtTriggerLevel.Text;
            entry.Current_Stock_Level = txtCurrentStockLevel.Text;
            entry.Supplier = txtSupplier.Text;
            entry.Supplier_Product_Code = txtSupplierProductCode.Text;
            entry.CAS_Code = txtCASCode.Text;
            entry.Batch_Code = txtBatchCode.Text;
            entry.Purity_Grade = txtPurityGrade.Text;
            entry.Expiry_Date = txtExpiryDate.Text;
            entry.Summary_of_Hazards = txtSummaryOfHazards.Text;
            entry.Ordered_by = txtOrderedBy.Text;
            entry.Reviewed = txtReviewed.Text;
            entry.Purpose = txtPurpose.Text;
            entry.Link_to_MSDS = txtLinkToMSDS.Text;
            entry.Category = txtCatagory.Text;
            entry.COSHH_completed= txtCOSHHCompleted.Text;
            entry.MSDS_Available = txtMSDSAvailable.Text;


            db.ChemDatas.Add(entry);
            db.SaveChanges();


        }



        protected void txtSearch_TextChanged(object sender, EventArgs e)  // search method
        {
         

            term = txtSearch.Text;

           var data = db.ChemDatas.SqlQuery("SELECT * FROM dbo.ChemData WHERE [Name_of_Substance] LIKE '%"+ term + "%' ORDER BY [Name_of_Substance] ASC").ToList();
            rptrSearch.DataSource = data;
            rptrSearch.DataBind();
            lblSearchTerm.Text = "Results for " + term;

           
           


        }

        /*protected void LnkPrevious_Click(object sender, EventArgs e)
        {
           PageNum -= 1;
            BringData();

        }

        protected void LnkNext_Click(object sender, EventArgs e)
        {
            
 PageNum += 1;
            BringData();
        }
        */
    }
}