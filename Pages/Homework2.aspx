<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homework2.aspx.cs" Inherits="BradyHaden.Pages.Homework2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Visitor Signup Page</h1>
    <div id="FormDiv" runat="server">

        <div class="form-group">
            <asp:Label ID="UserNameLabel" AssociatedControlID="UserNameTextBox" runat="server">User Name</asp:Label>
            <asp:TextBox ID="UserNameTextBox" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator
                ID="UserNameFieldValidator"
                runat="server"
                ControlToValidate="UserNameTextBox"
                ErrorMessage="User Name field blank"
                Display="Dynamic"
            >
                Please enter User Name.
            </asp:RequiredFieldValidator>
            <asp:CustomValidator
                ID="UserNameLengthFieldValidator"
                runat="server"
                EnableClientScript="true"
                OnServerValidate="UserNameLength_Validate"
                ErrorMessage="User name not 6 characters"
                Display="Dynamic"
            >
                Please make username longer than six characters.
            </asp:CustomValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="AddressLabel" AssociatedControlID="AddressTextBox" runat="server">Address</asp:Label>
            <asp:TextBox ID="AddressTextBox" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator
                ID="AddressFieldValidator"
                runat="server"
                ControlToValidate="AddressTextBox"
                ErrorMessage="Address field blank"
                Display="Dynamic"
            >
                Please enter an address.
            </asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="DateVisitedLabel" AssociatedControlID="DateVisitedTextBox" runat="server">Date Visited</asp:Label>
            <asp:TextBox ID="DateVisitedTextBox" TextMode="Date" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator
                ID="RequiredFieldValidator1"
                runat="server"
                ControlToValidate="AddressTextBox"
                ErrorMessage="Address field blank"
                Display="Dynamic"
            >
                Please enter an address.
            </asp:RequiredFieldValidator>
            <asp:CustomValidator
                ID="DateVisitedValidator"
                runat="server"
                EnableClientScript="true"
                OnServerValidate="DateVisited_Validate"
                ErrorMessage="Date visited greater than the current date"
                Display="Dynamic"
            >
                Please enter a date not set in the future.
            </asp:CustomValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="PhoneNumberLabel" AssociatedControlID="PhoneNumberTextBox" runat="server">Phone number</asp:Label>
            <asp:TextBox ID="PhoneNumberTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="PhoneNumberFieldValidator"
                runat="server"
                ControlToValidate="PhoneNumberTextBox"
                ErrorMessage="Phone number field blank"
                Display="Dynamic"
            >
                Please enter a phone number.
            </asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="EmailLabel" AssociatedControlID="EmailTextBox" runat="server">Email</asp:Label>
            <asp:TextBox ID="EmailTextBox" TextMode="Email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="EmailFieldValidator"
                runat="server"
                ControlToValidate="EmailTextBox"
                ErrorMessage="Email field blank"
                Display="Dynamic"
            >
                Please enter an email.
            </asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="PasswordLabel" AssociatedControlID="PasswordTextBox" runat="server">Password</asp:Label>
            <asp:TextBox ID="PasswordTextBox" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="PasswordFieldValidator"
                runat="server"
                ControlToValidate="PasswordTextBox"
                ErrorMessage="Password field blank"
                Display="Dynamic"
            >
                Please enter a password.
            </asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="GardeningChoicesLabel" AssociatedControlID="GardeningChoicesCheckboxes" runat="server">Gardening Interests</asp:Label>
            <asp:CustomValidator
                ID="CheckBoxRequired"
                runat="server"
                EnableClientScript="true"
                OnServerValidate="GardeningChoices_Validate"
                ErrorMessage="No interest chosen"
                Display="Dynamic"
            >
                Please select at least one interest.
            </asp:CustomValidator>
            <asp:CheckBoxList ID="GardeningChoicesCheckboxes" runat="server">
                <asp:ListItem>Flowers</asp:ListItem>
                <asp:ListItem>Vegetables</asp:ListItem>
                <asp:ListItem>Fruits</asp:ListItem>
                <asp:ListItem>Medicinal Plants</asp:ListItem>
            </asp:CheckBoxList>
        </div>

        <div class="form-group">
            <asp:Label ID="BusinessArrivalLabel" AssociatedControlID="BusinessArrivalDropdown" runat="server">How you got here</asp:Label>
            <asp:DropDownList ID="BusinessArrivalDropdown" runat="server">
                <asp:ListItem>Bus</asp:ListItem>
                <asp:ListItem>Car</asp:ListItem>
                <asp:ListItem>Bike</asp:ListItem>
                <asp:ListItem>Taxi</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <asp:Label ID="ContactPreferenceLabel" AssociatedControlID="ContactPreferenceRadioButtons" runat="server">Contact Preference</asp:Label>
            <asp:RadioButtonList ID="ContactPreferenceRadioButtons" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="Email" Selected="True">Email</asp:ListItem>
                <asp:ListItem Value="Phone">Phone</asp:ListItem>
            </asp:RadioButtonList>
        </div>

        <div class="form-group">
            <asp:Label ID="FeedbackLabel" AssociatedControlID="FeedbackTextBox" runat="server">Feedback</asp:Label>
            <asp:TextBox ID="FeedbackTextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="FeedbackFieldValidator"
                runat="server"
                ControlToValidate="FeedbackTextBox"
                ErrorMessage="Feedback field blank"
                Display="Dynamic"
            >
                Please enter feedback.
            </asp:RequiredFieldValidator>
        </div>

        <asp:Button ID="SubmitForm" runat="server" Text="Submit" OnClick="SubmitForm_Click" ToolTip="Submit" />
        <br />
        <asp:Label ID="ValidMessageLabel" runat="server"></asp:Label>
    </div>
</asp:Content>
