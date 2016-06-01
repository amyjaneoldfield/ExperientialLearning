<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="addEquipment.aspx.cs" Inherits="labManagmentSite.admin.addEquipment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h1>Modify Equipment Index </h1>

    <h2>Add Equipment</h2>



    <div>
        <asp:Label ID="lblAddEquipName" runat="server" Text="Name of Equipment" AssociatedControlID="txtAddEquipName"></asp:Label>
    </div>
    <div>
        <asp:TextBox ID="txtAddEquipName" runat="server"></asp:TextBox>
    </div>

    <div>
        <asp:Label ID="lblEquipLocation" runat="server" Text="Location of Equipment" AssociatedControlID="txtAddEquipLocation"></asp:Label>
    </div>

    <div>
        <asp:TextBox ID="txtAddEquipLocation" runat="server"></asp:TextBox>
    </div>

    <div>
            <asp:Label ID="lblAddEquipCustodian" runat="server" Text="Custodian (If Applicable)" AssociatedControlID="txtAddEquipcustodian"></asp:Label>
    </div>
    <div>
        <asp:TextBox ID="txtAddEquipCustodian" runat="server"></asp:TextBox>
    </div>

    <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />


   

    <h2>Edit and Delete Equipement</h2>


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataEquipment" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
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
