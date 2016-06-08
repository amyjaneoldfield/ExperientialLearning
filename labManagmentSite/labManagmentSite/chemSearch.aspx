<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="chemSearch.aspx.cs" Inherits="labManagmentSite.chemSearch" %>

<%@ Import Namespace="App.Extensions" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div id="mainPage" class="container">


        <h1 class="reqHeader">Chemical Search</h1>

        <p>Use the drop downs below to searchk for a product or key word currently in the database to display all the included fields.</p>
        <!--TODO must add field validation for this form. Then we can modify the database table fileds to match the specific format of each field in a record. -->

        <!-- It may also be worth having a sepporate page on the site to diplay the whole grid of data and a sepporate one to allow the user to simply search for a record and have it appear in front of them. This would greatly increase accessibility. -->
        <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">Search
        
         <asp:TextBox ID="txtSearch" runat="server" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
                        <asp:Label ID="lblSearchTerm" runat="server"></asp:Label><a data-toggle="collapse" href="#collapse2"> &#9660;</a>
                    </h4>
                </div>
                <div id="collapse2" class="panel-collapse collapse in">
                    <div id="chemPanel" class="panel-body">



                        <asp:Repeater ID="rptrchemResults" runat="server">

                            <HeaderTemplate>
                                <table class="table-bordered">

                                    <tbody>
                                        <tr class="tableHead">
                                            <td>Date</td>
                                            <td>User</td>
                                            <td>Comment</td>
                                        </tr>
                            </HeaderTemplate>

                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("Date", "{0:d}")%></td>
                                    <td><%#Eval("User")%></td>
                                    <td><%#Eval("Comment")%></td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody>
                            </FooterTemplate>

                        </asp:Repeater>


                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>


                        <asp:Repeater ID="rptrSearch" runat="server">
                            <HeaderTemplate>
                                <table class="table-bordered">

                                    <tbody>
                                        <tr class="tableHead">
                                            <td>Name</td>
                                            <td>Formula</td>
                                            <td>Location</td>
                                            <td>Category</td>
                                            <td>Units</td>
                                            <td>Trigger Level</td>
                                            <td>Current Stock Level</td>
                                            <td>Summary of Hazards</td>
                                            <td>Purpose</td>
                                            <td>Link to MSDS</td>
                                        </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval ("Name_of_Substance") %>    </td>
                                    <td><%# Eval("Formula").ToString().ToHtmlFormula() %></td>
                                    <td><%#Eval ("Location") %></td>
                                    <td><%#Eval("Category") %></td>
                                    <td><%#Eval ("Units") %> </td>
                                    <td><%#Eval ("Trigger_Level") %></td>
                                    <td><%#Eval ("Current_Stock_Level") %></td>
                                    <td><%#Eval ("Summary_of_Hazards") %></td>
                                    <td><%#Eval ("Purpose") %></td>
                                    <td id="msds"><%#Eval ("Link_to_MSDS") %></td>


                                </tr>

                            </ItemTemplate>

                            <FooterTemplate>
                                </table>
                            </FooterTemplate>

                        </asp:Repeater>







                    </div>
                </div>
            </div>
        </div>
        </div>
</asp:Content>
