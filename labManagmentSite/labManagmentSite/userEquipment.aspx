<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="userEquipment.aspx.cs" Inherits="labManagmentSite.userEquipment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container">
    <h1 class="UserTitle">User Equipment</h1>
     <asp:Repeater ID="rptrUser" runat="server" DataSourceID="SqlDataSourceUser">

         
        <HeaderTemplate><ul class="indItem"></HeaderTemplate>
        <ItemTemplate>
          
<li class ="equipList"> <a href="<%#Eval("ID","individualItem.aspx?ID={0}") %>"><%#Eval("Name") %></a></li>
        </ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
        

    </asp:Repeater>

    <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
           <p><%#Eval("Name")%>"></p>
        </ItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSourceUser" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT [ID], [Name] FROM [User_Research_Equip] WHERE ([ResearchEquipment] = @ResearchEquipment) ORDER BY Name ASC">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="ResearchEquipment" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
           </div>
</asp:Content>
