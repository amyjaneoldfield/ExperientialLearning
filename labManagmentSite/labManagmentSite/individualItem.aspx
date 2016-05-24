 <%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="individualItem.aspx.cs" Inherits="labManagmentSite.individualItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="wrapper" class="active">
      
      <!-- Sidebar -->
            <!-- Sidebar -->
      <div id="sidebar-wrapper">
      <ul id="sidebar_menu" class="sidebar-nav">
           <li class="sidebar-brand"><a id="menu-toggle" href="#">Menu<span id="main_icon" class="glyphicon glyphicon-align-justify"></span></a></li>
      </ul>
        <ul class="sidebar-nav" id="sidebar">     


             <asp:Repeater ID="rptrSidebar" runat="server" DataSourceID="sqlDataSourceSide">
                 <HeaderTemplate>
<ul>
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
     <div class="carousel-inner" role="listbox">
                <!--Items-->
                <asp:Repeater ID ="rptrcarousel" DataSourceID="sqlDataSourceCarousel" runat="server">
           <ItemTemplate>
              

          
               <div class="item <%# (Container.ItemIndex == 0 ? "active" : "") %>">
           <img class="slide" src="<%# Eval("path")%>.<%#Eval("ext")%>" height="<%#Eval("height") %>" width="<%#Eval("width")%>" alt="<%#Eval("alt")%>"/>
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
                                                <a data-toggle="collapse" href="#collapse1">Location</a>
      </h4>
    </div>
    <div id="collapse1" class="panel-collapse collapse in">
      <div class="panel-body"><%#Eval("Location")%></div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
                                                <a data-toggle="collapse" href="#collapse2">Local Area Rules</a>
      </h4>
    </div>
    <div id="collapse2" class="panel-collapse collapse">
      <div class="panel-body">
          <a href='<%#Eval("LocalRules")%>' runat="server">Local Rules</a>
          <asp:Button ID="btnLocalUpload" runat="server" Text="Upload" Visible="false" />
          <asp:FileUpload ID="localUploadControl" runat="server" />
          </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
                                                <a data-toggle="collapse" href="#collapse3">Risk Assessment</a>
      </h4>
    </div>
    <div id="collapse3" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <a href='<%#Eval("CurrentRiskAssessment")%>' runat="server">Risk Assessment</a>
                                                 <asp:Button ID="btnRiskUpload" runat="server" Text="Upload" Visible="false" />
                                                <asp:FileUpload ID="riskUploadControl" runat="server" />
    </div>
  </div>
                                    </div>

    <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
                                                <a data-toggle="collapse" href="#collapse4">Monitoring Results
        </a>
      </h4>
    </div>
    <div id="collapse4" class="panel-collapse collapse">
                                            <div class="panel-body"><a href='<%#Eval("Maintenance")%>' runat="server">Maintenance</a>
                                                 <asp:Button ID="btnMaintenance" runat="server" Text="Upload" Visible="false" />
                                                <asp:FileUpload ID="maintenanceUploadControl" runat="server" />
    </div>
  </div>
                                    </div>
 
          <!-- LOG BOOK -->

          <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
                                                <a data-toggle="collapse" href="#collapse5">Log Book
        </a>
      </h4>
    </div>
    <div id="collapse5" class="panel-collapse collapse">
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
            </div>
            </div>
    <asp:SqlDataSource ID="sqlDataSourceSide" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT [Name], [ID] FROM [User_Research_Equip]"></asp:SqlDataSource>
        <!-- /#page-content-wrapper -->
         
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    
    </asp:Content>
   
