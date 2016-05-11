<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="laboratoryStores.aspx.cs" Inherits="labManagmentSite.laboratoryStores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lab Stores</h1>




    <asp:Repeater ID="rptrGases" runat="server" DataSourceID="SqlDataSourceLab" OnItemCreated="rptrGases_ItemCreated">
        <HeaderTemplate></HeaderTemplate>


        <ItemTemplate>
            <h2><%#Eval("Category") %></h2>
            <asp:HiddenField ID="hdnValue" Value='<%#Eval("Category") %>' runat="server" />
            <asp:SqlDataSource ID="SqlDataSourceItems" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT [Name] From [Lab_Stores] WHERE [Category] = @category">
                <SelectParameters>
                    <asp:ControlParameter Name="category" PropertyName="Value" ControlID="hdnValue" Type="String" DefaultValue="" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Repeater ID="rptrItems" runat="server" DataSourceID="SqlDataSourceItems">
                <HeaderTemplate>
                    <ul>
                </HeaderTemplate>
                <ItemTemplate>
                    <li><%#Eval("Name") %></li>
                </ItemTemplate>
                <FooterTemplate></ul></FooterTemplate>
            </asp:Repeater>




        </ItemTemplate>


        <FooterTemplate></FooterTemplate>

    </asp:Repeater>


    <asp:SqlDataSource ID="SqlDataSourceLab" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT DISTINCT [Category] FROM [Lab_Stores]"></asp:SqlDataSource>


</asp:Content>
