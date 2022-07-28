<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChartView.aspx.cs" Inherits="BradyHaden.Database.ChartView" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Highest Priced Products</h2>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BradyHaden %>" SelectCommand="SELECT TOP 3 productName, price, description FROM [products] ORDER BY [price] DESC"></asp:SqlDataSource>
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="480px">
        <Series>
            <asp:Series Name="Series1" XValueMember="productName" YValueMembers="price">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>

    <div style="float: right">
        <span>This chart shows the highest priced products we currently sell.</span>

        <ul>
            <asp:Repeater runat="server" ID="Repeater1" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <li>$<%# Eval("price") %> - <%# Eval("productName") %> - <%# Eval("description") %></li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>

    <h2>Most Revenue Generating Products</h2>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BradyHaden %>" SelectCommand="SELECT TOP 3 sub.revenue, sub.productName FROM (  
  SELECT SUM(price - cost) as revenue, [productName] FROM [products] GROUP BY productName
) sub
ORDER BY sub.revenue desc"></asp:SqlDataSource>
    <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" OnLoad="Chart2_Load" Width="480px">
        <Series>
            <asp:Series Name="Series1" XValueMember="productName" YValueMembers="revenue" ChartType="Doughnut">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>

    <div style="float: right">
        <span>This chart shows the top three revenue generating items.</span>

        <ul>
            <asp:Repeater runat="server" ID="Repeater2" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <li>$<%# Eval("revenue") %> - <%# Eval("productName") %></li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
</asp:Content>
