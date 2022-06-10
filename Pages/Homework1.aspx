<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homework1.aspx.cs" Inherits="BradyHaden.Pages.Homework1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="gardening-page">
        <img src="../images/garden-bg.jpg" alt="Beautiful garden picture" class="gardening-bg" />
        
        <h1>Gardening</h1>

        <h2>Plants</h2>
            <ul>
                <li>Plant 1</li>
                <li>Plant 2</li>
                <li>Plant 3</li>
                <li>Plant 4</li>
                <li>Plant 5</li>
            </ul>
        <h2>Supplies</h2>
            <ul>
                <li>Supply 1</li>
                <li>Supply 2</li>
            </ul>
        <h2>Tools</h2>
            <ul>
                <li>Tool 1</li>
                <li>Tool 2</li>
            </ul>

        <a runat="server" href="~/">Back to Home</a>
    </div>
</asp:Content>
