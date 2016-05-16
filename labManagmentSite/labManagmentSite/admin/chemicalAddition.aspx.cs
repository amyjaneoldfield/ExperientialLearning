using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
    }
}