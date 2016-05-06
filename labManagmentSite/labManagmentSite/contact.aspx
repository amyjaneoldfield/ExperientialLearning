<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="labManagmentSite.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h1>Contact </h1>
                                <!--basic contact form, structure will be amended to fit its purpose once we have spoken to james-->
    <div id="nameContact">
        <asp:Label ID="lblName" runat="server" Text="Name" AssociatedControlID="txtName"></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqValName" runat="server" ErrorMessage="*This field cannot be left blank, please type your name" ControlToValidate="txtName" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>

    <div id="emailContact">
        <asp:Label ID="lblEmail" runat="server" Text="Your Email" AssociatedControlID="txtEmail"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqValEmail" runat="server" ErrorMessage="*This field cannot be left blank, plese enter your email address" ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>

    <div id="reContact">
        <asp:Label ID="lblRe" runat="server" Text="Regarding" AssociatedControlID="txtRe"></asp:Label>
        <asp:TextBox ID="txtRe" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqValRe" runat="server" ErrorMessage="*This field cannot be left blank, please tell us what your message is regarding" ControlToValidate="txtRe" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>

    <div id="commentComtact">
        <asp:Label ID="lblComment" runat="server" Text="Comment" AssociatedControlID="txtComment"></asp:Label>
        <asp:TextBox ID="txtComment" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqValComment" runat="server" ErrorMessage="*This field cannot be left blank, please tell us your comments" ControlToValidate="txtComment" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>

    <div id="buttonContact">
        <asp:Button ID="btnSubmit" runat="server" Text="Send" OnClick="btnSubmit_Click" />
    </div>
</asp:Content>
