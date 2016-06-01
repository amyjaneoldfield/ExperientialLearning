<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="researchEquipment.aspx.cs" Inherits="labManagmentSite.researchEquipment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container">
    
     <h1>Laboratories</h1>

   

    <asp:Repeater runat="server" ID="rptrLabs" DataSourceID="sqlDataSourceLabs">
        <HeaderTemplate>  </HeaderTemplate>
        <ItemTemplate>
            
           <div class="lab">
            <h4><%#Eval ("LabName")%></h4>
            <h5><%#Eval ("Location")%></h5>
            <asp:HiddenField ID="hdnValue" Value='<%#Eval("Location")%>' runat="server"/>
            <asp:SqlDataSource ID="sqlDataSourceChild" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT [Name], [ID] FROM [User_Research_Equip] WHERE [Location] = @Location" >
                <SelectParameters>
                    <asp:ControlParameter Name="Location" PropertyName="Value" ControlID="hdnValue" Type="String" DefaultValue="" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Repeater ID ="rptrLabChild" runat="server" DataSourceID="sqlDataSourceChild">
                <HeaderTemplate><ul></HeaderTemplate>
                <ItemTemplate>
                   
                    <li class="equipBulletList"><a href="<%#Eval("ID","individualItem.aspx?ID={0}") %>"><%#Eval ("Name")%></li></a>


                </ItemTemplate>
                <FooterTemplate></ul></FooterTemplate>
            </asp:Repeater>
            </div>
            


        </ItemTemplate>
        <FooterTemplate></FooterTemplate>

    </asp:Repeater> 

    <asp:SqlDataSource ID="SqlDataSourceLabs" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT Distinct  User_Research_Equip.Location, LabNames.LabName FROM [User_Research_Equip] INNER JOIN [LabNames] ON User_Research_Equip.Location = LabNames.LabRoom">
        
    </asp:SqlDataSource>

           </div>
</asp:Content>


