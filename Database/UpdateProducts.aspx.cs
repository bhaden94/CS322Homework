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
                    ProductID.Text = reader["Id"].ToString();
                    ProductName.Text = reader["productName"].ToString();
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
    }
}