<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="BradyHaden.Pages.Calendar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Calendar
        ID="MyCalendar"
        runat="server"
        SkinID="MyCalendarSkin"
        OnDayRender="MyCalendar_DayRender"
    />
</asp:Content>
