<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homework4.aspx.cs" Inherits="BradyHaden.Pages.Homework4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="header">
        <asp:Image ID="Hw4Image" runat="server" CssClass="header-img" ImageUrl="../images/hw4-garden-bg.jpg" />
        <h1 class="header-text">All About Gardening</h1>
    </div>

    <div class="video">
        <%--Youtube video - https://www.youtube.com/watch?v=B0DrWAUsNSc&ab_channel=SSLFamilyDad--%>
        <%--Show bulleted list with steps outlined in video--%>
        <%--Add hyperlink to time for each step--%>
        <%--Step 1 - pick a location @ 51 seconds--%>
        <%--Step 2 - what to grow @ 1:38--%>
        <%--Step 3 - buying seeds @ 2:36--%>
        <%--step 4 - starting seeds @ 3:20--%>
        <%--step 5 - preparing garden space @ 4:20--%>
        <%--step 6 (optional) - start a compost pile @ 6:20--%>
        <%--step 7 - planting @ 7:16--%>
        <%--step 8 - Caring for your garden @ 8:20--%>
        <%--step 9 - harvest and preserve @ 11:09--%>
        <%--step 10 - prepare for winter @ 13:10--%>
    </div>

    <div class="zig-zag-content">
        <asp:Panel ID="Panel1" runat="server" CssClass="left-content-panel" ScrollBars="Both">
            <asp:Image runat="server" />
            <asp:Label ID="Label1" runat="server">Label1</asp:Label>
            <asp:TextBox runat="server"></asp:TextBox>
        </asp:Panel>

        <asp:Panel ID="Panel2" runat="server" CssClass="right-content-panel" ScrollBars="Both">
            <asp:Image runat="server" />
            <asp:Label ID="Label2" runat="server">Label2</asp:Label>
            <asp:TextBox runat="server"></asp:TextBox>
        </asp:Panel>

        <asp:Panel ID="Panel3" runat="server" CssClass="left-content-panel" ScrollBars="Both">
            <asp:Image runat="server" />
            <asp:Label ID="Label3" runat="server">Label3</asp:Label>
            <asp:TextBox runat="server"></asp:TextBox>
        </asp:Panel>
    </div>

    <div class="hw4-table">
        <asp:Table CssClass="table table-striped table-bordered" ID="yourId" runat="server">
            <asp:TableHeaderRow TableSection="TableHeader">
                <asp:TableCell>Flower</asp:TableCell>
                <asp:TableCell>Start Seeds Indoors (Weeks Before Last Frost Date)</asp:TableCell>
                <asp:TableCell>Plant Outdoors</asp:TableCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>Anise Hyssop</asp:TableCell>
                <asp:TableCell>8-10 weeks</asp:TableCell>
                <asp:TableCell>On last frost date</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Asclepias (Milkweed)</asp:TableCell>
                <asp:TableCell>10-12 weeks</asp:TableCell>
                <asp:TableCell>1-2 weeks after last frost</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Catmint</asp:TableCell>
                <asp:TableCell>8-10 weeks</asp:TableCell>
                <asp:TableCell>On last frost date</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><a href="https://www.almanac.com/plant/columbine">Columbine</a></asp:TableCell>
                <asp:TableCell>8-10 weeks</asp:TableCell>
                <asp:TableCell>On last frost date</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Coreopsis</asp:TableCell>
                <asp:TableCell>8-10 weeks</asp:TableCell>
                <asp:TableCell>On last frost date</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Daisy</asp:TableCell>
                <asp:TableCell>10-12 weeks</asp:TableCell>
                <asp:TableCell>1-2 weeks before last frost</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><a href="https://www.almanac.com/plant/delphiniums">Delphinium (perennial)</a></asp:TableCell>
                <asp:TableCell>10-12 weeks</asp:TableCell>
                <asp:TableCell>1-2 weeks before last frost</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Dianthus</asp:TableCell>
                <asp:TableCell>10-12 weeks</asp:TableCell>
                <asp:TableCell>1-2 weeks before last frost</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><a href="https://www.almanac.com/plant/coneflowers">Echinacea (Coneflower)</a></asp:TableCell>
                <asp:TableCell>8-10 weeks</asp:TableCell>
                <asp:TableCell>On last frost date</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><a href="https://www.almanac.com/plant/foxglove">Foxglove (Digitalis)</a></asp:TableCell>
                <asp:TableCell>10-12 weeks</asp:TableCell>
                <asp:TableCell>1-2 weeks after last frost</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Gaillardia</asp:TableCell>
                <asp:TableCell>8-10 weeks</asp:TableCell>
                <asp:TableCell>On last frost date</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Helianthus</asp:TableCell>
                <asp:TableCell>8-10 weeks</asp:TableCell>
                <asp:TableCell>On last frost date</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Heliopsis</asp:TableCell>
                <asp:TableCell>10-12 weeks</asp:TableCell>
                <asp:TableCell>1-2 weeks after last frost</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><a href="https://www.almanac.com/plant/hibiscus">Hibiscus</a></asp:TableCell>
                <asp:TableCell>8-10 weeks</asp:TableCell>
                <asp:TableCell>1-2 weeks after last frost</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Hollyhock</asp:TableCell>
                <asp:TableCell>8-10 weeks</asp:TableCell>
                <asp:TableCell>On last frost date</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><a href="https://www.almanac.com/plant/bee-balm">Monarda (Bee Balm)</a></asp:TableCell>
                <asp:TableCell>8-10 weeks</asp:TableCell>
                <asp:TableCell>On last frost date</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><a href="https://www.almanac.com/plant/phlox">Phlox (perennial)</a></asp:TableCell>
                <asp:TableCell>10-12 weeks</asp:TableCell>
                <asp:TableCell>1-2 weeks after last frost</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><a href="https://www.almanac.com/plant/black-eyed-susans">Rudbeckia (Black-Eyed Susan)</a></asp:TableCell>
                <asp:TableCell>8-10 weeks</asp:TableCell>
                <asp:TableCell>1-2 weeks before last frost</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><a href="https://www.almanac.com/plant/thyme">Thyme</a></asp:TableCell>
                <asp:TableCell>8-10 weeks</asp:TableCell>
                <asp:TableCell>On last frost date</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Viola</asp:TableCell>
                <asp:TableCell>8-10 weeks</asp:TableCell>
                <asp:TableCell>1-2 weeks before last frost</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><a href="https://www.almanac.com/plant/yarrow">Yarrow</a></asp:TableCell>
                <asp:TableCell>8-10 weeks</asp:TableCell>
                <asp:TableCell>On last frost date</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
</asp:Content>
