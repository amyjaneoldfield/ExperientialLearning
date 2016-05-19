<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="researchEquipment.aspx.cs" Inherits="labManagmentSite.researchEquipment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1>Laboratories</h1>

    <asp:Repeater runat="server" ID="rptrLabs" DataSourceID="sqlDataSourceLabs">
        <HeaderTemplate></HeaderTemplate>
        <ItemTemplate>
            <h2><%#Eval ("Location")%></h2>
            <asp:HiddenField ID="hdnValue" Value='<%#Eval("Location")%>' runat="server"/>
            <asp:SqlDataSource ID="sqlDataSourceChild" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT [Name], [ID] FROM [User_Research_Equip] WHERE [Location] = @Location" >
                <SelectParameters>
                    <asp:ControlParameter Name="Location" PropertyName="Value" ControlID="hdnValue" Type="String" DefaultValue="" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Repeater ID ="rptrLabChild" runat="server" DataSourceID="sqlDataSourceChild">
                <HeaderTemplate><ul></HeaderTemplate>
                <ItemTemplate><li><a href="<%#Eval("ID","individualItem.aspx?ID={0}") %>"><%#Eval ("Name")%></li></a></ItemTemplate>
                <FooterTemplate></ul></FooterTemplate>
            </asp:Repeater>
            



        </ItemTemplate>
        <FooterTemplate></FooterTemplate>

    </asp:Repeater> 

    <asp:SqlDataSource ID="SqlDataSourceLabs" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT DISTINCT [Location] FROM [User_Research_Equip]"></asp:SqlDataSource>
</asp:Content>

