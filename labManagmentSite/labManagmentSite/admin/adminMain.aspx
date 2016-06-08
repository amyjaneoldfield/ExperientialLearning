<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="adminMain.aspx.cs" Inherits="labManagmentSite.admin.adminMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div id="mainPage" class="container">
    <h2 class="reqHeader">Admin Control</h2>
    <p class="adminPara">This is a restricted access area, only Admin users have access to this region. Please be aware any changes you make are final, and may affect the current data being displayed on the site if updated.</p>

    <ul class="adminConLink">
    <li>
    <a href="~/admin/createAdmin.aspx" runat="server">Create new admin </a></li>

            <li class="sep1">| </li>

        <li>
    <a href="~/admin/chemicalData.aspx" runat="server">View Chemical Stores </a></li>

            <li class="sep1">| </li>

            <li>
                <a href="~/admin/addEquipment.aspx" runat="server">Add Equipment </a></li>

            <!--<li class="sep1">| </li>

        <li>
    <a href="~/admin/chemicalAddition.aspx" runat="server">Add a new chemical </a></li>-->
</ul>

    <p class="adminPara">Use the links above to nagivate to the secure admin sections where you can update, edit and delete admin users and current information being displayed in the databases as well as being displayed on the site</p>
           </div>
</asp:Content>
