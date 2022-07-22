<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BradyHaden.Database.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="header">
        <asp:Image ID="Hw4Image" runat="server" CssClass="header-img" ImageUrl="../images/hw6-shop-bg.jpg" />
        <h1 class="header-text">Gardening Shop</h1>
    </div>
    <ul>
        <li><a runat="server" href="~/Database/DisplayCategories">DisplayCategories</a></li>
        <li><a runat="server" href="~/Database/DisplayProducts">DisplayProducts</a></li>
        <li><a runat="server" href="~/Database/DeleteProducts">DeleteProducts</a></li>
        <li><a runat="server" href="~/Database/InsertProducts">InsertProducts</a></li>
        <li><a runat="server" href="~/Database/UpdateProducts">UpdateProducts</a></li>
        <li><a runat="server" href="~/Database/ProductGridView">ProductGridView</a></li>
    </ul>
</asp:Content>
