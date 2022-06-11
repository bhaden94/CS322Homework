<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homework1.aspx.cs" Inherits="BradyHaden.Pages.Homework1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="gardening-page">
        <div class="header">
            <div class="header-img"></div>
            <h1 class="header-text">Gardening</h1>
        </div>
        
        <h2>Plants</h2>
            <ul>
                <li>
                    <p>Sunflower</p>
                    <img src="../Images/sunflower.jpg" />
                </li>
                <li>
                    <p>Rose</p>
                    <img src="../Images/rose.jpg" />
                </li>
                <li>
                    <p>Tulip</p>
                    <img src="../Images/tulip.jpg" />
                </li>
                <li>
                    <p>American Merigold</p>
                    <img src="../Images/american-merigold.jpg" />
                </li>
                <li>
                    <p>Lavender</p>
                    <img src="../Images/lavender.jpg" />
                </li>
            </ul>
        <h2>Supplies</h2>
            <ul>
                <li>Soil</li>
                <li>Seeds</li>
                <li>Potting</li>
            </ul>
        <h2>Tools</h2>
            <ul>
                <li>Rake</li>
                <li>Shovel</li>
                <li>Gloves</li>
                <li>Wheelbarrow</li>
            </ul>

        <a runat="server" href="~/">Back to Home</a>
    </div>
</asp:Content>
