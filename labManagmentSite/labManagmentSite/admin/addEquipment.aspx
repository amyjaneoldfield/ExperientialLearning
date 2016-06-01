<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="addEquipment.aspx.cs" Inherits="labManagmentSite.admin.addEquipment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h1 class="reqHeader">Modify Equipment Index </h1>
    <p class="addEquipPara">This page allows you to add, edit and delete data from the current database used to display equipment among the Laboratories index.</p>

    <h3 class="reqHeader">Add Equipment</h3>
    <p class="addEquipPara">Fill out the form below to create a new equipment list, once added with a specific room number it will appear on the Laboratories index under the stated room. If you wish to edit or delete the fields / record then use the tabel below.</p>

    <div class="addEquipForm">

    <div class="addLblEquip">
        <asp:Label ID="lblAddEquipName" runat="server" Text="Name of Equipment" AssociatedControlID="txtAddEquipName"></asp:Label>
    </div>
    <div>
        <asp:TextBox ID="txtAddEquipName" runat="server" CssClass="txtAddEquip"></asp:TextBox>
    </div>

    <div class="addLblEquip">
        <asp:Label ID="lblEquipLocation" runat="server" Text="Location of Equipment (Room Number)" AssociatedControlID="txtAddEquipLocation"></asp:Label>
    </div>

    <div>
        <asp:TextBox ID="txtAddEquipLocation" runat="server"  CssClass="txtAddEquip"></asp:TextBox>
    </div>

    <div class="addLblEquip" >
            <asp:Label ID="lblAddEquipCustodian" runat="server" Text="Custodian (If Applicable)" AssociatedControlID="txtAddEquipcustodian"></asp:Label>
    </div>
    <div>
        <asp:TextBox ID="txtAddEquipCustodian" runat="server"  CssClass="txtAddEquip"></asp:TextBox>
    </div>

        <div class="addEquipBtn">
    <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" CssClass="btn btn-default" />
</div>
</div>
   

    <h3 class="reqHeader">Edit and Delete Equipment</h3>
    <p class="addEquipPara">Use the table below to edit or delete equipment information, please note this is linked to the database, any changes made will be final.</p>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataEquipment" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="addEquipGrid">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" >
                  <ControlStyle CssClass="btn btn-default" />
                 </asp:CommandField>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Custodian" HeaderText="Custodian" SortExpression="Custodian" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataEquipment" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" DeleteCommand="DELETE FROM [User_Research_Equip] WHERE [ID] = @original_ID AND [Name] = @original_Name AND [Location] = @original_Location AND (([Custodian] = @original_Custodian) OR ([Custodian] IS NULL AND @original_Custodian IS NULL))" InsertCommand="INSERT INTO [User_Research_Equip] ([Name], [Location], [Custodian]) VALUES (@Name, @Location, @Custodian)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [Name], [Location], [Custodian] FROM [User_Research_Equip] ORDER BY [Name]" UpdateCommand="UPDATE [User_Research_Equip] SET [Name] = @Name, [Location] = @Location, [Custodian] = @Custodian WHERE [ID] = @original_ID AND [Name] = @original_Name AND [Location] = @original_Location AND (([Custodian] = @original_Custodian) OR ([Custodian] IS NULL AND @original_Custodian IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Location" Type="String" />
            <asp:Parameter Name="original_Custodian" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Custodian" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Custodian" Type="String" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Location" Type="String" />
            <asp:Parameter Name="original_Custodian" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>



</asp:Content>
