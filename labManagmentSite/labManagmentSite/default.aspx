<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="labManagmentSite._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">


     <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
       <!--Items-->
           <div class="item active">
          <img class="slide" src="Images/banner.jpg" alt="First slide" />
             <div class="container">
            <div class="carousel-caption">
         <!--     <h1>Example headline.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Visit</a></p>--> 
            </div>
          </div>
        </div>
        <div class="item">
          <img class="slide" src="Images/banner1.jpg" alt="Second slide"/>
          <div class="container">
            <div class="carousel-caption">
           <!--       <h1>Another example headline.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>-->
            </div>
          </div>
        </div>

        <div class="item">
          <img class="slide" src="Images/banner2.jpg" alt="Third slide"/>
       <div class="container">
            <div class="carousel-caption">
            <!--     <h1>One more for good measure.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>-->
            </div>
          </div> 
        </div>
      
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
        </div><!-- /.carousel -->

    <h1 class="homeCap">Thornton Laboratory Management System</h1>



<p class="homePara">
    This system contains the logbooks, user manuals, fixes, and risk assessments and specifications 
    for key user and research laboratory equipment within the Faculty of Science and Engineering at
    Thornton Science Park.
</p>


<p class="homePara">
    From here, you will be able to access all the documentation you need, as 
    well as have access to quartzy to book access to the equipment. you will also
    be able to contact the departments custodian team for any queries.
</p> 

<div id="homeImages">

    <img class="homeImage" src="Images/pl1.png" alt="place holder for image1" height="200" width="200" />

    <img class="homeImage" src="Images/pl1.png" alt="place holder for image2" height="200" width="200" />

    <img class="homeImage" src="Images/pl1.png" alt="place holder for image3" height="200" width="200" />

</div>
</div>


</asp:Content>
