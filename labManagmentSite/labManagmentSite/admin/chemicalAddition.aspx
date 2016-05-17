<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="chemicalAddition.aspx.cs" Inherits="labManagmentSite.admin.chemicalAddition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
    <h1>Add a New Substance to the Chemical Database</h1>

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

        <div id="hazardsText">
            <asp:TextBox ID="txtSummaryOfHazards" runat="server" CssClass="txtChemical" TextMode="MultiLine"></asp:TextBox>
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

    </div>

    <div id="chemicalGrid">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="chemicalSource">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Formula" HeaderText="Formula" SortExpression="Formula" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Units" HeaderText="Units" SortExpression="Units" />
            <asp:BoundField DataField="TriggerLevel" HeaderText="TriggerLevel" SortExpression="TriggerLevel" />
            <asp:BoundField DataField="CurrentStock" HeaderText="CurrentStock" SortExpression="CurrentStock" />
            <asp:BoundField DataField="Supplier" HeaderText="Supplier" SortExpression="Supplier" />
            <asp:BoundField DataField="SupplierProductCode" HeaderText="SupplierProductCode" SortExpression="SupplierProductCode" />
            <asp:BoundField DataField="CASCode" HeaderText="CASCode" SortExpression="CASCode" />
            <asp:BoundField DataField="BatchCode" HeaderText="BatchCode" SortExpression="BatchCode" />
            <asp:BoundField DataField="Purity/Grade" HeaderText="Purity/Grade" SortExpression="Purity/Grade" />
            <asp:BoundField DataField="Expiry Date" HeaderText="Expiry Date" SortExpression="Expiry Date" />
            <asp:BoundField DataField="SummaryOfHazards" HeaderText="SummaryOfHazards" SortExpression="SummaryOfHazards" />
            <asp:BoundField DataField="OrderedBy" HeaderText="OrderedBy" SortExpression="OrderedBy" />
            <asp:BoundField DataField="Reviewed" HeaderText="Reviewed" SortExpression="Reviewed" />
            <asp:BoundField DataField="Purpose" HeaderText="Purpose" SortExpression="Purpose" />
            <asp:BoundField DataField="LinkToMSDS" HeaderText="LinkToMSDS" SortExpression="LinkToMSDS" />
            <asp:BoundField DataField="COSHHCompleted" HeaderText="COSHHCompleted" SortExpression="COSHHCompleted" />
            <asp:BoundField DataField="MSDSAvailable" HeaderText="MSDSAvailable" SortExpression="MSDSAvailable" />
            <asp:BoundField DataField="Catagory" HeaderText="Catagory" SortExpression="Catagory" />
        </Columns>
    </asp:GridView>

</div>

    

    <asp:SqlDataSource ID="chemicalSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT * FROM [Lab]"></asp:SqlDataSource>



    

</div>

</asp:Content>
