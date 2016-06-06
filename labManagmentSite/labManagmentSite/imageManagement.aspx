<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="imageManagement.aspx.cs" Inherits="labManagmentSite.imageManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSourceImage" AutoGenerateColumns="False" DataKeyNames="Id">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="path" HeaderText="path" SortExpression="path" />
            <asp:BoundField DataField="ext" HeaderText="ext" SortExpression="ext" />
            <asp:BoundField DataField="peiceofEquipment" HeaderText="peiceofEquipment" SortExpression="peiceofEquipment" />
            <asp:BoundField DataField="height" HeaderText="height" SortExpression="height" />
            <asp:BoundField DataField="width" HeaderText="width" SortExpression="width" />
            <asp:BoundField DataField="alt" HeaderText="alt" SortExpression="alt" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSourceImage" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT * FROM [Images] WHERE ([peiceofEquipment] = @peiceofEquipment)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Images] WHERE [Id] = @original_Id AND (([path] = @original_path) OR ([path] IS NULL AND @original_path IS NULL)) AND (([ext] = @original_ext) OR ([ext] IS NULL AND @original_ext IS NULL)) AND (([peiceofEquipment] = @original_peiceofEquipment) OR ([peiceofEquipment] IS NULL AND @original_peiceofEquipment IS NULL)) AND [height] = @original_height AND [width] = @original_width AND (([alt] = @original_alt) OR ([alt] IS NULL AND @original_alt IS NULL))" InsertCommand="INSERT INTO [Images] ([path], [ext], [peiceofEquipment], [height], [width], [alt]) VALUES (@path, @ext, @peiceofEquipment, @height, @width, @alt)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Images] SET [path] = @path, [ext] = @ext, [peiceofEquipment] = @peiceofEquipment, [height] = @height, [width] = @width, [alt] = @alt WHERE [Id] = @original_Id AND (([path] = @original_path) OR ([path] IS NULL AND @original_path IS NULL)) AND (([ext] = @original_ext) OR ([ext] IS NULL AND @original_ext IS NULL)) AND (([peiceofEquipment] = @original_peiceofEquipment) OR ([peiceofEquipment] IS NULL AND @original_peiceofEquipment IS NULL)) AND [height] = @original_height AND [width] = @original_width AND (([alt] = @original_alt) OR ([alt] IS NULL AND @original_alt IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_path" Type="String" />
            <asp:Parameter Name="original_ext" Type="String" />
            <asp:Parameter Name="original_peiceofEquipment" Type="String" />
            <asp:Parameter Name="original_height" Type="String" />
            <asp:Parameter Name="original_width" Type="String" />
            <asp:Parameter Name="original_alt" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="path" Type="String" />
            <asp:Parameter Name="ext" Type="String" />
            <asp:Parameter Name="peiceofEquipment" Type="String" />
            <asp:Parameter Name="height" Type="String" />
            <asp:Parameter Name="width" Type="String" />
            <asp:Parameter Name="alt" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="peiceofEquipment" QueryStringField="ID" Type="String" DefaultValue="0" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="path" Type="String" />
            <asp:Parameter Name="ext" Type="String" />
            <asp:Parameter Name="peiceofEquipment" Type="String" />
            <asp:Parameter Name="height" Type="String" />
            <asp:Parameter Name="width" Type="String" />
            <asp:Parameter Name="alt" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_path" Type="String" />
            <asp:Parameter Name="original_ext" Type="String" />
            <asp:Parameter Name="original_peiceofEquipment" Type="String" />
            <asp:Parameter Name="original_height" Type="String" />
            <asp:Parameter Name="original_width" Type="String" />
            <asp:Parameter Name="original_alt" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>



</asp:Content>
