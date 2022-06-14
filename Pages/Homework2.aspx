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
                ErrorMessage="Please enter User Name."
                Display="Dynamic">
                *
            </asp:RequiredFieldValidator>
            <asp:CustomValidator
                ID="UserNameLengthFieldValidator"
                runat="server"
                EnableClientScript="true"
                OnServerValidate="UserNameLength_Validate"
                ErrorMessage="Please make username longer than six characters."
                Display="Dynamic">
                *
            </asp:CustomValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="AddressLine1Label" AssociatedControlID="AddressLine1TextBox" runat="server">Address Line 1</asp:Label>
            <asp:TextBox ID="AddressLine1TextBox" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator
                ID="AddressLine1FieldValidator"
                runat="server"
                ControlToValidate="AddressLine1TextBox"
                ErrorMessage="Please enter a street address."
                Display="Dynamic">
                *
            </asp:RequiredFieldValidator>

            <asp:Label ID="AddressLine2Label" AssociatedControlID="AddressLine2TextBox" runat="server">Address Line 2</asp:Label>
            <asp:TextBox ID="AddressLine2TextBox" runat="server">
            </asp:TextBox>

            <asp:Label ID="CityLabel" AssociatedControlID="CityTextBox" runat="server">City</asp:Label>
            <asp:TextBox ID="CityTextBox" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator
                ID="CityFieldValidator"
                runat="server"
                ControlToValidate="CityTextBox"
                ErrorMessage="Please enter a city"
                Display="Dynamic">
                *
            </asp:RequiredFieldValidator>

            <%--BEGIN STATE DROPDOWN LIST--%>
            <asp:Label ID="StateLabel" AssociatedControlID="StateDropDownList" runat="server">State</asp:Label>
            <asp:DropDownList ID="StateDropDownList" runat="server">
                <asp:ListItem Value="AL">Alabama</asp:ListItem>
                <asp:ListItem Value="AK">Alaska</asp:ListItem>
                <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                <asp:ListItem Value="CA">California</asp:ListItem>
                <asp:ListItem Value="CO">Colorado</asp:ListItem>
                <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                <asp:ListItem Value="DE">Delaware</asp:ListItem>
                <asp:ListItem Value="FL">Florida</asp:ListItem>
                <asp:ListItem Value="GA">Georgia</asp:ListItem>
                <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                <asp:ListItem Value="ID">Idaho</asp:ListItem>
                <asp:ListItem Value="IL">Illinois</asp:ListItem>
                <asp:ListItem Value="IN">Indiana</asp:ListItem>
                <asp:ListItem Value="IA">Iowa</asp:ListItem>
                <asp:ListItem Value="KS">Kansas</asp:ListItem>
                <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                <asp:ListItem Value="ME">Maine</asp:ListItem>
                <asp:ListItem Value="MD">Maryland</asp:ListItem>
                <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                <asp:ListItem Value="MI">Michigan</asp:ListItem>
                <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                <asp:ListItem Value="MO">Missouri</asp:ListItem>
                <asp:ListItem Value="MT">Montana</asp:ListItem>
                <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                <asp:ListItem Value="NV">Nevada</asp:ListItem>
                <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                <asp:ListItem Value="NY">New York</asp:ListItem>
                <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                <asp:ListItem Value="OH">Ohio</asp:ListItem>
                <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                <asp:ListItem Value="OR">Oregon</asp:ListItem>
                <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                <asp:ListItem Value="TX">Texas</asp:ListItem>
                <asp:ListItem Value="UT">Utah</asp:ListItem>
                <asp:ListItem Value="VT">Vermont</asp:ListItem>
                <asp:ListItem Value="VA">Virginia</asp:ListItem>
                <asp:ListItem Value="WA">Washington</asp:ListItem>
                <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                <asp:ListItem Value="WY">Wyoming</asp:ListItem>
            </asp:DropDownList>
            <%--END STATE DROPDOWN LIST--%>

            <asp:Label ID="ZipCodeLabel" AssociatedControlID="ZipCodeTextBox" runat="server">Zip Code</asp:Label>
            <asp:TextBox ID="ZipCodeTextBox" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator
                ID="ZipCodeFieldValidator"
                runat="server"
                ControlToValidate="ZipCodeTextBox"
                ErrorMessage="Please enter a zip code."
                Display="Dynamic">
                *
            </asp:RequiredFieldValidator>
            <%--Source for regex. It validates both 5 digit and 5+4 digit zip codes.--%>
            <%--https://www.oreilly.com/library/view/regular-expressions-cookbook/9781449327453/ch04s14.html--%>
            <asp:RegularExpressionValidator
                ID="ZipCodeRegexValidator"
                runat="server"
                ControlToValidate="ZipCodeTextBox"
                ErrorMessage="Please correct the zip code format."
                ValidationExpression="^[0-9]{5}(?:-[0-9]{4})?$"
                Display="Dynamic"
            >
                *
            </asp:RegularExpressionValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="DateVisitedLabel" AssociatedControlID="DateVisitedTextBox" runat="server">Date Visited</asp:Label>
            <asp:TextBox ID="DateVisitedTextBox" TextMode="Date" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator
                ID="RequiredFieldValidator1"
                runat="server"
                ControlToValidate="DateVisitedTextBox"
                ErrorMessage="Please enter the date you visited our store."
                Display="Dynamic">
                *
            </asp:RequiredFieldValidator>
            <asp:CustomValidator
                ID="DateVisitedValidator"
                runat="server"
                EnableClientScript="true"
                OnServerValidate="DateVisited_Validate"
                ErrorMessage="Please enter a date not set in the future."
                Display="Dynamic">
                *
            </asp:CustomValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="PhoneNumberLabel" AssociatedControlID="PhoneNumberTextBox" runat="server">Phone number</asp:Label>
            <asp:TextBox ID="PhoneNumberTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="PhoneNumberFieldValidator"
                runat="server"
                ControlToValidate="PhoneNumberTextBox"
                ErrorMessage="Please enter a phone number."
                Display="Dynamic">
                *
            </asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="EmailLabel" AssociatedControlID="EmailTextBox" runat="server">Email</asp:Label>
            <asp:TextBox ID="EmailTextBox" TextMode="Email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="EmailFieldValidator"
                runat="server"
                ControlToValidate="EmailTextBox"
                ErrorMessage="Please enter an email."
                Display="Dynamic">
                *
            </asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="PasswordLabel" AssociatedControlID="PasswordTextBox" runat="server">Password</asp:Label>
            <asp:TextBox ID="PasswordTextBox" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="PasswordFieldValidator"
                runat="server"
                ControlToValidate="PasswordTextBox"
                ErrorMessage="Please enter a password."
                Display="Dynamic">
                *
            </asp:RequiredFieldValidator>
            <%--Regex came from this SO question--%>
            <%--https://stackoverflow.com/a/19605207--%>
            <asp:RegularExpressionValidator
                ID="PasswordRegexValidator"
                runat="server"
                ControlToValidate="PasswordTextBox"
                ErrorMessage="Password must be at least 8 characters long, contain one uppercase letter, one lowercase letter, one number, and one special character."
                ValidationExpression="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$"
                Display="Dynamic"
            >
                *
            </asp:RegularExpressionValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="GardeningChoicesLabel" AssociatedControlID="GardeningChoicesCheckboxes" runat="server">Gardening Interests</asp:Label>

            <asp:CheckBoxList ID="GardeningChoicesCheckboxes" runat="server">
                <asp:ListItem>Flowers</asp:ListItem>
                <asp:ListItem>Vegetables</asp:ListItem>
                <asp:ListItem>Fruits</asp:ListItem>
                <asp:ListItem>Medicinal Plants</asp:ListItem>
                <asp:ListItem>Hemp</asp:ListItem>
            </asp:CheckBoxList>
            <asp:CustomValidator
                ID="CheckBoxRequired"
                runat="server"
                EnableClientScript="true"
                OnServerValidate="GardeningChoices_Validate"
                ErrorMessage="Please select at least one interest."
                Display="Dynamic">
                *
            </asp:CustomValidator>
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
                <asp:ListItem Value="Letter">Letter</asp:ListItem>
            </asp:RadioButtonList>
        </div>

        <div class="form-group">
            <asp:Label ID="FeedbackLabel" AssociatedControlID="FeedbackTextBox" runat="server">Feedback</asp:Label>
            <asp:TextBox ID="FeedbackTextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="FeedbackFieldValidator"
                runat="server"
                ControlToValidate="FeedbackTextBox"
                ErrorMessage="Please enter feedback."
                Display="Dynamic">
                *
            </asp:RequiredFieldValidator>
        </div>

        <asp:Button ID="SubmitForm" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="SubmitForm_Click" ToolTip="Submit" />
        <br />

        <asp:ValidationSummary
            ID="ValidationSummary"
            DisplayMode="BulletList"
            runat="server"
            HeaderText="There are errors in your form" />
    </div>
    <asp:Label ID="ValidMessageLabel" runat="server"></asp:Label>
    <asp:Label ID="FormResults" runat="server"></asp:Label>
</asp:Content>
