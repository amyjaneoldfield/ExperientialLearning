﻿<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="equipmentRequest.aspx.cs" Inherits="labManagmentSite.equipmentRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Equipment Request Form</h1>
    <p>If you wish to book a specific piece of equipment you are required to fill out all the necessary fields beow and submit a request form, which will be approved/declined by a member of staff depending on avaliblity.
        Please allow up to 48 hours for a response, which will be sent to the email included in the contact form you submitted.
    </p>

<!-- first req box-->
    <div class="request">
    <h2 class="reqHeader">Purpose of Request</h2>

    <div>  <!-- need to do vals -->
        <div>
            <asp:Label ID="lblRequestName" runat="server" Text="Your Name" AssociatedControlID="txtRequestName"></asp:Label>
        </div>
        <asp:RequiredFieldValidator ID="reqValRequestName" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtRequestName"></asp:RequiredFieldValidator>
        <div>
            <asp:TextBox ID="txtRequestName" runat="server"></asp:TextBox>
        </div>


 
    <div>
            <asp:Label ID="lblRequestEmail" runat="server" Text="Your Email" AssociatedControlID="txtRequestEmail"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtRequestEmail" runat="server"></asp:TextBox>
        </div>


   
    <div>
            <asp:Label ID="lblRequestFunction" runat="server" Text="Function" AssociatedControlID="ddlFunction"></asp:Label>
        </div>

      
            <asp:DropDownList ID="ddlFunction" runat="server">
                <asp:ListItem>Please Select...</asp:ListItem>
                <asp:ListItem>Laboratory</asp:ListItem>
                <asp:ListItem>Classroom</asp:ListItem>
                <asp:ListItem Value="txtfunctionOther">Other (Please Specify)</asp:ListItem>        
               
            </asp:DropDownList>
       
 <!--check tosee if a compare validator can be used to check if the "Please Select..." value field is selected -->
        <div>
            <asp:TextBox runat="server" ID="txtFunctionOther"></asp:TextBox>
        </div>




    
    <div>
            <asp:Label ID="lblRequestSubject" runat="server" Text="Subject Matter" AssociatedControlID="ddlRequestSubject"></asp:Label>
        </div>
        
            <asp:DropDownList ID="ddlRequestSubject" runat="server">
                <asp:ListItem>Please Select...</asp:ListItem>
                <asp:ListItem>Electronics Principles &amp; Electromagnetism</asp:ListItem>
                <asp:ListItem>Automation / Control</asp:ListItem>
                <asp:ListItem>Power / Machines </asp:ListItem>
                <asp:ListItem Value="txtSubjectOther">Other (Please Specify)</asp:ListItem>
            </asp:DropDownList>
       
        <div>
            <asp:TextBox ID="txtSubjectOther" runat="server"></asp:TextBox>

        </div>


    <div>
        <div>
            <asp:Label ID="lblRequestLocation" runat="server" Text="Location" AssociatedControlID="txtRequestLocation"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtRequestLocation" runat="server"></asp:TextBox>
        </div>
    </div>
 </div>

        </div>


    <!-- seperate info box -->
    <div class="request">
    <div>
        <h2 class="reqHeader">Dates Required</h2>

        <div>
            <asp:Label ID="lblRequestDateFrom" runat="server" Text="From" AssociatedControlID="txtRequestDateFrom"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtRequestDateFrom" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblRequestDateTo" runat="server" Text="To" AssociatedControlID="txtRequestDateTo"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtRequestDateTo" runat="server"></asp:TextBox>
        </div>



        <div>
            <asp:Label ID="lblRequestStartTime" runat="server" Text="Start Time" AssociatedControlID="txtRequestStartTime"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtRequestStartTime" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblRequestDuration" runat="server" Text="Duration" AssociatedControlID="txtRequestDuration"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtRequestDuration" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="lblRequestNoOfstudents" runat="server" Text="Number of Students" AssociatedControlID="txtRequestNoOfStudents"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtRequestNoOfStudents" runat="server"></asp:TextBox>
        </div>
    </div>

  
        </div>

        <!-- 3rd req form-->
        <div class="request">
        <h2 class="reqHeader">Resourses Required</h2>

        <div>
            <asp:Label ID="lblRequestNoOfSeats" runat="server" Text="Number of Seats" AssociatedControlID="txtRequestNoOfSeats"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtRequestNoOfSeats" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblRequestSpecialNeeds" runat="server" Text="Special Needs Access?" AssociatedControlID="txtRequestSpecialNeeds"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtRequestSpecialNeeds" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="lblRequestHardware" runat="server" Text="Hardware (Type and Quantity)" AssociatedControlID="txtRequestHardware"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtRequestHardware" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblRequestSoftware" runat="server" Text="Software Required" AssociatedControlID="txtRequestSoftware"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtRequestSoftware" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="lblRequestPresentationEquipment" runat="server" Text="Presentation Equipment" AssociatedControlID="ddlRequestPresentationEquipment"></asp:Label>
        </div>


        <div>
            <asp:DropDownList ID="ddlRequestPresentationEquipment" runat="server">
                <asp:ListItem>Please Select...</asp:ListItem>
                <asp:ListItem>big Screen</asp:ListItem>
                <asp:ListItem>Whiteboard</asp:ListItem>
                <asp:ListItem>Flipchart </asp:ListItem>
                <asp:ListItem Value="txtPresentationOther">Other (Please Specify)</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            <asp:TextBox ID="txtPresentationOther" runat="server"></asp:TextBox>
        </div>

    </div>

    <!--4th req page-->
    <div class="request">
    <div>


        <h2 class="reqHeader">Safety Issues</h2>

        <div>
            <asp:Label ID="lblRequestRiskAssesment" runat="server" Text="Risk Assessment Number" AssociatedControlID="txtRequestRiskAssessment"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtRequestRiskAssessment" runat="server"></asp:TextBox>
        </div>


        <div>
            <asp:Label ID="lblRequestRisks" runat="server" Text="Risks Inherent to this Activity" AssociatedControlID="txtRequestRisks"></asp:Label>
        </div>
        <div>

            <asp:TextBox ID="txtRequestRisks" runat="server"></asp:TextBox>
        </div>
    </div>
        </div>

<div class="btnReq">

    <asp:Button ID="btnRequest" runat="server" Text="Submit Request" OnClick="Button1_Click" /></div>

</asp:Content>
