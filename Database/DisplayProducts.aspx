<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DisplayProducts.aspx.cs" Inherits="BradyHaden.Database.DisplayProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Display Products</h2>
    <br />
    <asp:Table ID="ProductsTable" runat="server" CssClass="table">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>Product ID</asp:TableHeaderCell>
            <asp:TableHeaderCell>Product Name</asp:TableHeaderCell>
            <asp:TableHeaderCell>Category ID</asp:TableHeaderCell>
            <asp:TableHeaderCell>Description</asp:TableHeaderCell>
            <asp:TableHeaderCell>Inventory Amount</asp:TableHeaderCell>
            <asp:TableHeaderCell>Cost</asp:TableHeaderCell>
            <asp:TableHeaderCell>Price</asp:TableHeaderCell>
            <asp:TableHeaderCell>Weight</asp:TableHeaderCell>
            <asp:TableHeaderCell>Image</asp:TableHeaderCell>
            <asp:TableHeaderCell>Thumbnail</asp:TableHeaderCell>
        </asp:TableHeaderRow>
    </asp:Table>
    <asp:Label ID="Message" runat="server" Text=""></asp:Label>
</asp:Content>
