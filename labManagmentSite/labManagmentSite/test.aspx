<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="labManagmentSite.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/bootstrap.css" rel="stylesheet" />
     <link href="Styles/simple-sidebar.css" rel="stylesheet"/>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        <div id="wrapper" class="active">
      
      <!-- Sidebar -->
            <!-- Sidebar -->
      <div id="sidebar-wrapper">
      <ul id="sidebar_menu" class="sidebar-nav">
           <li class="sidebar-brand"><a id="menu-toggle" href="#">Menu<span id="main_icon" class="glyphicon glyphicon-align-justify"></span></a></li>
      </ul>
        <ul class="sidebar-nav" id="sidebar">     
          <li><a>Link1<span class="sub_icon glyphicon glyphicon-link"></span></a></li>
          <li><a>link2<span class="sub_icon glyphicon glyphicon-link"></span></a></li>
        </ul>
      </div>
          
      <!-- Page content -->
      <div id="page-content-wrapper">
        <!-- Keep all page content within the page-content inset div! -->
        <div class="page-content inset">
          <div class="row">
              <div class="col-md-12">
              <p class="well lead">An Experiment using the sidebar template from startbootstrap.com which I integrated in my website (<a href="http://animeshmanglik.name">animeshmanglik.name</a>)</p>
              <p class="well lead">Click on the Menu to Toggle Sidebar . Hope you enjoy it!</p> 
            </div>
          </div>
        </div>
      </div>
      
    </div>



    </div>
    </form>
</body>
<script src="js/jquery-2.2.3.js"></script>
     <script src="js/bootstrap.min.js"></script>
<script src="js/jquery.js"></script>

</html>
