<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="SiteMap.aspx.cs" Inherits="labManagmentSite.SiteMap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="mainPage" class="container">
         <h2>Sitemap</h2>

         <ul class="siteList">
             <li>Home</li>
             <li>Equipment Index</li>
               <li class="innerPointMap">Indivdual Item</li>
             <li>Laboratories</li>
             <li class="innerPointMap">Indivdual Item</li>
             <li>Equipment Booking</li>
             <li>Admin</li>
               <li class="innerPointMap">Login</li>
               <li class="innerPointMap">Create New Admin</li>
               <li class="innerPointMap">View Chemical Stores</li>
               <li class="innerPointMap">Add A New Chemical</li>
             <li>Contact Us</li>
             <li>Sitemap</li>
         </ul>


         </div>



</asp:Content>
