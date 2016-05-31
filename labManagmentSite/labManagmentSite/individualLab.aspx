<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="individualLab.aspx.cs" Inherits="labManagmentSite.individualLab" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container">
    
    <asp:Repeater runat="server" ID="rptrLabs" DataSourceID="sqlDataSourceLabs">
        <HeaderTemplate> <h1>header</h1> </HeaderTemplate>
        <ItemTemplate>
            
           <div class="lab">

            <h4><%#Eval("LabName")%></h4>
            <h5><%#Eval("Location")%></h5>



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
            </div>

        </ItemTemplate>
        <FooterTemplate></FooterTemplate>

    </asp:Repeater> 



    <asp:SqlDataSource ID="sqlDataSourceLabs" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT ID, NAME, Location, LabName from [user_research_equip] INNER JOIN [LabNames] ON user_research_equip.Location = LabNames.LabRoom  WHERE [LabName] = @LabName">
        <SelectParameters>
                     <asp:QueryStringParameter Name="LabName" QueryStringField="Name" Type="String" />
                </SelectParameters>
    </asp:SqlDataSource>

           </div>


</asp:Content>
