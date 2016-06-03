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



    <div id="mainPage" class="container">


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

        <div class="homePara1">

        <p class="homePara">
            This system contains the logbooks, user manuals, fixes, and risk assessments and specifications 
    for key user and research laboratory equipment within the Faculty of Science and Engineering at
    Thornton Science Park.
        </p>


     
</div>
        <!--
<a class="twitter-timeline" href="https://twitter.com/UoCSciEng" data-widget-id="734663427679981568">Tweets by @UoCSciEng</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>


        <div class="fb-page" data-href="https://www.facebook.com/UoCSciEng" data-tabs="timeline" data-width="500" data-height="300" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="false"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/UoCSciEng"><a href="https://www.facebook.com/UoCSciEng">Faculty of Science and Engineering</a></blockquote></div></div>

        -->
          
        
     

<div id="hartGround" runat="server"  visible="true">
<img id="Image-Maps-Com-image-maps-2016-06-03-062428" src="Images/maps/hartG.png" border="0" width="400" height="547" orgWidth="400" orgHeight="547" usemap="#image-maps-2016-06-03-062428" alt="" />
<map name="image-maps-2016-06-03-062428" id="ImageMapsCom-image-maps-2016-06-03-062428">
<area  alt="" title="" href="researchEquipment.aspx?ID=tha060" shape="rect" coords="155,115,269,213" style="outline:none;" target="_self"     />
<area  alt="" title="" href="researchEquipment.aspx?ID=tha061" shape="rect" coords="154,216,269,283" style="outline:none;" target="_self"     />
<area  alt="" title="" href="researchEquipment.aspx?ID=tha062" shape="rect" coords="155,284,270,320" style="outline:none;" target="_self"     />
<area  alt="" title="063" href="researchEquipment.aspx?ID=tha063" shape="rect" coords="156,322,225,370" style="outline:none;" target="_self"     />
<area  alt="064" title="064" href="researchEquipment.aspx?ID=tha064" shape="rect" coords="227,323,267,389" style="outline:none;" target="_self"     />
<area  alt="" title="065" href="researchEquipment.aspx?ID=tha065" shape="rect" coords="178,373,208,397" style="outline:none;" target="_self"     />
<area  alt="" title="067" href="researchEquipment.aspx?ID=tha067" shape="rect" coords="193,409,266,455" style="outline:none;" target="_self"     />
<area  alt="" title="" href="researchEquipment.aspx?ID=tha063" shape="rect" coords="153,397,192,456" style="outline:none;" target="_self"     />
<area  alt="" title="063" href="researchEquipment.aspx?ID=tha063" shape="rect" coords="208,372,228,409" style="outline:none;" target="_self"     />
<area  alt="" title="063" href="researchEquipment.aspx?ID=tha063" shape="rect" coords="231,390,269,408" style="outline:none;" target="_self"     />
<area shape="rect" coords="398,545,400,547" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
</map>
</div>


<div id="hartFirst" runat="server" visible="false">
<img id="Image-Maps-Com-image-maps-2016-06-03-064125" src="Images/maps/hartF.png" border="0" width="400" height="584" orgWidth="400" orgHeight="584" usemap="#image-maps-2016-06-03-064125" alt="" />
<map name="image-maps-2016-06-03-064125" id="ImageMapsCom-image-maps-2016-06-03-064125">
<area  alt="" title="166" href="researchEquipment.aspx?ID=tha166" shape="rect" coords="162,347,277,406" style="outline:none;" target="_self"     />
<area shape="rect" coords="398,582,400,584" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
</map>
      
</div>


