<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="researchEquipment.aspx.cs" Inherits="labManagmentSite.researchEquipment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container">

    
     <h1 class="reqHeader">Laboratories</h1>

                
<img id="image" src="Images/Slide1.PNG" width="960" height="720"  usemap="#labMap" alt="" runat="server" />
<map name="labMap" id="labMap1">
<area id="THA061"  title="lab1"  shape="rect" coords="382,164,509,277" style="outline:none;" target="_self"  runat="server" href="researchEquipment.aspx?ID=tha061"  alt="gitgud"/>
<area id="tha063" title="lab2" shape="rect" coords="386,279,508,352" style="outline:none;" target="_self"/>
<area id="labThree" title="lab3" shape="rect" coords="382,357,510,395" style="outline:none;" target="_self"/>
<area id="labFour" title="lab4" shape="rect" coords="383,398,507,468" style="outline:none;" target="_self"/>
<area id="labFive" title="lab5" shape="rect" coords="384,475,508,545" style="outline:none;" target="_self"/>
<area id="labSix" title="lab6" shape="rect" coords="385,552,509,622" style="outline:none;" target="_self"/>
<area shape="rect" coords="958,718,960,720" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
</map>

   <p class="researchPara">Below is a grid where you can find pieces of equipment and there current location. To find out further information and specifics for each individual piece of equipment click the name to redirect to a Wiki Information page. </p>

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

    <asp:SqlDataSource ID="SqlDataSourceLabs" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT Distinct  User_Research_Equip.Location, LabNames.LabName FROM [User_Research_Equip] INNER JOIN [LabNames] ON User_Research_Equip.Location = LabNames.LabRoom">
        
    </asp:SqlDataSource>

           </div>
</asp:Content>


