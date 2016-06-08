<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="chemicalData.aspx.cs" Inherits="labManagmentSite.admin.chemicalData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="mainPage" class="container">
<h3 class="reqHeader">Add Chemicals</h3> 
    <p>Use the drop down below to add a new chemical to the current database, once added correctly it will be displayed below.  </p>
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
                                    <asp:Label ID="lblTriggerLevel" runat="server" Text="Trigger Label" CssClass="lblChemical" AssociatedControlID="txtTriggerLevel"></asp:Label>
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




















    <h1 class="reqHeader">Chemicals Table</h1>
    <p>Below is a grid of all the current chemicals in the database, used to display any data on the site. Please note any changes made here will be final.</p>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="chemicalDataSource" AutoGenerateColumns="False" DataKeyNames="ID" AllowPaging="True" GridLines="None" CellSpacing="-1" CssClass="adminTable">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True">
                <ControlStyle CssClass="btn btn-default" />
            </asp:CommandField>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name_of_Substance" HeaderText="Name of Substance" SortExpression="Name_of_Substance" />
            <asp:BoundField DataField="Formula" HeaderText="Formula" SortExpression="Formula" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Units" HeaderText="Units" SortExpression="Units" />
            <asp:BoundField DataField="Trigger_Level" HeaderText="Trigger Level" SortExpression="Trigger_Level" />
            <asp:BoundField DataField="Current_Stock_Level" HeaderText="Current Stock Level" SortExpression="Current_Stock_Level" />
            <asp:BoundField DataField="Supplier" HeaderText="Supplier" SortExpression="Supplier" />
            <asp:BoundField DataField="Reviewed" HeaderText="Reviewed" SortExpression="Reviewed" />
            <asp:BoundField DataField="Ordered_by" HeaderText="Ordered by" SortExpression="Ordered_by" />
            <asp:BoundField DataField="Summary_of_Hazards" HeaderText="Summary of Hazards" SortExpression="Summary_of_Hazards" />
            <asp:BoundField DataField="Expiry_Date" HeaderText="Expiry Date" SortExpression="Expiry_Date" />
            <asp:BoundField DataField="Purity_Grade" HeaderText="Purity Grade" SortExpression="Purity_Grade" />
            <asp:BoundField DataField="Batch_Code" HeaderText="Batch Code" SortExpression="Batch_Code" />
            <asp:BoundField DataField="CAS_Code" HeaderText="CAS Code" SortExpression="CAS_Code" />
            <asp:BoundField DataField="Supplier_Product_Code" HeaderText="Supplier Product Code" SortExpression="Supplier_Product_Code" />
            <asp:BoundField DataField="Purpose" HeaderText="Purpose" SortExpression="Purpose" />
            <asp:BoundField DataField="MSDS_Available" HeaderText="MSDS Available" SortExpression="MSDS_Available" />
            <asp:BoundField DataField="Link_to_MSDS" HeaderText="Link to MSDS" SortExpression="Link_to_MSDS" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="COSHH_completed" HeaderText="COSHH Completed" SortExpression="COSHH_completed" />

        </Columns>
      
        <RowStyle CssClass="adminTblData" />
    </asp:GridView>

    <asp:SqlDataSource ID="chemicalDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" DeleteCommand="DELETE FROM [ChemData] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ChemData] ([MSDS_Available], [Name_of_Substance], [Formula], [Location], [Units], [Trigger_Level], [Current_Stock_Level], [Supplier], [Reviewed], [Ordered_by], [Summary_of_Hazards], [Expiry_Date], [Purity_Grade], [Batch_Code], [CAS_Code], [Supplier_Product_Code], [Purpose], [Link_to_MSDS], [Category], [COSHH_completed]) VALUES (@MSDS_Available, @Name_of_Substance, @Formula, @Location, @Units, @Trigger_Level, @Current_Stock_Level, @Supplier, @Reviewed, @Ordered_by, @Summary_of_Hazards, @Expiry_Date, @Purity_Grade, @Batch_Code, @CAS_Code, @Supplier_Product_Code, @Purpose, @Link_to_MSDS, @Category, @COSHH_completed)" SelectCommand="SELECT [MSDS_Available], [Name_of_Substance], [Formula], [Location], [Units], [Trigger_Level], [Current_Stock_Level], [Supplier], [Reviewed], [Ordered_by], [Summary_of_Hazards], [Expiry_Date], [Purity_Grade], [Batch_Code], [CAS_Code], [Supplier_Product_Code], [Purpose], [Link_to_MSDS], [Category], [COSHH_completed], [ID] FROM [ChemData]" UpdateCommand="UPDATE [ChemData] SET [MSDS_Available] = @MSDS_Available, [Name_of_Substance] = @Name_of_Substance, [Formula] = @Formula, [Location] = @Location, [Units] = @Units, [Trigger_Level] = @Trigger_Level, [Current_Stock_Level] = @Current_Stock_Level, [Supplier] = @Supplier, [Reviewed] = @Reviewed, [Ordered_by] = @Ordered_by, [Summary_of_Hazards] = @Summary_of_Hazards, [Expiry_Date] = @Expiry_Date, [Purity_Grade] = @Purity_Grade, [Batch_Code] = @Batch_Code, [CAS_Code] = @CAS_Code, [Supplier_Product_Code] = @Supplier_Product_Code, [Purpose] = @Purpose, [Link_to_MSDS] = @Link_to_MSDS, [Category] = @Category, [COSHH_completed] = @COSHH_completed WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MSDS_Available" Type="String" />
            <asp:Parameter Name="Name_of_Substance" Type="String" />
            <asp:Parameter Name="Formula" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Units" Type="String" />
            <asp:Parameter Name="Trigger_Level" Type="String" />
            <asp:Parameter Name="Current_Stock_Level" Type="String" />
            <asp:Parameter Name="Supplier" Type="String" />
            <asp:Parameter Name="Reviewed" Type="String" />
            <asp:Parameter Name="Ordered_by" Type="String" />
            <asp:Parameter Name="Summary_of_Hazards" Type="String" />
            <asp:Parameter Name="Expiry_Date" Type="String" />
            <asp:Parameter Name="Purity_Grade" Type="String" />
            <asp:Parameter Name="Batch_Code" Type="String" />
            <asp:Parameter Name="CAS_Code" Type="String" />
            <asp:Parameter Name="Supplier_Product_Code" Type="String" />
            <asp:Parameter Name="Purpose" Type="String" />
            <asp:Parameter Name="Link_to_MSDS" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="COSHH_completed" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="MSDS_Available" Type="String" />
            <asp:Parameter Name="Name_of_Substance" Type="String" />
            <asp:Parameter Name="Formula" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Units" Type="String" />
            <asp:Parameter Name="Trigger_Level" Type="String" />
            <asp:Parameter Name="Current_Stock_Level" Type="String" />
            <asp:Parameter Name="Supplier" Type="String" />
            <asp:Parameter Name="Reviewed" Type="String" />
            <asp:Parameter Name="Ordered_by" Type="String" />
            <asp:Parameter Name="Summary_of_Hazards" Type="String" />
            <asp:Parameter Name="Expiry_Date" Type="String" />
            <asp:Parameter Name="Purity_Grade" Type="String" />
            <asp:Parameter Name="Batch_Code" Type="String" />
            <asp:Parameter Name="CAS_Code" Type="String" />
            <asp:Parameter Name="Supplier_Product_Code" Type="String" />
            <asp:Parameter Name="Purpose" Type="String" />
            <asp:Parameter Name="Link_to_MSDS" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="COSHH_completed" Type="String" />

        </UpdateParameters>
    </asp:SqlDataSource>

    <<script src="../js/jquery-2.2.3.js"></script>
    <script src="../js/bootstrap.min.js"></script>


</asp:Content>
