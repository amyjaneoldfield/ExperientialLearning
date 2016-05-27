<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="labManagmentSite.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h1 class="reqHeader">Contact </h1>
            <p class="para">If you have any problems, or queires regarding the website, equipment or anything related to this site please contact us below enusring you correctly fill out all the required fields. We aim to respond to all emails within 48 hours of working days.</p>

  
    <div id="contactForm">   

        <!--basic contact form, structure will be amended to fit its purpose once we have spoken to james-->
        <div id="nameContact">

            <div id="nameLabel">
                <asp:Label ID="lblName" runat="server" Text="Name" AssociatedControlID="txtName" CssClass="contactLabels"></asp:Label>
            </div>

            <div id="nameField">
                <asp:TextBox ID="txtName" runat="server" CssClass="contactFields"></asp:TextBox>
            </div>

            <div id="nameVal">
                <asp:RequiredFieldValidator ID="reqValName" runat="server" ErrorMessage="*This field cannot be left blank" ControlToValidate="txtName" Display="Dynamic" CssClass="contactVal"></asp:RequiredFieldValidator>
            </div>

        </div>

        <div id="emailContact">

            <div id="emailLabel">
                <asp:Label ID="lblEmail" runat="server" Text="Your Email" AssociatedControlID="txtEmail" CssClass="contactLabels"></asp:Label>
            </div>

            <div id="emailField">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="contactFields"></asp:TextBox>
            </div>

            <div id="emailReqVal">
                <asp:RequiredFieldValidator ID="reqValEmail" runat="server" ErrorMessage="*This field cannot be left blank" ControlToValidate="txtEmail" Display="Dynamic" CssClass="contactVal"></asp:RequiredFieldValidator>
            </div>

            <div id="emailRegVal">
                <asp:RegularExpressionValidator ID="regValEmail" runat="server" ErrorMessage="*You have not entered a valid email address" ControlToValidate="txtEmail" Display="Dynamic" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" CssClass="contactVal"></asp:RegularExpressionValidator>
            </div>

        </div>

        <div id="reContact">

            <div id="reLabel">
                <asp:Label ID="lblRe" runat="server" Text="Regarding" AssociatedControlID="txtRe" CssClass="contactLabels"></asp:Label>
            </div>

            <div id="reField">
                <asp:TextBox ID="txtRe" runat="server" CssClass="contactFields"></asp:TextBox>
            </div>

            <div id="reVal">
                <asp:RequiredFieldValidator ID="reqValRe" runat="server" ErrorMessage="*This field cannot be left blank" ControlToValidate="txtRe" Display="Dynamic" CssClass="contactVal"></asp:RequiredFieldValidator>
            </div>

        </div>

        <div id="messageContact">

            <div id="messageLabel">
                <asp:Label ID="lblComment" runat="server" Text="Comment" AssociatedControlID="txtComment" CssClass="contactLabels"></asp:Label>
            </div>

            <div id="messageField">
                <asp:TextBox ID="txtComment" runat="server" CssClass="messageField" TextMode="MultiLine"></asp:TextBox>
            </div>

            <div id="messageVal">
                <asp:RequiredFieldValidator ID="reqValComment" runat="server" ErrorMessage="*This field cannot be left blank" ControlToValidate="txtComment" Display="Dynamic" CssClass="contactVal"></asp:RequiredFieldValidator>
            </div>

        </div>
    

    <div id="buttonContact">
        <asp:Button ID="btnSubmit" runat="server" Text="Send" CssClass="btn btn-default" OnClick="btnSubmit_Click" />
    </div>


    <div id="formLiteral">
        <asp:Literal ID="receivedLiteral" runat="server"></asp:Literal>
    </div>
</div>

  <!-- 
    <div id="twitterContact">
<a class="twitter-timeline" href="https://twitter.com/UoCSciEng" data-widget-id="736132796276690944">Tweets by @UoCSciEng</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
</div>
    -->
</asp:Content>
