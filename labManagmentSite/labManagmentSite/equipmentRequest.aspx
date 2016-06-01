<%@ Page Title="" Language="C#" MasterPageFile="~/labManagement.Master" AutoEventWireup="true" CodeBehind="equipmentRequest.aspx.cs" Inherits="labManagmentSite.equipmentRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Equipment Request Form</h1>
        <p>
            If you wish to book a specific piece of equipment you are required to fill out all the necessary fields beow and submit a request form, which will be approved/declined by a member of staff depending on avaliblity.
        Please allow up to 48 hours for a response, which will be sent to the email included in the contact form you submitted.
        </p>

        <!-- first req box-->
        <div class="request">
            <h2 class="reqHeader">Purpose of Request</h2>

            <div>
                <!-- 1. Name -->
                <div class="bookingLabels">
                    <asp:Label ID="lblRequestName" runat="server" Text="Your Name" AssociatedControlID="txtRequestName"></asp:Label>
                </div>

                <div>
                    <asp:TextBox ID="txtRequestName" runat="server"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="reqValRequestName" runat="server" ErrorMessage="* Error incorrect field entered, don't leave empty." ControlToValidate="txtRequestName" CssClass="validation"></asp:RequiredFieldValidator>


                <div class="bookingLabels">
                    <!-- 2. Email -->
                    <asp:Label ID="lblRequestEmail" runat="server" Text="Your Email" AssociatedControlID="txtRequestEmail"></asp:Label>
                </div>
                <div>
                    <asp:TextBox ID="txtRequestEmail" runat="server"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="reqValRequestEmail" runat="server" ErrorMessage="* Error incorrect field entered, don't leave empty." ControlToValidate="txtRequestEmail" CssClass="validation"></asp:RequiredFieldValidator>



                <div class="bookingLabels">
                    <!--3. Drop List -->
                    <asp:Label ID="lblRequestFunction" runat="server" Text="Function" AssociatedControlID="ddlFunction"></asp:Label>
                </div>


                <asp:DropDownList ID="ddlFunction" runat="server" CssClass="DropListBooking">
                    <asp:ListItem>Please Select...</asp:ListItem>
                    <asp:ListItem>Laboratory</asp:ListItem>
                    <asp:ListItem>Classroom</asp:ListItem>
                    <asp:ListItem Value="txtfunctionOther">Other (Please Specify)</asp:ListItem>

                </asp:DropDownList>

                <div>
                <asp:RequiredFieldValidator ID="reqValRequestFunction" runat="server" ErrorMessage="* Error You Must Select a Function " ControlToValidate="ddlFunction" InitialValue="Please Select..." CssClass="validation"></asp:RequiredFieldValidator>
                </div>

                <!--check tosee if a compare validator can be used to check if the "Please Select..." value field is selected -->
                <div>
                    <asp:TextBox runat="server" ID="txtFunctionOther"></asp:TextBox>
                </div>





                <div class="bookingLabels">
                    <!-- 4. Drop List -->
                    <asp:Label ID="lblRequestSubject" runat="server" Text="Subject Matter" AssociatedControlID="ddlRequestSubject" CssClass="DropListBooking"></asp:Label>
                </div>

                <asp:DropDownList ID="ddlRequestSubject" runat="server" CssClass="DropListBooking">
                    <asp:ListItem>Please Select...</asp:ListItem>
                    <asp:ListItem>Electronics Principles &amp; Electromagnetism</asp:ListItem>
                    <asp:ListItem>Automation / Control</asp:ListItem>
                    <asp:ListItem>Power / Machines </asp:ListItem>
                    <asp:ListItem Value="txtSubjectOther">Other (Please Specify)</asp:ListItem>
                </asp:DropDownList>

                                <div>
                <asp:RequiredFieldValidator ID="reqValRequestSubject" runat="server" ErrorMessage="* Error You Must Select a Subject " ControlToValidate="ddlRequestSubject" InitialValue="Please Select..." CssClass="validation"></asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:TextBox ID="txtSubjectOther" runat="server"></asp:TextBox>

                </div>


                <div class="bookingLabels">
                    <!-- 5. Location -->
                    <div>
                        <asp:Label ID="lblRequestLocation" runat="server" Text="Location" AssociatedControlID="txtRequestLocation"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtRequestLocation" runat="server"></asp:TextBox>
                    </div>
                </div>
                <asp:RequiredFieldValidator ID="reqValRequestLocation" runat="server" ErrorMessage="* Error incorrect field entered, don't leave empty." ControlToValidate="txtRequestLocation" CssClass="validation"></asp:RequiredFieldValidator>
            </div>

        </div>


        <!-- seperate info box -->
        <div class="request">
            <div>
                <h2 class="reqHeader">Dates Required</h2>

                <div class="bookingLabels">
                    <!-- 6. Date From -->
                    <asp:Label ID="lblRequestDateFrom" runat="server" Text="From" AssociatedControlID="txtRequestDateFrom"></asp:Label>
                </div>
                <div>
                    <asp:TextBox ID="txtRequestDateFrom" runat="server"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="reqValRequestDateFrom" runat="server" ErrorMessage="* Error incorrect field entered, don't leave empty." ControlToValidate="txtRequestDateFrom" CssClass="validation"></asp:RequiredFieldValidator>

                <!-- 7. Date To -->
                <div class="bookingLabels">
                    <asp:Label ID="lblRequestDateTo" runat="server" Text="To" AssociatedControlID="txtRequestDateTo"></asp:Label>
                </div>
                <div>
                    <asp:TextBox ID="txtRequestDateTo" runat="server"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="reqValDateTo" runat="server" ErrorMessage="* Error incorrect field entered, don't leave empty." ControlToValidate="txtRequestDateTo" CssClass="validation"></asp:RequiredFieldValidator>



                <div class="bookingLabels">
                    <!-- 8. Start Time -->
                    <asp:Label ID="lblRequestStartTime" runat="server" Text="Start Time" AssociatedControlID="txtRequestStartTime"></asp:Label>
                </div>
                <div>
                    <asp:TextBox ID="txtRequestStartTime" runat="server"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="reqValRequestStartTime" runat="server" ErrorMessage="* Error incorrect field entered, don't leave empty." ControlToValidate="txtRequestStartTime" CssClass="validation"></asp:RequiredFieldValidator>


                <div class="bookingLabels">
                    <!-- 9. Duration -->
                    <asp:Label ID="lblRequestDuration" runat="server" Text="Duration" AssociatedControlID="txtRequestDuration"></asp:Label>
                </div>
                <div>
                    <asp:TextBox ID="txtRequestDuration" runat="server"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="reqValRequestDuration" runat="server" ErrorMessage="* Error incorrect field entered, don't leave empty." ControlToValidate="txtRequestDuration" CssClass="validation"></asp:RequiredFieldValidator>


                <div class="bookingLabels">
                    <!-- 10. No Students -->
                    <asp:Label ID="lblRequestNoOfstudents" runat="server" Text="Number of Students" AssociatedControlID="txtRequestNoOfStudents"></asp:Label>
                </div>
                <div>
                    <asp:TextBox ID="txtRequestNoOfStudents" runat="server"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="reqValRequestNoStudents" runat="server" ErrorMessage="* Error incorrect field entered, don't leave empty." ControlToValidate="txtRequestNoOfStudents" CssClass="validation"></asp:RequiredFieldValidator>
            </div>


        </div>

        <!-- 3rd req form-->
        <div class="request">
            <h2 class="reqHeader">Resourses Required</h2>

            <div class="bookingLabels">
                <!-- 11. No Seats -->
                <asp:Label ID="lblRequestNoOfSeats" runat="server" Text="Number of Seats" AssociatedControlID="txtRequestNoOfSeats"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="txtRequestNoOfSeats" runat="server"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="reqValNoSeats" runat="server" ErrorMessage="* Error incorrect field entered, don't leave empty." ControlToValidate="txtRequestNoOfSeats" CssClass="validation"></asp:RequiredFieldValidator>

            <div class="bookingLabels">
                <!-- 12. Special Needs -->
                <asp:Label ID="lblRequestSpecialNeeds" runat="server" Text="Special Needs Access?" AssociatedControlID="txtRequestSpecialNeeds"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="txtRequestSpecialNeeds" runat="server"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="reqValSpecialNeeds" runat="server" ErrorMessage="* Error incorrect field entered, don't leave empty." ControlToValidate="txtRequestSpecialNeeds" CssClass="validation"></asp:RequiredFieldValidator>

            <div class="bookingLabels">
                <!-- 13. Hardware -->
                <asp:Label ID="lblRequestHardware" runat="server" Text="Hardware (Type and Quantity)" AssociatedControlID="txtRequestHardware"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="txtRequestHardware" runat="server"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="ReqValHardware" runat="server" ErrorMessage="* Error incorrect field entered, don't leave empty." ControlToValidate="txtRequestHardware" CssClass="validation"></asp:RequiredFieldValidator>

            <div class="bookingLabels">
                <!-- 14. Software -->
                <asp:Label ID="lblRequestSoftware" runat="server" Text="Software Required" AssociatedControlID="txtRequestSoftware"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="txtRequestSoftware" runat="server"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="reqValSoftware" runat="server" ErrorMessage="* Error incorrect field entered, don't leave empty." ControlToValidate="txtRequestSoftware" CssClass="validation"></asp:RequiredFieldValidator>

            <div class="bookingLabels">
                <!-- 15. Drop List -->
                <asp:Label ID="lblRequestPresentationEquipment" runat="server" Text="Presentation Equipment" AssociatedControlID="ddlRequestPresentationEquipment"></asp:Label>
            </div>


            <div>
                <asp:DropDownList ID="ddlRequestPresentationEquipment" runat="server" CssClass="DropListBooking">
                    <asp:ListItem>Please Select...</asp:ListItem>
                    <asp:ListItem>big Screen</asp:ListItem>
                    <asp:ListItem>Whiteboard</asp:ListItem>
                    <asp:ListItem>Flipchart </asp:ListItem>
                    <asp:ListItem Value="txtPresentationOther">Other (Please Specify)</asp:ListItem>
                </asp:DropDownList>
            </div>

                            <div>
                <asp:RequiredFieldValidator ID="reqvalRequestPresEquip" runat="server" ErrorMessage="* Error You Must Select Required Presentation Equipment" ControlToValidate="ddlRequestPresentationEquipment" InitialValue="Please Select..." CssClass="validation"></asp:RequiredFieldValidator>
                </div>

            <div>
                <asp:TextBox ID="txtPresentationOther" runat="server"></asp:TextBox>
            </div>

        </div>

        <!--4th req page-->
        <div class="request">
            <div>


                <h2 class="reqHeader">Safety Issues</h2>

                <div class="bookingLabels">
                    <!-- 16. Risk Assessment -->
                    <asp:Label ID="lblRequestRiskAssesment" runat="server" Text="Risk Assessment Number" AssociatedControlID="txtRequestRiskAssessment"></asp:Label>
                </div>
                <div>
                    <asp:TextBox ID="txtRequestRiskAssessment" runat="server"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="valRiskAssement" runat="server" ErrorMessage="* Error incorrect field entered, don't leave empty." ControlToValidate="txtRequestRiskAssessment" CssClass="validation"></asp:RequiredFieldValidator>

                <div class="bookingLabels">
                    <!-- 17. Request Risks -->
                    <asp:Label ID="lblRequestRisks" runat="server" Text="Risks Inherent to this Activity" AssociatedControlID="txtRequestRisks"></asp:Label>
                </div>
                <div>

                    <asp:TextBox ID="txtRequestRisks" runat="server"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="reqValRequestRisks" runat="server" ErrorMessage="* Error incorrect field entered, don't leave empty." ControlToValidate="txtRequestRisks" CssClass="validation"></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:FileUpload ID="riskAssessUpload" runat="server" CssClass="fileUploadRequest"/>
            </div>
        </div>

        <div class="btnReq">

            <asp:Button ID="btnRequest" runat="server" Text="Submit Request" CssClass="btn btn-default" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>
