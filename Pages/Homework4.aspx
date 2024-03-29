﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homework4.aspx.cs" Inherits="BradyHaden.Pages.Homework4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="header">
        <asp:Image ID="Hw4Image" runat="server" CssClass="header-img" ImageUrl="../images/hw4-garden-bg.jpg" />
        <h1 class="header-text">All About Gardening</h1>
    </div>

    <div class="video-section">
        <iframe
            width="100%"
            height="600"
            src="https://www.youtube.com/embed/B0DrWAUsNSc" title="Gardening 101: how to start a garden"
            rameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen="true"></iframe>
        <h2>Included in the above video:</h2>
        <ul>
            <li><a target="_blank" href="https://youtu.be/B0DrWAUsNSc?t=51">Step 1 - pick a location</a></li>
            <li><a target="_blank" href="https://youtu.be/B0DrWAUsNSc?t=98">Step 2 - what to grow</a></li>
            <li><a target="_blank" href="https://youtu.be/B0DrWAUsNSc?t=156">Step 3 - buying seeds</a></li>
            <li><a target="_blank" href="https://youtu.be/B0DrWAUsNSc?t=200">Step 4 - starting seeds</a></li>
            <li><a target="_blank" href="https://youtu.be/B0DrWAUsNSc?t=260">Step 5 - preparing garden space</a></li>
            <li><a target="_blank" href="https://youtu.be/B0DrWAUsNSc?t=380">Step 6 (optional) - start a compost pile</a></li>
            <li><a target="_blank" href="https://youtu.be/B0DrWAUsNSc?t=436">Step 7 - planting</a></li>
            <li><a target="_blank" href="https://youtu.be/B0DrWAUsNSc?t=500">Step 8 - caring for your garden</a></li>
            <li><a target="_blank" href="https://youtu.be/B0DrWAUsNSc?t=669">Step 9 - harvest and preserve</a></li>
            <li><a target="_blank" href="https://youtu.be/B0DrWAUsNSc?t=790">Step 10 - prepare for winter</a></li>
        </ul>
    </div>

    <div class="dynamic-content">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <h2>
                    <asp:Label ID="UpdatePanelHeader" CssClass="update-panel-label" runat="server">Vegetable Garden</asp:Label></h2>
                <div class="grid-container">
                    <asp:Image ID="UpdatePanelImage" CssClass="grid-image" runat="server" ImageUrl="../Images/hw4-veg-garden.jpg" />
                    <div class="grid-text">
                        <h3 id="GardenListTitle" runat="server">Plants in a Vegetable Garden</h3>
                        <asp:BulletedList ID="GardenList" runat="server">
                            <asp:ListItem>Tomatoes</asp:ListItem>
                            <asp:ListItem>Lettuce</asp:ListItem>
                            <asp:ListItem>Peppers</asp:ListItem>
                            <asp:ListItem>Potatoes</asp:ListItem>
                        </asp:BulletedList>
                    </div>
                    <asp:Button ID="Button1" CssClass="grid-button btn btn-primary" runat="server" Text="Next Garden" OnClick="UpdateDynamicPanel" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

    <div class="hw4-table">
        <asp:Table CssClass="table" ID="yourId" runat="server">
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

    <div class="dynamic-form">
        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div id="FormDiv" runat="server" class="form-div">
                    <div id="FormInput" runat="server">
                        <asp:Label ID="EmailLabel" AssociatedControlID="EmailTextBox" runat="server">Email:&nbsp;</asp:Label>
                        <asp:TextBox ID="EmailTextBox" TextMode="Email" runat="server"></asp:TextBox>
                        <br />
                        <asp:ImageButton ID="Hw4ImageButton" runat="server"
                            AlternateText="Submit Image Button"
                            ImageUrl="../Images/hw4-btn-image.png"
                            CssClass="hw4-btn-image"
                            OnClick="Hw4ImageButton_Click" />
                    </div>
                    <br />
                    <asp:Label ID="EmailListResults" runat="server"></asp:Label>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

</asp:Content>
