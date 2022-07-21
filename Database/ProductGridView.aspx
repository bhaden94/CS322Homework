<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductGridView.aspx.cs" Inherits="BradyHaden.Database.ProductGridView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="table">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Product ID" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="productName" HeaderText="Product Name" SortExpression="productName" />
            <asp:BoundField DataField="categoryId" HeaderText="Category ID" SortExpression="categoryId" />
            <asp:BoundField DataField="categoryName" HeaderText="Category Name" SortExpression="categoryName" />
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
            <asp:BoundField DataField="inventoryAmount" HeaderText="Inventory Amount" SortExpression="inventoryAmount" />
            <asp:BoundField DataField="cost" HeaderText="Cost" SortExpression="cost" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:BoundField DataField="weight" HeaderText="Weight" SortExpression="weight" />
            <asp:BoundField DataField="image" HeaderText="Image Name" SortExpression="image" />
            <asp:BoundField DataField="thumbnail" HeaderText="Thumbnail Name" SortExpression="thumbnail" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BradyHaden %>" DeleteCommand="DELETE FROM [products] WHERE [Id] = @Id" InsertCommand="INSERT INTO [products] ([Id], [productName], [categoryId], [categoryName], [description], [inventoryAmount], [cost], [price], [weight], [image], [thumbnail]) VALUES (@Id, @productName, @categoryId, @categoryName, @description, @inventoryAmount, @cost, @price, @weight, @image, @thumbnail)" SelectCommand="SELECT * FROM [products] ORDER BY [Id]" UpdateCommand="UPDATE [products] SET [productName] = @productName, [categoryId] = @categoryId, [categoryName] = @categoryName, [description] = @description, [inventoryAmount] = @inventoryAmount, [cost] = @cost, [price] = @price, [weight] = @weight, [image] = @image, [thumbnail] = @thumbnail WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="productName" Type="String" />
            <asp:Parameter Name="categoryId" Type="Int32" />
            <asp:Parameter Name="categoryName" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="inventoryAmount" Type="Int32" />
            <asp:Parameter Name="cost" Type="Decimal" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="weight" Type="Double" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="thumbnail" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="productName" Type="String" />
            <asp:Parameter Name="categoryId" Type="Int32" />
            <asp:Parameter Name="categoryName" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="inventoryAmount" Type="Int32" />
            <asp:Parameter Name="cost" Type="Decimal" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="weight" Type="Double" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="thumbnail" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
