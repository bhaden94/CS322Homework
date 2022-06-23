<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="BradyHaden.Pages.Calendar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Calendar
        ID="MyCalendar"
        runat="server"
        SkinID="MyCalendarSkin"
        OnDayRender="MyCalendar_DayRender"
        OnSelectionChanged="MyCalendar_SelectionChanged" />
    <div class="panel panel-primary">
        <div class="panel-heading">
            <asp:Label ID="MessageHeading" runat="server" CssClass="panel-title"></asp:Label>
        </div>
        <div class="panel-body">
            <asp:Label ID="Message" runat="server"></asp:Label>
        </div>
    </div>

</asp:Content>
