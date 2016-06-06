<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="researchEquipment.aspx.cs" Inherits="labManagmentSite.researchEquipment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div id="mainPage" class="container">

    
     <h1 class="reqHeader">Laboratories</h1>








   <p class="researchPara">Below is a grid where you can find pieces of equipment and there current location. To find out further information and specifics for each individual piece of equipment click the name to redirect to a Wiki Information page. </p>


           <div class="equipmentRpt">
    <asp:Repeater runat="server" ID="rptrLabs" DataSourceID="sqlDataSourceLabs" OnItemDataBound="rptrLabs_ItemDataBound">
        <HeaderTemplate>  </HeaderTemplate>
        <ItemTemplate>
             <asp:HiddenField ID="hdnValue" Value='<%#Eval("Location")%>' runat="server"/>
           <div id="indLab" class="lab" runat="server">
            <h4><%#Eval ("LabName")%></h4>
            <h5><%#Eval ("Location")%></h5>
           
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
</div>



    <asp:SqlDataSource ID="SqlDataSourceLabs" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT Distinct  User_Research_Equip.Location, LabNames.LabName FROM [User_Research_Equip] INNER JOIN [LabNames] ON User_Research_Equip.Location = LabNames.LabRoom">
        
    </asp:SqlDataSource>

           </div>
</asp:Content>


