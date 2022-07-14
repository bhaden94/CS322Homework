﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace BradyHaden.Database
{
    public static class DatabaseUtility
    {
        private static string ImagePath = "/Images/db-product-images/";
        private static string ThumbnailPath = "/Images/db-thumbnail-images/";

        /*
         * Opens a SQL connection and creates a stored procedure commands
         * returns: The SQL Command
         */
        public static SqlCommand CreateStoredProcedureCommand(SqlConnection con, string storedProcedureName)
        {
            SqlCommand cmd = new SqlCommand(storedProcedureName, con);
            cmd.CommandType = CommandType.StoredProcedure;
            return cmd;
        }

        /*
         * Opens a SQL connection
         */
        public static SqlConnection CreateSqlConnection(string connectionString)
        {
            return new SqlConnection(connectionString);
        }

        /*
         * Closes the open SQL connection
         */
        public static void CloseSqlConnection(SqlConnection con)
        {
            con.Close();
        }

        /*
         * Creates a table cell when passed in the reader object and column name
         */
        public static TableCell CreateTablCell(SqlDataReader reader, string columnName)
        {
            TableCell tableCell = new TableCell();
            tableCell.Text = reader[columnName].ToString();
            return tableCell;
        }

        public static void GenerateProductTableRows(SqlDataReader reader, Table ProductTable)
        {
            while (reader.Read())
            {
                TableRow tempRow = new TableRow();

                // id column
                TableCell idCell = CreateTablCell(reader, "Id");

                // name column
                TableCell nameCell = CreateTablCell(reader, "productName");

                // category Id column
                TableCell categoryIdCell = CreateTablCell(reader, "categoryId");

                // category name column
                TableCell categoryNameCell = CreateTablCell(reader, "categoryName");

                // description column
                TableCell descriptionCell = CreateTablCell(reader, "description");

                // inventory amount column
                TableCell inventoryCell = CreateTablCell(reader, "inventoryAmount");

                // cost column
                TableCell costCell = CreateTablCell(reader, "cost");

                // price column
                TableCell priceCell = CreateTablCell(reader, "price");
                priceCell.Text = priceCell.Text.Substring(0, priceCell.Text.IndexOf('.') + 3);


                // weight column
                TableCell weightCell = CreateTablCell(reader, "weight");

                // image column
                TableCell imageCell = new TableCell();
                Image ProdPicture = new Image();
                ProdPicture.Width = 100;
                ProdPicture.Height = 100;
                ProdPicture.ImageUrl = String.Format(ImagePath + "{0}" + ".jpg", reader["image"].ToString());
                imageCell.Controls.Add(ProdPicture);

                // thumbnail column
                TableCell thumbnailCell = new TableCell();
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
                ProductTable.Rows.Add(tempRow);
            }
        }
    }
}