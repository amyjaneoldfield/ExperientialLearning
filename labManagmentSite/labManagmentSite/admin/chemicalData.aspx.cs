﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace labManagmentSite.admin
{
    public partial class chemicalData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
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
            entry.COSHH_completed = txtCOSHHCompleted.Text;
            entry.MSDS_Available = txtMSDSAvailable.Text;


            db.ChemDatas.Add(entry);
            db.SaveChanges();


        }
    }
}