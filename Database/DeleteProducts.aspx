<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteProducts.aspx.cs" Inherits="BradyHaden.Database.DeleteProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Manage the Products Table</h2>
    <div style="padding: 25px;">
        <aside>
            <h2>Choose a Product to Delete</h2>
            <br />
            <asp:DropDownList ID="ProductListDropDown" runat="server" AutoPostBack="true"
                OnSelectedIndexChanged="ProductListDropDown_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <asp:Label ID="Message" runat="server" Text="" /><br />
        </aside>

        <section>
            <h2>All Products</h2>
            <br />
            <br />
            <asp:Table ID="ProductsTable" runat="server" CssClass="table">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Product ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Product Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Category ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Category Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Description</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Inventory</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Cost</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Price</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Weight</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Product Image</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Product Thumbnail</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </section>
    </div>
</asp:Content>
