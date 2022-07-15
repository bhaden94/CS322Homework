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
    public partial class DisplayProducts : System.Web.UI.Page
    {
        private string CS;
        private string ImagePath = "/Images/db-product-images/";
        private string ThumbnailPath = "/Images/db-thumbnail-images/";

        protected void Page_Load(object sender, EventArgs e)
        {
            CS = WebConfigurationManager.ConnectionStrings["BradyHaden"].ConnectionString;
            if (!Page.IsPostBack)
            {
                ShowProdcutsTable();
            }
            else
            {
                DatabaseUtility.ClearTableFromIndex(ProductsTable, 1);
                ShowProdcutsTable();
            }
        }

        private void ShowProdcutsTable()
        {
            //ProductsTable.Controls.Clear();
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
                //Message.Text += "The Connection is now" + con.State.ToString();
            }
        }
    }
}