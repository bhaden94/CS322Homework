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
    public partial class UpdateProducts : System.Web.UI.Page
    {
        private string CS;
        protected void Page_Load(object sender, EventArgs e)
        {
            CS = WebConfigurationManager.ConnectionStrings["BradyHaden"].ConnectionString;
            if (!Page.IsPostBack)
            {
                ShowProductList();
            }
            else
            {
                if (ProductListDropDown.SelectedValue == "0")
                {
                    ProductListDropDown.Items.Clear();
                    ShowProductList();
                }
            }
        }

        private void ShowProductList()
        {
            SqlConnection con = DatabaseUtility.CreateSqlConnection(CS);
            SqlCommand cmd = DatabaseUtility.CreateStoredProcedureCommand(con, "GetAllProducts");
            SqlDataReader readerSelect;
            try
            {
                con.Open();
                readerSelect = cmd.ExecuteReader();
                DatabaseUtility.GenerateProductDropDownList(readerSelect, ProductListDropDown);
                readerSelect.Close();
                DatabaseUtility.CloseSqlConnection(con);
            }
            catch (Exception err)
            {
                ProductLabel.Text = "Error reading list of products. <br />";
                ProductLabel.Text += err.Message + "<br />";
                if (con.State.ToString() == "Open")
                {
                    DatabaseUtility.CloseSqlConnection(con);
                    ProductLabel.Text += "The Connection is now" + con.State.ToString();
                }
            }
        }

        protected void ProductButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = DatabaseUtility.CreateSqlConnection(CS);
            string commandText = "SELECT * FROM products WHERE Id=" + ProductListDropDown.SelectedValue;
            SqlCommand cmd = new SqlCommand(commandText, con);
            SqlDataReader reader;

            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    ProductID.Text = reader[ProductColumn.Id.ToString()].ToString();
                    ProductName.Text = reader[ProductColumn.productName.ToString()].ToString();
                    CategoryId.Text = reader[ProductColumn.categoryId.ToString()].ToString();
                    CategoryName.Text = reader[ProductColumn.categoryName.ToString()].ToString();
                    Description.Text = reader[ProductColumn.description.ToString()].ToString();
                    InventoryAmount.Text = reader[ProductColumn.inventoryAmount.ToString()].ToString();
                    Cost.Text = reader[ProductColumn.cost.ToString()].ToString();
                    Price.Text = reader[ProductColumn.price.ToString()].ToString();
                    Weight.Text = reader[ProductColumn.weight.ToString()].ToString();
                    ImageName.Text = reader[ProductColumn.image.ToString()].ToString();
                    ImageThumbnailName.Text = reader[ProductColumn.thumbnail.ToString()].ToString();
                }
                reader.Close();
                DatabaseUtility.CloseSqlConnection(con);
            }
            catch (Exception err)
            {
                ProductLabel.Text = "Error reading list of products. <br />";
                ProductLabel.Text += err.Message + "<br />";
                if (con.State.ToString() == "Open")
                {
                    DatabaseUtility.CloseSqlConnection(con);
                    ProductLabel.Text += "The Connection is now" + con.State.ToString();
                }
            }
        }

        protected void UpdateProductButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = DatabaseUtility.CreateSqlConnection(CS);
            SqlCommand cmd = DatabaseUtility.CreateStoredProcedureCommand(con, "UpdateProducts");
            // Add all parameters
            cmd.Parameters.Add("@productId", System.Data.SqlDbType.Int);
            cmd.Parameters.Add("@productName", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@categoryId", System.Data.SqlDbType.Int);
            cmd.Parameters.Add("@categoryName", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@description", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@inventoryAmount", System.Data.SqlDbType.Int);
            cmd.Parameters.Add("@cost", System.Data.SqlDbType.Decimal);
            cmd.Parameters.Add("@price", System.Data.SqlDbType.Money);
            cmd.Parameters.Add("@weight", System.Data.SqlDbType.Float);
            cmd.Parameters.Add("@image", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@thumbnail", System.Data.SqlDbType.NVarChar);

            // assign value
            cmd.Parameters["@productId"].Value = ProductID.Text;
            cmd.Parameters["@productName"].Value = ProductName.Text;
            cmd.Parameters["@categoryId"].Value = CategoryId.Text;
            cmd.Parameters["@categoryName"].Value = CategoryName.Text;
            cmd.Parameters["@description"].Value = Description.Text;
            cmd.Parameters["@inventoryAmount"].Value = InventoryAmount.Text;
            cmd.Parameters["@cost"].Value = Cost.Text;
            cmd.Parameters["@price"].Value = Price.Text;
            cmd.Parameters["@weight"].Value = Weight.Text;
            cmd.Parameters["@image"].Value = ImageName.Text;
            cmd.Parameters["@thumbnail"].Value = ImageThumbnailName.Text;

            try
            {
                con.Open();
                int returnedValue = cmd.ExecuteNonQuery();
                QueryReturnLabel.Text = returnedValue + " rows effected.";
                DatabaseUtility.CloseSqlConnection(con);
            }
            catch (Exception err)
            {
                QueryReturnLabel.Text = "There was an error: " + err.Message;
                DatabaseUtility.CloseSqlConnection(con);
            }
        }
    }
}