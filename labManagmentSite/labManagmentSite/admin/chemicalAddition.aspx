<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="chemicalAddition.aspx.cs" Inherits="labManagmentSite.admin.chemicalAddition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/itemStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="container">
   

    <h1>Add a New Substance to the Chemical Database</h1>


    <!--TODO must add field validation for this form. Then we can modify the database table fileds to match the specific format of each field in a record. --> 

    <!-- It may also be worth having a sepporate page on the site to diplay the whole grid of data and a sepporate one to allow the user to simply search for a record and have it appear in front of them. This would greatly increase accessibility. -->

         
      <div class="panel-group" id="accordion">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
         <a data-toggle="collapse" href="#collapse1">
        Location</a>
      </h4>
    </div>
    <div id="collapse1" class="panel-collapse collapse in">
      <div class="panel-body">
         <div id="addChemicalForm">

        <div>
            <asp:Label ID="lblNameOfSubstance" runat="server" Text="Name of Substance" CssClass="lblChemical" AssociatedControlID="txtNameOfSubstance"></asp:Label>
        </div>

        <div">
            <asp:TextBox ID="txtNameOfSubstance" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>


        <div>
            <asp:Label ID="lblFormula" runat="server" Text="Formula" CssClass="lblChemical" AssociatedControlID="txtFormula"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtFormula" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblLocation" runat="server" Text="Location" CssClass="lblChemical" AssociatedControlID="txtLocation"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtLocation" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblUnits" runat="server" Text="Units" CssClass="lblChemical" AssociatedControlID="txtUnits"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtUnits" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblTriggerLevel" runat="server" Text="Trigger Label" CssClass="lblChemical" AssociatedControlID="txtTriggerLevel"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtTriggerLevel" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblCurrentStockLevel" runat="server" Text="Current Stock Level " CssClass="lblChemical" AssociatedControlID="txtCurrentStockLevel"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtCurrentStockLevel" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblSupplier" runat="server" Text="Supplier" CssClass="lblChemical" AssociatedControlID="txtSupplier"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtSupplier" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblSupplierProductCode" runat="server" Text="Supplier Product Code" CssClass="lblChemical" AssociatedControlID="txtSupplierProductCode"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtSupplierProductCode" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblCASCode" runat="server" Text="CAS Code" CssClass="lblChemical" AssociatedControlID="txtCASCode"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtCASCode" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblBatchCode" runat="server" Text="Batch Code" CssClass="lblChemical" AssociatedControlID="txtBathCode"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtBathCode" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblPurityGrade" runat="server" Text="Purity/Grade" CssClass="lblChemical" AssociatedControlID="txtPurityGrade"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtPurityGrade" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblExpiryDate" runat="server" Text="Expiry Date" CssClass="lblChemical" AssociatedControlID="txtExpiryDate"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtExpiryDate" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblSummaryOfHazards" runat="server" Text="Summary of Hazards" CssClass="lblChemical" AssociatedControlID="txtSummaryOfHazards"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtSummaryOfHazards" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblOrderedBy" runat="server" Text="Ordered By" CssClass="lblChemical" AssociatedControlID="txtOrderedBy"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtOrderedBy" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>


        <div>
            <asp:Label ID="lblReviewed" runat="server" Text="Reviewed" CssClass="lblChemical" AssociatedControlID="txtReviewed"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtReviewed" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblPurpose" runat="server" Text="Purpose" CssClass="lblChemical" AssociatedControlID="txtPurpose"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtPurpose" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblLinkToMSDS" runat="server" Text="Link to MSDS" CssClass="lblChemical" AssociatedControlID="txtFormula"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtLinkToMSDS" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblCatagory" runat="server" Text="Catagory" CssClass="lblChemical" AssociatedControlID="txtCatagory"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtCatagory" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblCOSHHCompleted" runat="server" Text="COSHH Completed (Y/N)" CssClass="lblChemical" AssociatedControlID="txtCOSHHCompleted"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtCOSHHCompleted" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblMSDSAvailable" runat="server" Text="MSDS Availabe (Y/N)" CssClass="lblChemical" AssociatedControlID="txtMSDSAvailable"></asp:Label>
        </div>

        <div>
            <asp:TextBox ID="txtMSDSAvailable" runat="server" CssClass="txtChemical"></asp:TextBox>
        </div>


    <asp:Button ID="btnClearFields" runat="server" Text="Clear All" OnClick="btnClearFields_Click" />
    <asp:Button ID="btnAddChemicalData" runat="server" Text="Add" OnClick="btnAddChemicalData_Click" />

    </div></div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">Search
        
         <asp:TextBox ID="txtSearch" runat="server" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
             <asp:Label ID="lblSearchTerm" runat="server"></asp:Label><a data-toggle="collapse"  href="#collapse2"> &#9660;</a>  
      </h4>
    </div>
    <div id="collapse2" class="panel-collapse collapse">
      <div class="panel-body">
        
          <asp:Repeater ID="rptrSearch" runat="server">
              <HeaderTemplate></HeaderTemplate>
              <ItemTemplate>

               <p>Name: <%#Eval ("Name_of_Substance") %>    </p>           
    <p>Formula: <%#Eval ("Formula") %></p>
   <p>Location: <%#Eval ("Location") %></p> 
  <p>Units: <%#Eval ("Units") %> </p> 
   <p>Trigger Level: <%#Eval ("Trigger_Level") %></p>
   <!-- [Current Stock Level]
    [Supplier]
    [Supplier Product Code]
    [CAS Code]
    [Batch Code]
    [Purity/Grade]
    [Expiry Date]
    [Summary of Hazards
    [Ordered by]
    [Reviewed
    [Purpose (Teaching/Research etc)]
    [Link to MSDS]
    [Category]
    [COSHH completed (Y/N)]
    [MSDS Available (Y/N)]
    [F21
    [F22
    [F23]
    [ID]
                  -->

              </ItemTemplate>

          </asp:Repeater>










      </div>
    </div>
  </div>
  
 
    

  </div>
    </div>
    <script src="../js/jquery-2.2.3.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>


    


</asp:Content>
