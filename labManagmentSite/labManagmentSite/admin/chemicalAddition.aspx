<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="chemicalAddition.aspx.cs" Inherits="labManagmentSite.admin.chemicalAddition" %>

<%@ Import Namespace="App.Extensions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/itemStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="mainPage" class="container">


        <h1 class="reqHeader">Add a New Substance to the Chemical Database</h1>

        <p>Use the drop downs below to search for a product or key word currently in the database to display all the included fields, or add a new product by filling out all the required fields with accurate information and selecting the add button.</p>
        <!--TODO must add field validation for this form. Then we can modify the database table fileds to match the specific format of each field in a record. -->

        <!-- It may also be worth having a sepporate page on the site to diplay the whole grid of data and a sepporate one to allow the user to simply search for a record and have it appear in front of them. This would greatly increase accessibility. -->
        <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">Search
        
         <asp:TextBox ID="txtSearch" runat="server" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
                        <asp:Label ID="lblSearchTerm" runat="server"></asp:Label><a data-toggle="collapse" href="#collapse2"> &#9660;</a>
                    </h4>
                </div>
                <div id="collapse2" class="panel-collapse collapse in">
                    <div id="chemPanel" class="panel-body">



                        <asp:Repeater ID="rptrchemResults" runat="server">

                            <HeaderTemplate>
                                <table class="table-bordered">

                                    <tbody>
                                        <tr class="tableHead">
                                            <td>Date</td>
                                            <td>User</td>
                                            <td>Comment</td>
                                        </tr>
                            </HeaderTemplate>

                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("Date", "{0:d}")%></td>
                                    <td><%#Eval("User")%></td>
                                    <td><%#Eval("Comment")%></td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody>
                            </FooterTemplate>

                        </asp:Repeater>


                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>


                        <asp:Repeater ID="rptrSearch" runat="server">
                            <HeaderTemplate>
                                <table class="table-bordered">

                                    <tbody>
                                        <tr class="tableHead">
                                            <td>Name</td>
                                            <td>Formula</td>
                                            <td>Location</td>
                                            <td>Category</td>
                                            <td>Units</td>
                                            <td>Trigger Level</td>
                                            <td>Current Stock Level</td>
                                            <td>Summary of Hazards</td>
                                            <td>Purpose</td>
                                            <td>Link to MSDS</td>
                                        </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval ("Name_of_Substance") %>    </td>
                                    <td><%# Eval("Formula").ToString().ToHtmlFormula() %></td>
                                    <td><%#Eval ("Location") %></td>
                                    <td><%#Eval("Category") %></td>
                                    <td><%#Eval ("Units") %> </td>
                                    <td><%#Eval ("Trigger_Level") %></td>
                                    <td><%#Eval ("Current_Stock_Level") %></td>
                                    <td><%#Eval ("Summary_of_Hazards") %></td>
                                    <td><%#Eval ("Purpose") %></td>
                                    <td id="msds"><%#Eval ("Link_to_MSDS") %></td>


                                </tr>

                            </ItemTemplate>

                            <FooterTemplate>
                                </table>
                            </FooterTemplate>

                        </asp:Repeater>







                    </div>
                </div>
            </div>


            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#ContentPlaceHolder1_collapse1">Add New Substance</a>
                    </h4>
                </div>
                <div id="collapse1" class="panel-collapse collapse " runat="server">
                    <div class="panel-body">
                        <div id="addChemicalForm">
                            <!-- 1. -->
                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblNameOfSubstance" runat="server" Text="Name of Substance" CssClass="lblChemical" AssociatedControlID="txtNameOfSubstance"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtNameOfSubstance" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtNameOfSubstance" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>

                            <!-- 2. -->
                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblFormula" runat="server" Text="Formula" CssClass="lblChemical" AssociatedControlID="txtFormula"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtFormula" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtFormula" CssClass="validation"></asp:RequiredFieldValidator>

                            </div>

                            <!-- 3. -->
                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblLocation" runat="server" Text="Location" CssClass="lblChemical" AssociatedControlID="txtLocation"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtLocation" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtLocation" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>

                            <!-- 4. -->
                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblUnits" runat="server" Text="Units" CssClass="lblChemical" AssociatedControlID="txtUnits"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtUnits" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtUnits" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>

                            <!-- 5. -->
                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblTriggerLevel" runat="server" Text="Trigger Level" CssClass="lblChemical" AssociatedControlID="txtTriggerLevel"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtTriggerLevel" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtTriggerLevel" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>

                            <!-- 6. -->
                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblCurrentStockLevel" runat="server" Text="Current Stock Level " CssClass="lblChemical" AssociatedControlID="txtCurrentStockLevel"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtCurrentStockLevel" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtCurrentStockLevel" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>

                            <!-- 7. -->

                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblSupplier" runat="server" Text="Supplier" CssClass="lblChemical" AssociatedControlID="txtSupplier"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtSupplier" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtsupplier" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>

                            <!-- 8. -->

                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblSupplierProductCode" runat="server" Text="Supplier Product Code" CssClass="lblChemical" AssociatedControlID="txtSupplierProductCode"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtSupplierProductCode" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtSupplierProductCode" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>

                            <!-- 9. -->

                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblCASCode" runat="server" Text="CAS Code" CssClass="lblChemical" AssociatedControlID="txtCASCode"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtCASCode" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtCASCode" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>

                            <!-- 10. -->

                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblBatchCode" runat="server" Text="Batch Code" CssClass="lblChemical" AssociatedControlID="txtBatchCode"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtBatchCode" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtBatchCode" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>

                            <!-- 11. -->

                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblPurityGrade" runat="server" Text="Purity/Grade" CssClass="lblChemical" AssociatedControlID="txtPurityGrade"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtPurityGrade" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtPurityGrade" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>


                            <!-- 12. -->

                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblExpiryDate" runat="server" Text="Expiry Date" CssClass="lblChemical" AssociatedControlID="txtExpiryDate"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtExpiryDate" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtExpiryDate" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>

                            <!-- 13. -->

                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblSummaryOfHazards" runat="server" Text="Summary of Hazards" CssClass="lblChemical" AssociatedControlID="txtSummaryOfHazards"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtSummaryOfHazards" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtSummaryOfHazards" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>

                            <!-- 14. -->

                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblOrderedBy" runat="server" Text="Ordered By" CssClass="lblChemical" AssociatedControlID="txtOrderedBy"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtOrderedBy" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtOrderedBy" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>

                            <!-- 15. -->

                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblReviewed" runat="server" Text="Reviewed" CssClass="lblChemical" AssociatedControlID="txtReviewed"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtReviewed" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtReviewed" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>

                            <!--17. -->

                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblPurpose" runat="server" Text="Purpose" CssClass="lblChemical" AssociatedControlID="txtPurpose"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtPurpose" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtPurpose" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>

                            <!--18. -->

                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblLinkToMSDS" runat="server" Text="Link to MSDS" CssClass="lblChemical" AssociatedControlID="txtFormula"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtLinkToMSDS" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtLinkToMSDS" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>

                            <!-- 19. -->

                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblCatagory" runat="server" Text="Catagory" CssClass="lblChemical" AssociatedControlID="txtCatagory"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtCatagory" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtCatagory" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>

                            <!-- 20. -->


                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblCOSHHCompleted" runat="server" Text="COSHH Completed (Y/N)" CssClass="lblChemical" AssociatedControlID="txtCOSHHCompleted"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtCOSHHCompleted" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtCOSHHCOmpleted" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>
                            <!-- 21. -->


                            <div class="request1">
                                <div>
                                    <asp:Label ID="lblMSDSAvailable" runat="server" Text="MSDS Availabe (Y/N)" CssClass="lblChemical" AssociatedControlID="txtMSDSAvailable"></asp:Label>
                                </div>

                                <div>
                                    <asp:TextBox ID="txtMSDSAvailable" runat="server" CssClass="txtChemical"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="*This Filed Cannot Be Left Blank" ControlToValidate="txtMSDSAvailable" CssClass="validation"></asp:RequiredFieldValidator>
                            </div>
                            <!-- -->

                            <div class="btnReq">
                                <asp:Button ID="btnClearFields" runat="server" Text="Clear All" CssClass="btn btn-default" OnClick="btnClearFields_Click" />

                                <asp:Button ID="btnAddChemicalData" runat="server" Text="Add" CssClass="btn btn-default" OnClick="btnAddChemicalData_Click" />
                            </div>


                        </div>
                    </div>
                </div>
            </div>





        </div>
    </div>
    <script src="../js/jquery-2.2.3.js"></script>
    <script src="../js/bootstrap.min.js"></script>





</asp:Content>
