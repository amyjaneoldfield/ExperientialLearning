using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;

namespace labManagmentSite.admin
{
    public partial class chemicalAddition : System.Web.UI.Page
    { db_1421049_LabManagementEntities db = new db_1421049_LabManagementEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnClearFields_Click(object sender, EventArgs e)
        {
            clear();

        }
        protected void btnAddChemicalData_Click(object sender, EventArgs e)
        {
            add();
            clear();
            refresh();

        }

        private void clear()
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
            txtBathCode.Text = "";
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

        private void add()
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
            entry.Batch_Code = txtBathCode.Text;
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

        private void refresh()
        {
            Response.Redirect("~/admin/chemicalAdditon");
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            string term = txtSearch.Text;

           var data = db.ChemDatas.SqlQuery("SELECT * FROM dbo.ChemData WHERE [Name_of_Substance] LIKE '%"+ term + "%' ORDER BY [Name_of_Substance] ASC").ToList();
            rptrSearch.DataSource = data;
            rptrSearch.DataBind();
            lblSearchTerm.Text = "Results for " + term;

           


        }
    }
}