<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="userEquipment.aspx.cs" Inherits="labManagmentSite.userEquipment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div id="mainPage" class="container">
    <h1 class="reqHeader">Equipment Index</h1>
           <p class="indexPara">Below you will find a list of all the equipment the department has avalible for students and staff to use. Select the specific piece of equipment by clicking the name to navigate to a seperate page
               which contains all the details regarding its location, documents etc.
           </p>


         
     <asp:Repeater ID="rptrUser" runat="server" DataSourceID="SqlDataSourceUser">

         
        <HeaderTemplate><ul class="indItem"></HeaderTemplate>
        <ItemTemplate>
          
<li class ="equipList"> <a href="<%#Eval("ID","individualItem.aspx?ID={0}") %>"><%#Eval("Name") %></a></li>
        </ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
        

    </asp:Repeater>
           <ul class="indItem">
    <asp:ListView ID="ListView1" runat="server">
       
        <ItemTemplate>
           <li class =" equipList"><%#Eval("indexVal")%></li>
        
        </ItemTemplate>
    </asp:ListView>


           </ul>
    <asp:SqlDataSource ID="SqlDataSourceUser" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT [ID], [Name] FROM [User_Research_Equip] ORDER BY Name ASC">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="ResearchEquipment" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
           </div>
</asp:Content>
