﻿<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="equipmentRequest.aspx.cs" Inherits="labManagmentSite.equipmentRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Equipment Request Form</h1>


    <div>
        <div>
            <asp:Label ID="lblRequestFunction" runat="server" Text="Function"></asp:Label>
        </div>
        <div>
            <asp:CheckBoxList ID="chkFunction" runat="server" RepeatLayout="OrderedList">
                <asp:ListItem>Laboratory</asp:ListItem>
                <asp:ListItem>Classroom</asp:ListItem>
                <asp:ListItem Value="txtCheckOther.Text">Other (Please Specify Below)</asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <div>
            <asp:TextBox runat="server" ID="txtFunctionCheckOther"></asp:TextBox>
        </div>
    </div>



    <div>
        <div>
            <asp:Label ID="lblRequestSubject" runat="server" Text="Subject Matter"></asp:Label>
        </div>
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Electronics Principles &amp; Electromagnetism</asp:ListItem>
                <asp:ListItem>Automation / Control</asp:ListItem>
                <asp:ListItem>Power / Machines </asp:ListItem>
                <asp:ListItem Value="txtSubjectDropDownOther">Other (Please Specify)</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            <asp:TextBox ID="txtSubjectDropDownOther" runat="server"></asp:TextBox>

        </div>
    </div>

    <div>
        <div>
            <asp:Label ID="lblRequestLocation" runat="server" Text="Location"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtRequestLocation" runat="server"></asp:TextBox>
        </div>
    </div>


    <div>
        <h2>Dates Required</h2>
       
         <div>
            <asp:Label ID="lblRequestDateFrom" runat="server" Text="From"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtRequestDateFrom" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblRequestDateTo" runat="server" Text="To"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtRequestDateTo" runat="server"></asp:TextBox>
        </div>
    </div>

    <asp:Label ID="lblRequestStartTime" runat="server" Text="Start Time"></asp:Label>
    <asp:TextBox ID="txtRequestStartTime" runat="server"></asp:TextBox>

    <asp:Label ID="lblRequestDuration" runat="server" Text="Duration"></asp:Label>
    <asp:TextBox ID="txtRequestDuration" runat="server"></asp:TextBox>


    <asp:Label ID="lblRequestNoOfstudents" runat="server" Text="Number of Students"></asp:Label>
    <asp:TextBox ID="txtRequestNoOfStudents" runat="server"></asp:TextBox>


    <h2>Resourses Required</h2>

    <asp:Label ID="lblRequestNoOfSeats" runat="server" Text="Number of Seats"></asp:Label>
    <asp:TextBox ID="txtRequestNoOfSeats" runat="server"></asp:TextBox>
    <asp:Label ID="lblRequestSpecialNeeds" runat="server" Text=" Special Needs Access?"></asp:Label>
    <asp:TextBox ID="txtRequestSpecialNeeds" runat="server"></asp:TextBox>


    <asp:Label ID="lblRequestHardware" runat="server" Text="Hardware (type and Quantity)"></asp:Label>
    <asp:TextBox ID="txtRequestHardware" runat="server"></asp:TextBox>

    <asp:Label ID="lblRequestSoftware" runat="server" Text="Software Required"></asp:Label>
    <asp:TextBox ID="txtRequestSoftware" runat="server"></asp:TextBox>


<asp:label ID="Label9" runat="server" Text="Presentation Equipment"></asp:label>


        <div>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>big Screen</asp:ListItem>
                <asp:ListItem>Whiteboard</asp:ListItem>
                <asp:ListItem>Flipchart </asp:ListItem>
                <asp:ListItem Value="txtDropDownOther">Other (Please Specify)</asp:ListItem>
            </asp:DropDownList>
        </div>
  
    <asp:TextBox ID="txtEquipmentOther" runat="server"></asp:TextBox>


        <h2>Safety Issues</h2>
    <asp:Label ID="Label11" runat="server" Text="Risk assessment number"></asp:Label>
    <asp:TextBox ID="txt" runat="server"></asp:TextBox>


    <asp:Label ID="labelRisks" runat="server" Text="Risks Inherent to this Activity"></asp:Label>

    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>



</asp:Content>
