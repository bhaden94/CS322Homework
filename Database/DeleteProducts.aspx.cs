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
                    DatabaseUtility.ClearTableFromIndex(ProductsTable, 1);
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