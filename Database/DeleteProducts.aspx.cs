using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BradyHaden.Database
{
    public partial class DeleteProducts : System.Web.UI.Page
    {
        private string CS;
        private string ImagePath = "/Images/db-product-images/";
        private string ThumbnailPath = "/Images/db-thumbnail-images/";

        protected void Page_Load(object sender, EventArgs e)
        {
            CS = WebConfigurationManager.ConnectionStrings["BradyHaden"].ConnectionString;
            if (!Page.IsPostBack)
            {
                ShowProductList();
                ShowProdcutsTable();
            }
            else
            {
                if (ProductListDropDown.SelectedValue == "0")
                {
                    ProductListDropDown.Items.Clear();
                    for (int i = 1; i < ProductsTable.Rows.Count; i++)
                    {
                        ProductsTable.Rows.RemoveAt(i);
                    }
                    ShowProductList();
                    ShowProdcutsTable();
                }
            }
        }

        protected void ProductListDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ProductListDropDown.SelectedValue != "0")
            {
                DeleteProduct();
                ShowProductList();
                ShowProdcutsTable();
            }
        }

        private void DeleteProduct()
        {
            SqlConnection con = DatabaseUtility.CreateSqlConnection(CS);
            SqlCommand cmd = DatabaseUtility.CreateStoredProcedureCommand(con, "DeleteProductById");
            cmd.Parameters.AddWithValue("@ProductID", ProductListDropDown.SelectedValue);
            int valueReturned = 0;
            try
            {
                con.Open();
                valueReturned = cmd.ExecuteNonQuery();
                Message.Text = valueReturned.ToString() + " record deleted.";
            }
            catch (Exception err)
            {
                Message.Text = "Error deleting record " + ProductListDropDown.SelectedValue + "<br />";
                Message.Text += err.Message + "<br />";
                if (con.State.ToString() == "Open")
                {
                    DatabaseUtility.CloseSqlConnection(con);
                    Message.Text += "The Connection is now" + con.State.ToString();
                }
            }
        }

        private void ShowProdcutsTable()
        {
            for (int i = 1; i < ProductsTable.Rows.Count; i++)
            {
                ProductsTable.Rows.RemoveAt(i);
            }
            ProductsTable.Controls.Clear();
            SqlConnection con = DatabaseUtility.CreateSqlConnection(CS);
            SqlCommand cmd = DatabaseUtility.CreateStoredProcedureCommand(con, "GetAllProducts");
            SqlDataReader reader;
            TableCell idCell, nameCell, categoryIdCell, categoryNameCell, descriptionCell,
                inventoryCell, costCell, priceCell, weightCell, imageCell, thumbnailCell;

            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    TableRow tempRow = new TableRow();

                    // id column
                    idCell = DatabaseUtility.CreateTablCell(reader, "Id");

                    // name column
                    nameCell = DatabaseUtility.CreateTablCell(reader, "productName");

                    // category Id column
                    categoryIdCell = DatabaseUtility.CreateTablCell(reader, "categoryId");

                    // category name column
                    categoryNameCell = DatabaseUtility.CreateTablCell(reader, "categoryName");

                    // description column
                    descriptionCell = DatabaseUtility.CreateTablCell(reader, "description");

                    // inventory amount column
                    inventoryCell = DatabaseUtility.CreateTablCell(reader, "inventoryAmount");

                    // cost column
                    costCell = DatabaseUtility.CreateTablCell(reader, "cost");

                    // price column
                    priceCell = DatabaseUtility.CreateTablCell(reader, "price");
                    priceCell.Text = priceCell.Text.Substring(0, priceCell.Text.IndexOf('.') + 3);


                    // weight column
                    weightCell = DatabaseUtility.CreateTablCell(reader, "weight");

                    // image column
                    imageCell = new TableCell();
                    Image ProdPicture = new Image();
                    ProdPicture.Width = 100;
                    ProdPicture.Height = 100;
                    ProdPicture.ImageUrl = String.Format(ImagePath + "{0}" + ".jpg", reader["image"].ToString());
                    imageCell.Controls.Add(ProdPicture);

                    // thumbnail column
                    thumbnailCell = new TableCell();
                    Image ProdThumb = new Image();
                    ProdThumb.Width = 50;
                    ProdThumb.Height = 50;
                    ProdThumb.ImageUrl = String.Format(ThumbnailPath + "{0}" + ".jpg", reader["thumbnail"].ToString());
                    thumbnailCell.Controls.Add(ProdThumb);

                    // add all columns to row
                    tempRow.Cells.Add(idCell);
                    tempRow.Cells.Add(nameCell);
                    tempRow.Cells.Add(categoryIdCell);
                    tempRow.Cells.Add(categoryNameCell);
                    tempRow.Cells.Add(descriptionCell);
                    tempRow.Cells.Add(inventoryCell);
                    tempRow.Cells.Add(costCell);
                    tempRow.Cells.Add(priceCell);
                    tempRow.Cells.Add(weightCell);
                    tempRow.Cells.Add(imageCell);
                    tempRow.Cells.Add(thumbnailCell);

                    // add row to table
                    ProductsTable.Rows.Add(tempRow);
                }
                reader.Close();
                DatabaseUtility.CloseSqlConnection(con);
            }
            catch (Exception err)
            {
                Message.Text = "Error reading list of products. <br />";
                Message.Text += err.Message + "<br />";
            }
            finally
            {
                DatabaseUtility.CloseSqlConnection(con);
                // Message.Text += "The Connection is now" + con.State.ToString();
            }
        }

        private void ShowProductList()
        {
            ProductListDropDown.Items.Clear();
            ListItem firstItem = new ListItem();
            firstItem.Text = "Select a Category";
            firstItem.Value = "0";
            ProductListDropDown.Items.Add(firstItem);
            ProductListDropDown.SelectedIndex = 0;
            SqlConnection con = DatabaseUtility.CreateSqlConnection(CS);
            SqlCommand cmd = DatabaseUtility.CreateStoredProcedureCommand(con, "GetAllProducts");
            SqlDataReader readerSelect;
            try
            {
                con.Open();
                readerSelect = cmd.ExecuteReader();
                while (readerSelect.Read())
                {
                    string id = readerSelect["Id"].ToString();
                    string name = readerSelect["productName"].ToString();
                    ListItem newItem = new ListItem();
                    newItem.Text = id + ". " + name;
                    newItem.Value = id;
                    ProductListDropDown.Items.Add(newItem);
                }
                readerSelect.Close();
                DatabaseUtility.CloseSqlConnection(con);
            }
            catch (Exception err)
            {
                Message.Text = "Error reading list of products. <br />";
                Message.Text += err.Message + "<br />";
                if (con.State.ToString() == "Open")
                {
                    DatabaseUtility.CloseSqlConnection(con);
                    Message.Text += "The Connection is now" + con.State.ToString();
                }
            }
        }
    }
}