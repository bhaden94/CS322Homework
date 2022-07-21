<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateProducts.aspx.cs" Inherits="BradyHaden.Database.UpdateProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Choose a Product to Update</h2>
    <br />
    <asp:DropDownList ID="ProductListDropDown" runat="server"></asp:DropDownList>
    <asp:Button ID="ProductButton" runat="server" Text="Choose a Product" OnClick="ProductButton_Click" />
    <br />
    <br />
    <asp:Label ID="ProductLabel" runat="server" Text=""></asp:Label>
    <br />
    <asp:TextBox ID="ProductID" runat="server"></asp:TextBox><br />
    <asp:TextBox ID="ProductName" runat="server"></asp:TextBox><br />
    <asp:TextBox ID="CategoryId" runat="server"></asp:TextBox><br />
    <asp:TextBox ID="CategoryName" runat="server"></asp:TextBox><br />
    <asp:TextBox ID="Description" runat="server"></asp:TextBox><br />
    <asp:TextBox ID="InventoryAmount" runat="server"></asp:TextBox><br />
    <asp:TextBox ID="Cost" runat="server"></asp:TextBox><br />
    <asp:TextBox ID="Price" runat="server"></asp:TextBox><br />
    <asp:TextBox ID="Weight" runat="server"></asp:TextBox><br />
    <asp:TextBox ID="ImageName" runat="server"></asp:TextBox><br />
    <asp:TextBox ID="ImageThumbnailName" runat="server"></asp:TextBox><br />
    <br />
    <asp:Button ID="UpdateProductButton" runat="server" Text="UpdateProduct" OnClick="UpdateProductButton_Click" />
    <br />
    <br />
    <asp:Label ID="QueryReturnLabel" runat="server" Text=""></asp:Label>
</asp:Content>
