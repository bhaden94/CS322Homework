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
    public partial class InsertProducts : System.Web.UI.Page
    {
        private string CS;

        protected void Page_Load(object sender, EventArgs e)
        {
            CS = WebConfigurationManager.ConnectionStrings["BradyHaden"].ConnectionString;
            if (!Page.IsPostBack)
            {
                ShowProductTable();
            }
            else
            {
                DatabaseUtility.ClearTableFromIndex(ProductsTable, 1);
                ShowProductTable();
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            if ((ProductIdTextBox.Text == null) || (ProductIdTextBox.Text == "") ||
                  (ProductNameTextBox.Text == null) || (ProductNameTextBox.Text == "") ||
                  (CategoryIdTextBox.Text == null) || (CategoryIdTextBox.Text == "") ||
                  (CategoryNameTextBox.Text == null) || (CategoryNameTextBox.Text == "") ||
                  (DescriptionTextBox.Text == null) || (DescriptionTextBox.Text == "") ||
                  (InventoryTextBox.Text == null) || (InventoryTextBox.Text == "") ||
                  (CostTextBox.Text == null) || (CostTextBox.Text == "") ||
                  (PriceTextBox.Text == null) || (PriceTextBox.Text == "") ||
                  (WeightTextBox.Text == null) || (WeightTextBox.Text == "") ||
                  (ProductImageNameTextBox.Text == null) || (ProductImageNameTextBox.Text == "") ||
                  (ProductThumbnailNameTextBox.Text == null) || (ProductThumbnailNameTextBox.Text == ""))
            {
                Message.Text =
                   "You can't leave the selection blank or empty";
            }
            else
            {
                InsertProduct();
            }
            ShowProductTable();
        }

        private void ShowProductTable()
        {
            DatabaseUtility.ClearTableFromIndex(ProductsTable, 1);
            SqlConnection con = DatabaseUtility.CreateSqlConnection(CS);
            SqlCommand cmd = DatabaseUtility.CreateStoredProcedureCommand(con, "GetAllProducts");
            SqlDataReader reader;

            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                DatabaseUtility.GenerateProductTableRows(reader, ProductsTable);
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

        private void InsertProduct()
        {
            string[] parameterList = 
            {
                "@productId",
                "@productName",
                "@categoryId",
                "@categoryName",
                "@description",
                "@inventoryAmount",
                "@cost",
                "@price",
                "@weight",
                "@image",
                "@thumbnail"
            };
            TextBox[] textBoxList =
            {
                ProductIdTextBox,
                ProductNameTextBox,
                CategoryIdTextBox,
                CategoryNameTextBox,
                DescriptionTextBox,
                InventoryTextBox,
                CostTextBox,
                PriceTextBox,
                WeightTextBox,
                ProductImageNameTextBox,
                ProductThumbnailNameTextBox
            };
            SqlConnection con = DatabaseUtility.CreateSqlConnection(CS);
            SqlCommand cmd = DatabaseUtility.CreateStoredProcedureCommand(con, "InsertProduct");

            for (int i = 0; i < parameterList.Length; i++)
            {
                cmd.Parameters.AddWithValue(parameterList[i], textBoxList[i].Text);
            }

            int valueReturned = 0;
            try
            {
                con.Open();
                valueReturned = cmd.ExecuteNonQuery();
                Message.Text = valueReturned.ToString() + " record inserted.";
            }
            catch (Exception err)
            {
                Message.Text = "Error reading list of categories. <br />";
                Message.Text += err.Message + "<br />" + valueReturned;
                if (con.State.ToString() == "Open")
                {
                    con.Close();
                    Message.Text += "The Connection is now" + con.State.ToString();
                }
            }
            finally
            {
            }
        }
    }
}