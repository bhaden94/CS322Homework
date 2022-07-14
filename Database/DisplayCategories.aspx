<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DisplayCategories.aspx.cs" Inherits="BradyHaden.Database.DisplayCategories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Display Categories</h2>
    <br />
    <asp:Table ID="CategoryTable" runat="server" CssClass="table">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>Category ID</asp:TableHeaderCell>
            <asp:TableHeaderCell>Category Name</asp:TableHeaderCell>
            <asp:TableHeaderCell>Description</asp:TableHeaderCell>
            <asp:TableHeaderCell>Picture</asp:TableHeaderCell>
            <asp:TableHeaderCell>Thumbnail</asp:TableHeaderCell>
        </asp:TableHeaderRow>
    </asp:Table>
    <asp:Label ID="Message" runat="server" Text=""></asp:Label>
</asp:Content>
