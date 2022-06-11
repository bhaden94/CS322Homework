<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homework1.aspx.cs" Inherits="BradyHaden.Pages.Homework1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="gardening-page">
        <div class="header">
            <div class="header-img"></div>
            <h1 class="header-text">Gardening</h1>
        </div>

        <h2>Plants</h2>
        <table class="table">
            <tr>
                <th class="text-center">Sunflower</th>
                <th class="text-center">Rose</th>
                <th class="text-center">Tulip</th>
                <th class="text-center">American Merigold</th>
                <th class="text-center">Lavender</th>
            </tr>
            <tr>
                <td class="text-center"><img src="../Images/sunflower.jpg" alt="sunflower" /></td>
                <td class="text-center"><img src="../Images/rose.jpg" alt="rose" /></td>
                <td class="text-center"><img src="../Images/tulip.jpg" alt="tulip" /></td>
                <td class="text-center"><img src="../Images/american-merigold.jpg" alt="american merigold" /></td>
                <td class="text-center"><img src="../Images/lavender.jpg" alt="lavender " /></td>
            </tr>
        </table>

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
