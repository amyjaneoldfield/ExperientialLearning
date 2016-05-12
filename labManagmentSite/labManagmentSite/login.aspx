<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="labManagmentSite.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>Please login to gain access to the admin area.</p>

    <div id="loginControl">
        <asp:Login ID="Login1" runat="server"  RenderOuterTable="False" DestinationPageUrl="~/admin/admin.aspx">
            <LayoutTemplate>
                                        <div id="loginForm">

                                        <div class="loginLabel">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="loginLabel">User Name:</asp:Label>
                                        </div>

                                        <div class="loginText">
                                        <asp:TextBox ID="UserName" runat="server" CssClass="loginText"></asp:TextBox>
                                        </div>
                                        
                                        <div class="loginVal">
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1" CssClass="loginVal">This field cannot be left blank</asp:RequiredFieldValidator>
                                        </div>
                                        
                                        <div class="loginLabel">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="loginLabel">Password:</asp:Label>
                                        </div>

                                        <div class="loginText">
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="loginText"></asp:TextBox>
                                        </div>
                                        
                                        <div class="loginVal">
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1" CssClass="loginVal">This field cannot be left blank</asp:RequiredFieldValidator>
                                        </div>
                                         
                                        <div id="loginLiteral">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </div>
                                        
                                        <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />

                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" />
                                        
                                        </div>
            </LayoutTemplate>
        </asp:Login>

</asp:Content>
