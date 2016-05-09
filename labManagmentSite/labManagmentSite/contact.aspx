<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="labManagmentSite.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h1>Contact </h1>
                                <!--basic contact form, structure will be amended to fit its purpose once we have spoken to james-->
    <div id="nameContact">
        
        <div id="nameLabel">
            <asp:Label ID="lblName" runat="server" Text="Name" AssociatedControlID="txtName"></asp:Label>
        </div>

        <div id="nameField">
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </div>

        <div id="nameVal" class="contactVal">
            <asp:RequiredFieldValidator ID="reqValName" runat="server" ErrorMessage="*This field cannot be left blank" ControlToValidate="txtName" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

    </div>

    <div id="emailContact">
        
        <div id="emailLabel">
            <asp:Label ID="lblEmail" runat="server" Text="Your Email" AssociatedControlID="txtEmail"></asp:Label>
        </div>
        
        <div id="emailField">
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </div>

        <div id="emailReqVal" class="contactVal">
            <asp:RequiredFieldValidator ID="reqValEmail" runat="server" ErrorMessage="*This field cannot be left blank" ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

        <div id="emailRegVal" class="contactVal">
            <asp:RegularExpressionValidator ID="regValEmail" runat="server" ErrorMessage="*You have not entered a valid email address" ControlToValidate="txtEmail" Display="Dynamic" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"></asp:RegularExpressionValidator>
        </div>
   
    </div>

    <div id="reContact">
        
        <div id="reLabel">
            <asp:Label ID="lblRe" runat="server" Text="Regarding" AssociatedControlID="txtRe"></asp:Label>
        </div>
        
        <div id="reField">
            <asp:TextBox ID="txtRe" runat="server"></asp:TextBox>
        </div>
        
        <div id="reVal" class="contactVal">
            <asp:RequiredFieldValidator ID="reqValRe" runat="server" ErrorMessage="*This field cannot be left blank" ControlToValidate="txtRe" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

    </div>

    <div id="messageContact">

        <div id="messageLabel">
            <asp:Label ID="lblComment" runat="server" Text="Comment" AssociatedControlID="txtComment"></asp:Label>
        </div>

        <div id="messageField">
            <asp:TextBox ID="txtComment" runat="server"></asp:TextBox>
        </div>

        <div id="messageVal" class="contactVal">
            <asp:RequiredFieldValidator ID="reqValComment" runat="server" ErrorMessage="*This field cannot be left blank" ControlToValidate="txtComment" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

    </div>

    <div id="buttonContact">
        <asp:Button ID="btnSubmit" runat="server" Text="Send" OnClick="btnSubmit_Click" />
    </div>


    <div id="formLiteral">
        <asp:Literal ID="receivedLiteral" runat="server"></asp:Literal>
    </div>

    

</asp:Content>
