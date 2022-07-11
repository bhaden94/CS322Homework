using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BradyHaden.Database
{
    public static class DatabaseUtility
    {
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
    }
}