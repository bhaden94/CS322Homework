<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductGridView.aspx.cs" Inherits="BradyHaden.Database.ProductGridView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="table table-condensed" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-success"></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-warning"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="btn btn-primary"></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" OnClientClick="return confirm('Are you sure you want to delete this entry?');"></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle Width="150px" />
            </asp:TemplateField>
            <asp:BoundField DataField="Id" HeaderText="Product ID" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="productName" HeaderText="Product Name" SortExpression="productName" />
            <asp:TemplateField HeaderText="Category ID" SortExpression="categoryId">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Id" DataValueField="Id" SelectedValue='<%# Bind("categoryId") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BradyHaden %>" SelectCommand="SELECT DISTINCT [Id] FROM [category] ORDER BY [Id]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("categoryId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category Name" SortExpression="categoryName">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="name" SelectedValue='<%# Bind("categoryName") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BradyHaden %>" SelectCommand="SELECT [name] FROM [category] ORDER BY [Id]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("categoryName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
            <asp:TemplateField HeaderText="Inventory Amount" SortExpression="inventoryAmount">
                <EditItemTemplate>
                    <input id="Text1" runat="server" type="number" value='<%# Bind("inventoryAmount") %>' style="width: 70px" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("inventoryAmount") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Cost" SortExpression="cost">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("cost") %>' Style="width: 70px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("cost") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price" SortExpression="price">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("price") %>' Style="width: 70px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Weight" SortExpression="weight">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("weight") %>' Style="width: 70px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("weight") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Image Name" SortExpression="image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("image") %>' Style="width: 70px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("image") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Thumbnail Name" SortExpression="thumbnail">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("thumbnail") %>' Style="width: 70px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("thumbnail") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BradyHaden %>" DeleteCommand="DELETE FROM [products] WHERE [Id] = @Id" InsertCommand="INSERT INTO [products] ([Id], [productName], [categoryId], [categoryName], [description], [inventoryAmount], [cost], [price], [weight], [image], [thumbnail]) VALUES (@Id, @productName, @categoryId, @categoryName, @description, @inventoryAmount, @cost, @price, @weight, @image, @thumbnail)" SelectCommand="SELECT * FROM [products] ORDER BY [Id]" UpdateCommand="UPDATE [products] SET [productName] = @productName, [categoryId] = @categoryId, [categoryName] = @categoryName, [description] = @description, [inventoryAmount] = @inventoryAmount, [cost] = @cost, [price] = @price, [weight] = @weight, [image] = @image, [thumbnail] = @thumbnail WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="productName" Type="String" />
            <asp:Parameter Name="categoryId" Type="Int32" />
            <asp:Parameter Name="categoryName" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="inventoryAmount" Type="Int32" />
            <asp:Parameter Name="cost" Type="Decimal" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="weight" Type="Double" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="thumbnail" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="productName" Type="String" />
            <asp:Parameter Name="categoryId" Type="Int32" />
            <asp:Parameter Name="categoryName" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="inventoryAmount" Type="Int32" />
            <asp:Parameter Name="cost" Type="Decimal" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="weight" Type="Double" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="thumbnail" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
