<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="labManagmentSite._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>



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
                    <img class="slide" src="Images/banner1.jpg" alt="Second slide" />
                    <div class="container">
                        <div class="carousel-caption">
                            <!--       <h1>Another example headline.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>-->
                        </div>
                    </div>
                </div>

                <div class="item">
                    <img class="slide" src="Images/banner2.jpg" alt="Third slide" />
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
        </div>
        <!-- /.carousel -->

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

<a class="twitter-timeline" href="https://twitter.com/UoCSciEng" data-widget-id="734663427679981568">Tweets by @UoCSciEng</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>


        <div class="fb-page" data-href="https://www.facebook.com/UoCSciEng" data-tabs="timeline" data-width="500" data-height="300" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="false"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/UoCSciEng"><a href="https://www.facebook.com/UoCSciEng">Faculty of Science and Engineering</a></blockquote></div></div>


           
<img src="Images/Slide1.PNG" width="960" height="720"  usemap="#labMap" alt="" />
<map name="labMap" id="labMap1">
<area id="tha061"  title="lab1" alt="" href="individualLab.aspx?Name={Analytical%20Chemistry%20Laboratory}" shape="rect" coords="382,164,509,277" style="outline:none;" target="_self" onclick="exampleMapping(this)" runat="server"  />
<area id="tha063" title="lab2" shape="rect" coords="386,279,508,352" style="outline:none;" target="_self"/>
<area id="labThree" title="lab3" shape="rect" coords="382,357,510,395" style="outline:none;" target="_self"/>
<area id="labFour" title="lab4" shape="rect" coords="383,398,507,468" style="outline:none;" target="_self"/>
<area id="labFive" title="lab5" shape="rect" coords="384,475,508,545" style="outline:none;" target="_self"/>
<area id="labSix" title="lab6" shape="rect" coords="385,552,509,622" style="outline:none;" target="_self"/>
<area shape="rect" coords="958,718,960,720" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
</map>


<img src="Images/Picture1.PNG"  width="707" height="1060"  usemap="#labTop" alt="" />
<map name="labTop" id="labMapTop1">
<area id="labOneTop" title="labTop1" shape="rect" coords="263,227,456,329" style="outline:none;" target="_self"/>
<area id="labTwoTop" title="labTop2" shape="rect" coords="264,346,457,448" style="outline:none;" target="_self"/>
<area id="labThreeTop" title="labtop3" shape="rect" coords="265,464,458,566" style="outline:none;" target="_self"/>
<area id="labFourTop" title="labTop4" shape="rect" coords="265,585,458,687" style="outline:none;" target="_self"/>
<area id="labFiveTop" title="labTop5" shape="rect" coords="266,703,459,805" style="outline:none;" target="_self" />
<area id="labSixTop6" title="labTop6" shape="rect" coords="263,819,456,921" style="outline:none;" target="_self"/>
<area shape="rect" coords="705,1058,707,1060" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
</map>





  <!-- 
        <a class="twitter-grid" href="https://twitter.com/UoCSciEng?ref_src=twsrc%5Etfw">National Park Tweets</a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

     <div class="home1">
            <img class="homeImage" src="Images/pl1.png" alt="place holder for image1" height="200" width="200" />

         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed augue vel mi suscipit semper. 
            Sed neque lacus, ultricies ut magna nec, maximus luctus mauris. Praesent mattis, risus at venenatis dapibus, tellus purus sagittis ex, vel aliquam sem ex a tellus. 
            Suspendisse congue nec purus et consequat.</p>
            <p><a class="btn btn-lg btn-primary" href="#" role="button">Visit</a></p>


        </div>


        <div class="home1">
            <img class="homeImage" src="Images/pl1.png" alt="place holder for image2" height="200" width="200" />
      
         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed augue vel mi suscipit semper. 
            Sed neque lacus, ultricies ut magna nec, maximus luctus mauris. Praesent mattis, risus at venenatis dapibus, tellus purus sagittis ex, vel aliquam sem ex a tellus. 
            Suspendisse congue nec purus et consequat.</p> 
            <p><a class="btn btn-lg btn-primary" href="#" role="button">Visit</a></p>
        </div>

        <div class="home1">
            <img class="homeImage" src="Images/pl1.png" alt="place holder for image3" height="200" width="200" />
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed augue vel mi suscipit semper. 
            Sed neque lacus, ultricies ut magna nec, maximus luctus mauris. Praesent mattis, risus at venenatis dapibus, tellus purus sagittis ex, vel aliquam sem ex a tellus. 
            Suspendisse congue nec purus et consequat.
            </p>
            <p><a class="btn btn-lg btn-primary" href="#" role="button">Visit</a></p>
        </div>

        -->
      




    </div>
    

</asp:Content>
