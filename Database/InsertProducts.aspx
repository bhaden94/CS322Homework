<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertProducts.aspx.cs" Inherits="BradyHaden.Database.InsertProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Insert a Product</h2>
    <div style="padding: 25px;">

        <aside>
            Insert a New Product<br />
            <br />
            <asp:TextBox ID="ProductIdTextBox" runat="server" placeholder="Product ID"></asp:TextBox><br />
            <br />
            <asp:TextBox ID="ProductNameTextBox" runat="server" placeholder="Product Name"></asp:TextBox><br />
            <br />
            <asp:TextBox ID="CategoryIdTextBox" runat="server" placeholder="Category ID"></asp:TextBox><br />
            <br />
            <asp:TextBox ID="CategoryNameTextBox" runat="server" placeholder="Category Name"></asp:TextBox><br />
            <br />
            <asp:TextBox ID="DescriptionTextBox" runat="server" placeholder="Description"></asp:TextBox><br />
            <br />
            <asp:TextBox ID="InventoryTextBox" runat="server" placeholder="Inventory"></asp:TextBox><br />
            <br />
            <asp:TextBox ID="CostTextBox" runat="server" placeholder="Cost"></asp:TextBox><br />
            <br />
            <asp:TextBox ID="PriceTextBox" runat="server" placeholder="Price"></asp:TextBox><br />
            <br />
            <asp:TextBox ID="WeightTextBox" runat="server" placeholder="Weight"></asp:TextBox><br />
            <br />
            <asp:TextBox ID="ProductImageNameTextBox" runat="server" placeholder="Product Image Name"></asp:TextBox><br />
            <br />
            <asp:TextBox ID="ProductThumbnailNameTextBox" runat="server" placeholder="Product Thumbnail Name"></asp:TextBox><br />
            <br />

            <asp:Button ID="btnInsert" runat="server" Text="Insert a New Product"
                OnClick="btnInsert_Click" /><br />
            <br />
            <br />
            <asp:Label ID="Message" runat="server" Text="" /><br />
        </aside>

        <section>
            All Products<br />
            <br />
            <asp:Table ID="ProductsTable" runat="server" CssClass="table">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Product ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Product Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Category ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Category Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Description</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Inventory Amount</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Cost</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Price</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Weight</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Image</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Thumbnail</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </section>
    </div>
</asp:Content>
