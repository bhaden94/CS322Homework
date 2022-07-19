<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateProducts.aspx.cs" Inherits="BradyHaden.Database.UpdateProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="ProductsGridView"
        DataSourceID="ProductsSqlDataSource"
        OnRowUpdating="ProductsGridView_RowUpdating"
        runat="server">

        <asp:TemplateField headertext="Category Name">

            <itemtemplate>
                <%#Eval("categoryName")%>
            </itemtemplate>

            <edititemtemplate>
                <asp:DropDownList id="CategorNameDropDown"
                    SelectedValue='<%#Eval("categoryName")%>'
                    runat="server">
                    <asp:ListItem>seeds</asp:ListItem>
                    <asp:ListItem>tools</asp:ListItem>
                    <asp:ListItem>supplies</asp:ListItem>
                </asp:DropDownList>
            </edititemtemplate>
        </asp:TemplateField>

    </asp:GridView>
    <asp:SqlDataSource ID="Sqldatasource1"
        SelectCommand="select * from products"
        UpdateCommand="UPDATE products SET … WHERE id = @id"
        ConnectionString="<%$ ConnectionStrings:BradyHaden %>"
        runat="server"></asp:SqlDataSource>

</asp:Content>
