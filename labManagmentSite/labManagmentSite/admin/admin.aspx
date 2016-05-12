<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="labManagmentSite.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Admin</h1>

    <a href="createAdmin.aspx">Create New Admin</a>

    <asp:LoginStatus ID="LoginStatus1" runat="server" />
    <asp:LoginName ID="LoginName1" runat="server" />
</asp:Content>
