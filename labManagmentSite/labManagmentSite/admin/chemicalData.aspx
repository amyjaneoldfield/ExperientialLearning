 <%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="chemicalData.aspx.cs" Inherits="labManagmentSite.admin.chemicalData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" DataSourceID="chemicalDataSource"></asp:GridView>

<asp:SqlDataSource ID="chemicalDataSource" runat="server"></asp:SqlDataSource>

</asp:Content>
