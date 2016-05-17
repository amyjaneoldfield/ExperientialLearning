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
    {
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
            var entry = new Lab();

            entry.Name = txtNameOfSubstance.Text;
            entry.Formula = txtFormula.Text;
            entry.Location = txtLocation.Text;
            entry.Units = txtUnits.Text;
            entry.TriggerLevel = txtTriggerLevel.Text;
            entry.CurrentStock = txtCurrentStockLevel.Text;
            entry.Supplier = txtSupplier.Text;
            entry.SupplierProductCode = txtSupplierProductCode.Text;
            entry.CASCode = txtCASCode.Text;
            entry.BatchCode = txtBathCode.Text;
            entry.Purity_Grade = txtPurityGrade.Text;
            entry.Expiry_Date = txtExpiryDate.Text;
            entry.SummaryOfHazards = txtSummaryOfHazards.Text;
            entry.OrderedBy = txtOrderedBy.Text;
            entry.Reviewed = txtReviewed.Text;
            entry.Purpose = txtPurpose.Text;
            entry.LinkToMSDS = txtLinkToMSDS.Text;
            entry.Catagory = txtCatagory.Text;
            entry.COSHHCompleted = txtCOSHHCompleted.Text;
            entry.MSDSAvailable = txtMSDSAvailable.Text;

            db.Labs.Add(entry);
            db.SaveChanges();


        }
       

    }
}