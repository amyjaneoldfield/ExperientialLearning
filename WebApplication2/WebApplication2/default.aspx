<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication2._default" %>




<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" type="text/css" href="bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="carousel.css" />
    
    <title>
	Fantasy Voyager
</title><link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
</head>
<body>
  <form method="post" action="contact.aspx" onsubmit="javascript:return WebForm_OnSubmit();" id="mainForm">
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="azbqpxGaPxFMapV3qRoV60TkplZoTej4+ecI1rabtBZ5uRwYoiyuYfBBrjLokCpSnnuCX1bz/8Ep2JmimDbAYGf7KYedDva0JMDsY6Hui/7ZYLIWkMo5t6LSTKcrP5SePR/Dh3iwKikaDHJjn68XvosA8kmZ8xVR7DlcHa6nfmofdXVg9duuPPdwn7ZOw9Leevk1G8sOlPvjPUIJqzoi/A==" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['mainForm'];
if (!theForm) {
    theForm = document.mainForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/CO5027/WebResource.axd?d=pynGkmcFUV13He1Qd6_TZE6dkt3IA5wJIQKVwVj4sekhFc98WVJt1BYT9IhmObK6c4HDG9YfCelnYtyttlq5xA2&amp;t=635705550395874195" type="text/javascript"></script>


<script src="/CO5027/Scripts/jquery-2.1.4.js" type="text/javascript"></script>
<script src="/CO5027/WebResource.axd?d=x2nkrMJGXkMELz33nwnakNU85L3BC24NuAMiEu1U3zokWCgYY6RFkJ94MjsmFVGjt8P8Enbl7704q-VkFdi3eij4aEkJM19ZQxW0Ds7jqhI1&amp;t=635705550395874195" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
function WebForm_OnSubmit() {
if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
return true;
}
//]]>
</script>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="8C25AEF3" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="IkLj3NkEAZDJV7k4W32rG5RlaqpBp1ffGNRaBQVvANAk1yB607SVbIxFgfuDqhVvFsB2e369fAF49TTOxY9FecmcTdEqHKEboTQounuHwtqiLApqyCBAhKnM7es7+bSlgHF0WlnYQQoHPEL4xoZ4iRDkB54eRe6JvwYQEnAMSu7meptvEam56GtLN82o91TUtuZump2TPerlOPoaNRionSTdRXguwoSvk0EcUXqpxiqUT+jP2/MvSWcDoG3KA1xD" />
</div>
      
    <header>

    <div id="loginStatus">
        <a id="LoginStatus1" href="javascript:__doPostBack(&#39;ctl00$LoginStatus1$ctl02&#39;,&#39;&#39;)">Login</a>
        
      </div>
            
    <div id="title">
        <h1>Fantasy Voyager</h1>
    </div>
        <
    <nav>
        <ul>
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="marvel.aspx">Marvel Comics</a></li>
            <li><a href="dc.aspx">DC Comics</a></li>
            <li><a href="Members/exclusives.aspx">Exclusives</a></li>
            
        </ul>
    </nav>
    </header>

      <noscript>       
     You do not have Java Script enabled, this site works better if you do!
 </noscript>
  
    <div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="js/bootstrap.min.js" ></script>

    <h2>Contact Us!</h2>

    <p>
        We love to stay in contact with our customers! So if you have something to say, 
    whether it be about our service, the products you bought, or whether you have any
    suggested improvements let us know by filling out the form below!
    </p>

    <div id="contactForm">

        <div id="formInput">

            <div id="nameForm">

                <div id="nameLabel">
                    <label for="bodyContentPlaceHolder1_nameText" id="bodyContentPlaceHolder1_lblName">Name </label>
                </div>


                <div id="nameField" class="contactTextboxes">
                    <input name="ctl00$bodyContentPlaceHolder1$nameText" type="text" id="bodyContentPlaceHolder1_nameText" class="contactTextboxes" />
                </div>

                <div id="nameValidator" class="contactValidator">
                    <span data-val-controltovalidate="bodyContentPlaceHolder1_nameText" data-val-errormessage="*Name field cannot be left blank, please type your name." data-val-display="Dynamic" id="bodyContentPlaceHolder1_reqValName" data-val="true" data-val-evaluationfunction="RequiredFieldValidatorEvaluateIsValid" data-val-initialvalue="" style="display:none;">*Name field cannot be left blank, please type your name.</span>
                </div>

            </div>

            <div id="emailForm">

                <div id="emailLabel">
                    <label for="bodyContentPlaceHolder1_emailText" id="bodyContentPlaceHolder1_lblEmail">E-Mail </label>
                </div>

                <div id="emailField" class="contactTextboxes">
                    <input name="ctl00$bodyContentPlaceHolder1$emailText" type="text" id="bodyContentPlaceHolder1_emailText" class="contactTextboxes" />
                </div>

                <div id="emailValidator" class="contactValidator">
                    <span data-val-controltovalidate="bodyContentPlaceHolder1_emailText" data-val-errormessage="*Email field cannot be left blank, please type a valid email address." data-val-display="Dynamic" id="bodyContentPlaceHolder1_reqValEmail" data-val="true" data-val-evaluationfunction="RequiredFieldValidatorEvaluateIsValid" data-val-initialvalue="" style="display:none;">*Email field cannot be left blank, please type a valid email address.</span>
                </div>

                <div id="emailRegVal" class="contactValidator">
                    <span data-val-controltovalidate="bodyContentPlaceHolder1_emailText" data-val-errormessage="I am Sorry but that is not a valid e-mail adress, you email should look something like this - example@domain.com" data-val-display="Dynamic" id="bodyContentPlaceHolder1_RegValEmail" data-val="true" data-val-evaluationfunction="RegularExpressionValidatorEvaluateIsValid" data-val-validationexpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" style="display:none;">I am Sorry but that is not a valid e-mail adress, you email should look something like this - example@domain.com</span>
                </div>
                <!--reg expression reference (Smith,2015)-->



                <div id="confirmEmailLabel">
                    <label for="bodyContentPlaceHolder1_confirmText" id="bodyContentPlaceHolder1_lblConfirm">Confirm E-Mail </label>
                </div>

                <div id="confirmEmailField" class="contactTextboxes">
                    <input name="ctl00$bodyContentPlaceHolder1$confirmText" type="text" id="bodyContentPlaceHolder1_confirmText" class="contactTextboxes" />
                </div>

                <div id="confirmEmailReqVal" class="contactValidator">
                    <span data-val-controltovalidate="bodyContentPlaceHolder1_confirmText" data-val-errormessage="*Confirm e-mail field cannot be left blank, please re-enter the email address" data-val-display="Dynamic" id="bodyContentPlaceHolder1_reqValConfirm" data-val="true" data-val-evaluationfunction="RequiredFieldValidatorEvaluateIsValid" data-val-initialvalue="" style="display:none;">*Confirm e-mail field cannot be left blank, please re-enter the email address</span>
                </div>

                <div id="comfirmEmailVal" class="contactValidator">
                    <span data-val-controltovalidate="bodyContentPlaceHolder1_emailText" data-val-errormessage="The email addresses you provided do not match" data-val-display="Dynamic" id="bodyContentPlaceHolder1_CompareValidator1" data-val="true" data-val-evaluationfunction="CompareValidatorEvaluateIsValid" data-val-controltocompare="bodyContentPlaceHolder1_confirmText" data-val-controlhookup="bodyContentPlaceHolder1_confirmText" style="display:none;">The email addresses you provided do not match</span>
                </div>


            </div>

            <div id="subjectForm">

                <div id="subjectLabel">
                    <label for="bodyContentPlaceHolder1_subjectText" id="bodyContentPlaceHolder1_lblSubject">Subject </label>
                </div>

                <div id="subjectField" class="contactTextboxes">
                    <input name="ctl00$bodyContentPlaceHolder1$subjectText" type="text" id="bodyContentPlaceHolder1_subjectText" class="contactTextboxes" />
                </div>

                <div id="subjectValidator" class="contactValidator">
                    <span data-val-controltovalidate="bodyContentPlaceHolder1_subjectText" data-val-errormessage="*Subject field cannot be left blank, please specify what subject you wish to comment on." data-val-display="Dynamic" id="bodyContentPlaceHolder1_reqValSubject" data-val="true" data-val-evaluationfunction="RequiredFieldValidatorEvaluateIsValid" data-val-initialvalue="" style="display:none;">*Subject field cannot be left blank, please specify what subject you wish to comment on.</span>
                </div>

            </div>


            <div id="commentForm">

                <div id="commentLabel">
                    <label for="bodyContentPlaceHolder1_commentText" id="bodyContentPlaceHolder1_lblComment">Comment </label>
                </div>

                <div id="commentField" class="commentField">
                    <textarea name="ctl00$bodyContentPlaceHolder1$commentText" rows="2" cols="20" id="bodyContentPlaceHolder1_commentText" class="commentField">
</textarea>
                </div>

                <div id="commentValidator" class="contactValidator">
                    <span data-val-controltovalidate="bodyContentPlaceHolder1_commentText" data-val-errormessage="*Comment field cannot be left blank, please type your comments so we can help you." data-val-display="Dynamic" id="bodyContentPlaceHolder1_reqValComment" data-val="true" data-val-evaluationfunction="RequiredFieldValidatorEvaluateIsValid" data-val-initialvalue="" style="display:none;">*Comment field cannot be left blank, please type your comments so we can help you.</span>
                </div>

            </div>
        </div>

        <div id="submitButton">
            <input type="submit" name="ctl00$bodyContentPlaceHolder1$btnSubmit" value="Submit" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$bodyContentPlaceHolder1$btnSubmit&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="bodyContentPlaceHolder1_btnSubmit" />
        </div>

        <div id="formLiteral">
            
        </div>

    </div>

    <!-- <div id="contactParagraph">
     <p>
        If you would prefer to come and see us in person, you can come and visit us in our store! 
        Check our map below to see your local store!
     </p>
   </div>-->



    <div id="map">

        <script src="Scripts/map.js"></script>

        <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCOiFzPbtq42z5JsLkAd3L7dzWrJgo5BMg&callback=initMap"> 
        </script>
        <!--(Google, 2015)-->
        <img src="map/map.jpg" alt="image of a map indicating that the store can be found at; unit 8, Thornton Science Park, Pool Lane, Chester, with the postcode CH2 4NU" width="889" height="415" />
    </div>
    <!-- not sure if this i the correct way to go about this as the empty dive remains on the page and the image is pushed underneath it.-->






        </div>
    
    

 <footer>

     

     <div id="footLinks">
         <ul>
             <li><a href="contact.aspx">Contact Us</a></li>
             <li><a href="Admin/admin.aspx">Admin</a></li>
             <li><a href="http://validator.w3.org/check?uri=referer" > Validate HTML</a></li>
             <li><a href="http://jigsaw.w3.org/css-validator/check/referer" > ValidateCSS</a></li>
             <li><a href="http://achecker.ca/checker/?uri=referer" > Check WCAG</a></li>
         </ul>
     </div>

     <div id="footAddress">
        <p>Address: <br />Unit 8 <br />Thronton Science Park <br />Pool Lane <br />Chester <br />Cheshire <br />CH2 4NU</p>
     </div>

    <!--<div id="copyRight">
        <p>&copy Copyright 2015 Andrew Elliott  </p>
    </div> -->

     

 </footer>
</form>
</body>
</html>

