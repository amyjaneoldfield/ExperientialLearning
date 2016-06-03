<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="individualItem.aspx.cs" Inherits="labManagmentSite.individualItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="mainPage" class="container">
        <div id="wrapper" class="active">

            <!-- Sidebar -->
            <!-- Sidebar -->
            <div id="sidebar-wrapper">
                <ul id="sidebar_menu" class="sidebar-nav">
                    <li class="sidebar-brand"><a id="menu-toggle" href="#">Equipment<span id="main_icon" class="glyphicon glyphicon-align-justify"></span></a></li>
                </ul>
                <ul class="sidebar-nav" id="sidebar">


                    <asp:Repeater ID="rptrSidebar" runat="server" DataSourceID="sqlDataSourceSide">
                        <HeaderTemplate>
                            <ul class="bullet">
                        </HeaderTemplate>
                        <ItemTemplate>

                            <li><a href="<%#Eval("ID","individualItem.aspx?ID={0}") %>"><%#Eval ("Name")%></a></li>
                        </ItemTemplate>
                        <FooterTemplate>
                            </ul>  
                        </FooterTemplate>

                    </asp:Repeater>
                </ul>
            </div>
        </div>



        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">




                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                            </ol>
                            <div id="individualitem" class="carousel-inner" role="listbox">
                                <!--Items-->
                                <asp:Repeater ID="rptrcarousel" DataSourceID="sqlDataSourceCarousel" runat="server">
                                    <ItemTemplate>



                                        <div class="item <%# (Container.ItemIndex == 0 ? "active" : "") %>">
                                            <img class="slide" src="<%# Eval("path")%><%#Eval("ext")%>" height="<%#Eval("height") %>" width="<%#Eval("width")%>" alt="<%#Eval("alt")%>" />
                                            <div class="container">
                                                <div class="carousel-caption">
                                                </div>
                                            </div>
                                        </div>


                                    </ItemTemplate>

                                </asp:Repeater>
                                <!-- Controls-->

                                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                        <!-- /.carousel -->





                        <asp:SqlDataSource ID="sqlDataSourceCarousel" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT [path], [ext], [height], [width], [alt] FROM [Images] WHERE ([peiceofEquipment] = @peiceofEquipment)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="peiceofEquipment" QueryStringField="ID" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>






                    </div>

                    <!-- Individual Item Data -->

                    <asp:FormView ID="frmItem" runat="server" DataSourceID="SqlDataSourceItem" RenderOuterTable="False">



                        <ItemTemplate>

                            <h2 class="homeCap"><%#Eval("Name") %></h2>
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#collapseLocation">Location</a>
                                        </h4>
                                    </div>
                                    <div id="collapseLocation" class="panel-collapse collapse">
                                        <div class="panel-body"><%#Eval("Location")%></div>
                                    </div>
                                </div>



                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#collapseDocs">Documentation</a>
                                        </h4>
                                    </div>
                                    <div id="collapseDocs" class="panel-collapse collapse">
                                        <div class="panel-body">

                                            <asp:Repeater ID="rptrDocs" runat="server" DataSourceID="SqlDataSourceDocs" OnItemDataBound="rptrDocs_ItemDataBound">
                                                <HeaderTemplate>
                                                    <ul class="footLinks">
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <li class="bullet"><a href="<%#Eval("path")%>"><%#Eval("name")%></a>
                                                        <asp:HiddenField ID="hdnField" Value='<%#Eval("name")%>' runat="server" />
                                                        <asp:Button ID="btnAdminDel" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval("path")%>' OnCommand="btnAdminDel_Command" Visible="false" CssClass="btn btn-default" />

                                                    </li>
                                                </ItemTemplate>
                                                <FooterTemplate></ul></FooterTemplate>
                                            </asp:Repeater>

                                            <asp:SqlDataSource ID="SqlDataSourceDocs" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT * FROM [Docs] WHERE ([pieceOfEquipment] = @ID)">
                                                <SelectParameters>
                                                    <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>


                                        </div>
                                    </div>
                                </div>

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#collapseCustodian">Custodian</a>
                                        </h4>
                                    </div>
                                    <div id="collapseCustodian" class="panel-collapse collapse">
                                        <div class="panel-body"><%#Eval("Custodian")%></div>
                                    </div>
                                </div>


                                <!-- LOG BOOK -->

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#collapseLogBook">Log Book
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseLogBook" class="panel-collapse collapse">
                                        <div class="panel-body">




                                            <asp:Repeater ID="rptrLogbook" runat="server" DataSourceID="sqlDataLogBook">

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
   </table>
                                                </FooterTemplate>

                                            </asp:Repeater>
                                            <asp:SqlDataSource ID="sqlDataLogBook" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT * FROM [LogBook] WHERE ([PieceofEquipment] = @ID)">
                                                <SelectParameters>
                                                    <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>




                                            <asp:Label ID="lblLogUser" runat="server" Text="User" AssociatedControlID="txtLogUser"></asp:Label>
                                            <asp:TextBox ID="txtLogUser" runat="server"></asp:TextBox>
                                            <asp:Label ID="lblLogComment" runat="server" Text="Comment" AssociatedControlID="txtLogComment"></asp:Label>
                                            <asp:TextBox ID="txtLogComment" runat="server"></asp:TextBox>

                                            <asp:Button ID="btnLogSubmit" runat="server" Text="Submit" CssClass="btn btn-default" OnClick="btnLogSubmit_Click" />

                                        </div>
                                    </div>
                                </div>

                                <div id="adminAccordian" class="panel panel-default" runat="server" visible="false">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#collapseAdmin">Admin Upload</a>
                                        </h4>
                                    </div>
                                    <div id="collapseAdmin" class="panel-collapse collapse">
                                        <div class="col-md-6">

                                            <div class="addDoc">
                                            <h4 class="reqHeader">Add a Document</h4>

                                                <div class="addDocUpload">
                                            <asp:Label ID="lblFileName" runat="server" Text="Document Name" CssClass="addDoclbl"></asp:Label>
                                            <asp:TextBox ID="txtFileName" runat="server" CssClass="addDocTxt"></asp:TextBox>
</div>

                                            <asp:FileUpload ID="adminFileControl" runat="server" />
                                            <asp:Button ID="btnAdminFileUpload" runat="server" Text="Upload" OnClick="btnAdminFileUpload_Click" CssClass="btn btn-default"/>
                                      </div>  

                                        </div>


                                        <div class="col-md-6">


                                            <div class="addImg">
                                            <h4 class="reqHeader"> Add an Image</h4>
                                            <asp:FileUpload ID="adminImageAdd" runat="server" CssClass="addImgUpload" />
                                            <asp:Button ID="adminImageBtn" runat="server" Text="Add Image" OnClick="adminImageBtn_Click" CssClass="btn btn-default" />
</div>

                                        </div>
                                        <div class="panel-body"></div>
                                    </div>
                                </div>



                            </div>
                            </div>
    </div>

                        </ItemTemplate>


                    </asp:FormView>

                </div>


                <asp:SqlDataSource ID="SqlDataSourceItem" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT * FROM [User_Research_Equip] WHERE ([ID] = @ID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>




            </div>
        </div>


        <asp:SqlDataSource ID="sqlDataSourceSide" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT [Name], [ID] FROM [User_Research_Equip]"></asp:SqlDataSource>
        <!-- /#page-content-wrapper -->
    </div>
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>





</asp:Content>

