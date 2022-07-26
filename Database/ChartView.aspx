<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChartView.aspx.cs" Inherits="BradyHaden.Database.ChartView" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BradyHaden %>" SelectCommand="SELECT TOP 3 productName, price FROM [products] ORDER BY [price] DESC"></asp:SqlDataSource>
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
    <series>
        <asp:Series Name="Series1" XValueMember="productName" YValueMembers="price">
        </asp:Series>
    </series>
    <chartareas>
        <asp:ChartArea Name="ChartArea1">
        </asp:ChartArea>
    </chartareas>
</asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BradyHaden %>" SelectCommand="SELECT TOP 3 sub.revenue, sub.productName FROM (  
  SELECT SUM(price - cost) as revenue, [productName] FROM [products] GROUP BY productName
) sub
ORDER BY sub.revenue desc"></asp:SqlDataSource>
    <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2">
        <series>
            <asp:Series Name="Series1" XValueMember="productName" YValueMembers="revenue">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
</asp:Content>
