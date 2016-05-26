<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="createAdmin.aspx.cs" Inherits="labManagmentSite.createAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="reqHeader">Create new admin users</h1>
    <p class="adminCreaPara">Fill out all the required fields below to create another Admin user, please be aware by creating such person they have the authroity to access, update and change all the private areas which an Admin has access to. E.G Adding new equipment.</p>
    <div id="register">
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ContinueDestinationPageUrl="~/admin/admin.aspx">
            <CreateUserButtonStyle CssClass="btn btn-default" />
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                    <ContentTemplate>


                        <div class="registerLabels">
                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name</asp:Label>
                        </div>

                        <div id="registernameTextBox" class="registerFields">
                            <asp:TextBox ID="UserName" runat="server" CssClass="registerFields"></asp:TextBox>
                        </div>

                        <div id="registerNameValdator" class="validation">
                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="*User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1"></asp:RequiredFieldValidator>
                        </div>

                        <div class="registerLabels">
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password</asp:Label>
                        </div>

                        <div id="registerPasswordTextBox" class="registerFields">
                            <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="registerFields"></asp:TextBox>
                        </div>

                        <div id="registerPasswordValidator" class="validation">
                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="*Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1"></asp:RequiredFieldValidator>
                        </div>

                        <div class="registerLabels">
                            <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password</asp:Label>
                        </div>

                        <div id="registerConfirmPasswordTextBox" class="registerFields">
                            <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" CssClass="registerFields"></asp:TextBox>
                        </div>

                        <div id="regsterConfirmPasswordValidator" class="validation">
                            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="*Passwords do not match" ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1"></asp:RequiredFieldValidator>
                        </div>
                        <div id="registerAnswerCompareValidator" class="validation">
                            <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                        </div>
                        <div class="registerLabels">
                            <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail</asp:Label>
                        </div>

                        <div id="registerEmailTextBox" class="registerFields">
                            <asp:TextBox ID="Email" runat="server" CssClass="registerFields"></asp:TextBox>
                        </div>

                        <div id="registerEmailValidator" class="validation">
                            <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="*E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1"></asp:RequiredFieldValidator>
                        </div>

                        <div class="registerLabels">
                            <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question</asp:Label>
                        </div>

                        <div id="registerQuestionTextBox" class="registerFields">
                            <asp:TextBox ID="Question" runat="server" CssClass="registerFields"></asp:TextBox>
                        </div>

                        <div id="registerQuestionValidator" class="validation">
                            <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="*Security question is required." ToolTip="Security question is required." ValidationGroup="CreateUserWizard1"></asp:RequiredFieldValidator>
                        </div>
                        <div class="registerLabels">
                            <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer</asp:Label>
                        </div>
                        <div id="registerAnswerTextBox" class="registerFields">
                            <asp:TextBox ID="Answer" runat="server" CssClass="registerFields"></asp:TextBox>
                        </div>
                        <div id="registerAnswerRequiredValidator" class="validation">
                            <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="*Security answer is required." ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1"></asp:RequiredFieldValidator>
                        </div>

                        <div id="litRegisterErrorMessage">
                            <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                        </div>

                    </ContentTemplate>
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>

    </div>




</asp:Content>