<div id="sanGround" runat="server" visible="false">
<img id="Image-Maps-Com-image-maps-2016-06-03-062156" src="Images/maps/sanG.png" border="0" width="400" height="547" orgWidth="400" orgHeight="547" usemap="#image-maps-2016-06-03-062156" alt="" />
<map name="image-maps-2016-06-03-062156" id="ImageMapsCom-image-maps-2016-06-03-062156">
<area  alt="" title="" href="researchEquipment.aspx?ID=tsa031" shape="rect" coords="164,201,269,261" style="outline:none;" target="_self"     />
<area  alt="" title="" href="researchEquipment.aspx?ID=tsa027" shape="rect" coords="165,348,268,404" style="outline:none;" target="_self"     />
<area shape="rect" coords="398,545,400,547" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
</map>
</div>

<div id="sanFirst" runat="server" visible="false">

<img id="Image-Maps-Com-image-maps-2016-06-03-070253" src="Images/maps/sanF.png" border="0" width="400" height="547" orgWidth="400" orgHeight="547" usemap="#image-maps-2016-06-03-070253" alt="" />
<map name="image-maps-2016-06-03-070253" id="ImageMapsCom-image-maps-2016-06-03-070253">
<area  alt="" title="130" href="researchEquipment.aspx?ID=tsa130" shape="rect" coords="200,123,268,156" style="outline:none;" target="_self"     />
<area  alt="" title="129" href="researchEquipment.aspx?ID=tsa129" shape="rect" coords="161,127,197,189" style="outline:none;" target="_self"     />
<area  alt="" title="128" href="researchEquipment.aspx?ID=tsa128" shape="rect" coords="206,161,266,191" style="outline:none;" target="_self"     />
<area  alt="" title="126" href="researchEquipment.aspx?ID=tsa126" shape="rect" coords="161,202,266,266" style="outline:none;" target="_self"     />
<area  alt="" title="124" href="researchEquipment.aspx?ID=tsa124" shape="rect" coords="163,276,268,340" style="outline:none;" target="_self"     />
<area  alt="" title="121" href="researchEquipment.aspx?ID=tsa121" shape="rect" coords="160,353,265,417" style="outline:none;" target="_self"     />
<area  alt="" title="118" href="researchEquipment.aspx?ID=tsa118" shape="rect" coords="186,430,223,480" style="outline:none;" target="_self"     />
<area  alt="" title="119" href="researchEquipment.aspx?ID=tsa119" shape="rect" coords="227,431,264,481" style="outline:none;" target="_self"     />
<area shape="rect" coords="398,545,400,547" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
</map>

</div>


        <asp:Button ID="Button1" runat="server" Text="1" CommandArgument="hartGround" Onclick="Button1_Click"/>

        <asp:Button ID="Button2" runat="server" Text="2" CommandArgument="hartFirst" OnClick="Button2_Click" />

        <asp:Button ID="Button3" runat="server" Text="3" CommandArgument="sanGround" onClick="Button3_Click"/>

        <asp:Button ID="Button4" runat="server" Text="4" CommandArgument="sanFirst" onClick="Button4_Click"/>

    </div>

    <script>
    function pictureChange()
    {
        document.getElementById('theImage').src = 'Images/Picture1.PNG';
    }
</script>


  <!--       /*script one/*

<script>
(function() {
   'use strict';

function init(){ 

    var el,flag=0;

    el=document.getElementById('image');

    document.getElementById('clickme').onclick = function () {

   flag==0?
  (flag = 1, el.src = 'Images/Slide1.PNG', el.alt = 'my dog') :
  (flag = 0, el.src = 'Images/Picture1.PNG', el.alt = 'my cat');

  }
 }
   window.addEventListener('load',init,false);
})();
</script>
  
        /*script two/*
 

  <script>
(function() {
   'use strict';

function init(){ 

    var el=document.getElementById('image');

    document.getElementById('clickme').onclick = function () {
        el.id == 'image' ?

       (el.id = 'image', el.src = 'Images/Slide1.PNG', el.alt = 'my cat') :
        (el.id = 'lab', el.src = 'Images/Picture1.PNG', el.alt = 'my dog');
    }
 }
   window.addEventListener('load',init,false);
})();
</script> -->

</asp:Content>
