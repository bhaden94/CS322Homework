<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BradyHaden.Database.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="header">
        <asp:Image ID="Hw4Image" runat="server" CssClass="header-img" ImageUrl="../images/hw6-shop-bg.jpg" />
        <h1 class="header-text">Gardening Shop</h1>
    </div>
    <ul>
        <li><a runat="server" href="~/DisplayCategories">DisplayCategories</a></li>
        <li><a runat="server" href="~/DisplayProducts">DisplayProducts</a></li>
        <li><a runat="server" href="~/DeleteProducts">DeleteProducts</a></li>
        <li><a runat="server" href="~/InsertProducts">InsertProducts</a></li>
        <li><a runat="server" href="~/UpdateProducts">UpdateProducts</a></li>
    </ul>
</asp:Content>
