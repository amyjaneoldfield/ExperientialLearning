<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="chemicalData.aspx.cs" Inherits="labManagmentSite.admin.chemicalData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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

</asp:Content>
