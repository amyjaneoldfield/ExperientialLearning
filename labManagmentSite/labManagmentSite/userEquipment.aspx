<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="userEquipment.aspx.cs" Inherits="labManagmentSite.userEquipment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">#
    <h1>user equipment</h1>
     <asp:Repeater ID="rptrUser" runat="server" DataSourceID="SqlDataSourceUser">
        <HeaderTemplate><ul></ul></HeaderTemplate>
        <ItemTemplate>
<%#Eval("Name") %>
        </ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
        

    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSourceUser" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT [Name] FROM [User_Research_Equip] WHERE ([ResearchEquipment] = @ResearchEquipment)">
        <SelectParameters>
            <asp:Parameter DefaultValue="False" Name="ResearchEquipment" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
