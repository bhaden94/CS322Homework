<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homework2.aspx.cs" Inherits="BradyHaden.Pages.Homework2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>

        <asp:Label ID="UserName" runat="server">User Name</asp:Label>
        <asp:Textbox runat="server">
            <%-- username --%>
        </asp:Textbox>
        <br />

        <asp:Label ID="Address" runat="server">Address</asp:Label>
        <asp:Textbox runat="server">
            <%-- address --%>
        </asp:Textbox>
        <br />
        <asp:Label ID="PhoneNumber" runat="server">Phone number</asp:Label>
        <asp:Textbox runat="server">
            <%-- phone number --%>
        </asp:Textbox>
        <br />
        <asp:Label ID="Email" runat="server">Email</asp:Label>
        <asp:Textbox runat="server">
            <%-- email --%>
        </asp:Textbox>
        <br />
        <asp:Label ID="Password" runat="server">Password</asp:Label>
        <asp:Textbox runat="server">
            <%-- password --%>
        </asp:Textbox>
        <br />
        <asp:Label ID="GardeningChoices" runat="server">Gardening Choices</asp:Label>
        <asp:CheckboxList runat="server">
            <%-- multi-select with somethingrelated to gardening --%>
        </asp:CheckboxList>
        <br />
        <asp:Label ID="BusinessArrival" runat="server">How you got here</asp:Label>
        <asp:DropdownList runat="server">
            <%-- choose how they arrived at business --%>
        </asp:DropdownList>
        <br />
        <asp:Label ID="ContactPreference" runat="server">Contact Preference</asp:Label>
        <asp:RadioButton runat="server">
            <%-- Contanct preferences --%>
        </asp:RadioButton>
        <br />
        <asp:Label ID="Feedback" runat="server">Feedback</asp:Label>
        <asp:Textbox runat="server">
            <%-- multi line text for feedback --%>
        </asp:Textbox>
        <br />
        <asp:Button ID="SubmitForm" runat="server" Text="Submit" OnClick="SubmitForm_Click" ToolTip="Submit" />  
    </div>
</asp:Content>
