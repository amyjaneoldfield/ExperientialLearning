<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="researchEquipment.aspx.cs" Inherits="labManagmentSite.researchEquipment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1>Laboratories</h1>

   
<img src="Images/Slide1.PNG" border="0" width="960" height="720" orgWidth="960" orgHeight="720" usemap="#labMap" alt="" />
<map name="labMap" id="labMap1">
<area id="labOne" alt="lab1" title="lab1"  shape="rect" coords="382,164,509,277" style="outline:none;" target="_self" onclick="exampleMapping"     />
<area id="labTwo" alt="lab2" title="lab2" href="http://www.image-maps.com/" shape="rect" coords="386,279,508,352" style="outline:none;" target="_self"     />
<area id="labThree" alt="lab3" title="lab3" href="http://www.image-maps.com/" shape="rect" coords="382,357,510,395" style="outline:none;" target="_self"     />
<area id="labFour" alt="lab4" title="lab4" href="http://www.image-maps.com/" shape="rect" coords="383,398,507,468" style="outline:none;" target="_self"     />
<area id="labFive" alt="lab5" title="lab5" href="http://www.image-maps.com/" shape="rect" coords="384,475,508,545" style="outline:none;" target="_self"     />
<area id="labSix" alt="lab6" title="lab6" href="http://www.image-maps.com/" shape="rect" coords="385,552,509,622" style="outline:none;" target="_self"     />
<area shape="rect" coords="958,718,960,720" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
</map>

    <asp:Repeater runat="server" ID="rptrLabs" DataSourceID="sqlDataSourceLabs">
        <HeaderTemplate>  </HeaderTemplate>
        <ItemTemplate>
               <asp:Panel Data-Label=""
            
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
                   
                    <li><a href="<%#Eval("ID","individualItem.aspx?ID={0}") %>"><%#Eval ("Name")%></li></a>


                </ItemTemplate>
                <FooterTemplate></ul></FooterTemplate>
            </asp:Repeater>
            



        </ItemTemplate>
        <FooterTemplate></FooterTemplate>

    </asp:Repeater> 

    <asp:SqlDataSource ID="SqlDataSourceLabs" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT Distinct  User_Research_Equip.Location, LabNames.LabName FROM [User_Research_Equip] INNER JOIN [LabNames] ON User_Research_Equip.Location = LabNames.LabRoom"></asp:SqlDataSource>
</asp:Content>

