<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="adminMain.aspx.cs" Inherits="labManagmentSite.admin.adminMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Admin Control</h2>

    <ul class="adminConLink">
    <li>
    <a href="~/admin/createAdmin.aspx" runat="server">Create new admin </a></li>

    <li class="sep"> | </li>

        <li>
    <a href="~/admin/chemicalData.aspx" runat="server">View Chemical Stores </a></li>

    <li class="sep"> | </li>

        <li>
    <a href="~/admin/chemicalAddition.aspx" runat="server">Add a new chemical </a></li>
</ul>

</asp:Content>
