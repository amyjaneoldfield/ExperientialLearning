<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="individualItem.aspx.cs" Inherits="labManagmentSite.individualItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <!-- Sidebar -->
  
   
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        Other Equipment
                    </a>
                </li>
               <asp:Repeater ID="rptrSidebar" runat="server" DataSourceID="sqlDataSourceSide">
                   <ItemTemplate>
                       <li><a href="<%#Eval("ID","individualItem.aspx?ID={0}") %>"><%#Eval ("Name")%></li></a>

                   </ItemTemplate>


               </asp:Repeater>

            </ul>


        </div>
        <!-- /#sidebar-wrapper -->
        
           

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                         
                        
          <img src="Images/LabImages/XRD.jpg" alt="an image" width="400" height="400" />
    <!--                     
     <div class="carousel-inner" role="listbox">
      
       <asp:Repeater ID ="rptrcarousel" DataSourceID="sqlDataSourceCarousel" runat="server">
           <HeaderTemplate>                   <!--Carousel
               
    <div id="item-carousel" class="container" >
    <div id="itemCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators 
      <ol class="carousel-indicators">
        <li data-target="#itemCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#itemCarousel" data-slide-to="1"></li>
        <li data-target="#itemCarousel" data-slide-to="2"></li>
      </ol></HeaderTemplate>
           <ItemTemplate>
              

                <div class="item active">
          
          <div class="container">
            <div class="carousel-caption"> 
            </div>
          </div>
        </div>


           </ItemTemplate>
           <FooterTemplate>
               <!-- Controls

      <a class="left carousel-control" href="#itemCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#itemCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    
        </div>
    
    </div>
   
           </FooterTemplate>


</asp:Repeater> 
          <asp:SqlDataSource ID="sqlDataSourceCarousel" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT [path], [ext], [height], [width], [alt] FROM [Images] WHERE ([peiceofEquipment] = @peiceofEquipment)">
              <SelectParameters>
                  <asp:QueryStringParameter Name="peiceofEquipment" QueryStringField="ID" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          

    
    
   
    -->
    </div>
    
    <!-- Individual Item Data -->
    <div class="container">
    <asp:FormView runat="server" DataSourceID="SqlDataSourceItem" RenderOuterTable="False">
       
<ItemTemplate> 
    
            <h2 class="homeCap"><%#Eval("Name") %></h2>
      <div class="panel-group" id="accordion">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#collapse1">
        Location</a>
      </h4>
    </div>
    <div id="collapse1" class="panel-collapse collapse in">
      <div class="panel-body"><%#Eval("Location")%></div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse"  href="#collapse2">
        Local Area Rules</a>
      </h4>
    </div>
    <div id="collapse2" class="panel-collapse collapse">
      <div class="panel-body">
          <a href='<%#Eval("LocalRules")%>' runat="server">Local Rules</a>
          </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#collapse3">
        Risk Assessment
        </a>
      </h4>
    </div>
    <div id="collapse3" class="panel-collapse collapse">
      <div class="panel-body"><a href='<%#Eval("CurrentRiskAssessment")%>' runat="server" >Risk Assessment</a></div>
    </div>
  </div>

    <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#collapse4">
        Monitoring Results
        </a>
      </h4>
    </div>
    <div id="collapse4" class="panel-collapse collapse">
      <div class="panel-body"><a href='<%#Eval("Maintenance")%>' runat="server" >Maintenance</a></div>
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

                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">◄</a>
                    </div>
                </div>
            </div>
        <asp:SqlDataSource ID="sqlDataSourceSide" runat="server" ConnectionString="<%$ ConnectionStrings:db_1421049_LabManagementConnectionString %>" SelectCommand="SELECT [Name], [ID] FROM [User_Research_Equip]" >
                
            </asp:SqlDataSource>
        <!-- /#page-content-wrapper -->

                
    
    <!-- Menu Toggle Script -->
    
    </asp:Content>
   
