<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="laboratoryStores.aspx.cs" Inherits="labManagmentSite.laboratoryStores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lab Stores</h1>
    <asp:Repeater ID="rptrLabStore" runat="server" DataSourceID="SqlDataSourceLab">
        <HeaderTemplate></HeaderTemplate>
        <ItemTemplate><p><%#Eval("Name") %></p></ItemTemplate>
        <FooterTemplate></FooterTemplate>

    </asp:Repeater>
    <asp:Repeater ID="rptr"

<asp:SqlDataSource ID="SqlDataSourceLab" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT [Name] FROM [Lab_Stores] WHERE ([Category] = @Category)">
    <SelectParameters>
        <asp:Parameter DefaultValue="Gas" Name="Category" Type="String" />
    </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
