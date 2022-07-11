using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BradyHaden.Database
{
    public partial class DisplayCategories : System.Web.UI.Page
    {
        private string CS;
        private string ImagePath = "/Images/db-category-images/";

        protected void Page_Load(object sender, EventArgs e)
        {
            CS = WebConfigurationManager.ConnectionStrings["BradyHaden"].ConnectionString;
            if (!Page.IsPostBack)
            {
                ShowCategoryTable();
            }
            else
            {
                for (int i = 1; i < CategoryTable.Rows.Count; i++)
                {
                    CategoryTable.Rows.RemoveAt(i);
                }
                ShowCategoryTable();
            }
        }

        private void ShowCategoryTable()
        {
            CategoryTable.Controls.Clear();
            SqlConnection con = DatabaseUtility.CreateSqlConnection(CS);
            SqlCommand cmd = DatabaseUtility.CreateStoredProcedureCommand(con, "GetAllCategories");
            SqlDataReader reader;
            TableCell idCell, nameCell, descriptionCell, imageCell, thumbnailCell;

            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    TableRow tempRow = new TableRow();

                    // id column
                    idCell = new TableCell();
                    idCell.Text = reader["Id"].ToString();

                    // name column
                    nameCell = new TableCell();
                    nameCell.Text = reader["name"].ToString();

                    // description column
                    descriptionCell = new TableCell();
                    descriptionCell.Text = reader["description"].ToString();

                    // image column
                    imageCell = new TableCell();
                    Image CatPicture = new Image();
                    CatPicture.Width = 100;
                    CatPicture.Height = 100;
                    CatPicture.ImageUrl = String.Format(ImagePath + "{0}" + ".jpg", reader["image"].ToString());
                    imageCell.Controls.Add(CatPicture);

                    // thumbnail column
                    thumbnailCell = new TableCell();
                    Image CatThumb = new Image();
                    CatThumb.Width = 50;
                    CatThumb.Height = 50;
                    CatThumb.ImageUrl = String.Format(ImagePath + "{0}" + ".jpg", reader["thumbnail"].ToString());
                    thumbnailCell.Controls.Add(CatThumb);

                    // add all columns to row
                    tempRow.Cells.Add(idCell);
                    tempRow.Cells.Add(nameCell);
                    tempRow.Cells.Add(descriptionCell);
                    tempRow.Cells.Add(imageCell);
                    tempRow.Cells.Add(thumbnailCell);

                    // add row to table
                    CategoryTable.Rows.Add(tempRow);
                }
                reader.Close();
                con.Close();
            }
            catch (Exception err)
            {
                Message.Text = "Error reading list of categories. <br />";
                Message.Text += err.Message + "<br />";
            }
            finally
            {
                DatabaseUtility.CloseSqlConnection(con);
                Message.Text += "The Connection is now" + con.State.ToString();
            }
        }
    }
}