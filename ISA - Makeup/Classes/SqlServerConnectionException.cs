using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Configuration; //read App.config
using System.Data; //Generic data
using System.Data.SqlClient; //SQL Server
namespace ISA___Makeup.Classes
{
    public class SqlServerConnectionException
    {
        //Attributes 
        //Connection string.
        public static string connectionString = ConfigurationManager.ConnectionStrings["Inventory.Properties.Settings.SYSEXCEPTIONS"].ConnectionString;
        public static SqlConnection connection = new SqlConnection(connectionString);
        //Methods
        ///<sumary>
        ///Opens a connection to a SQL Server database.
        ///</sumary>
        ///<returns></returns
        private static bool Open()
        {
            //variables
            bool connected = true;
            //Check if the connection is already opened.
            if (connection.State != ConnectionState.Open)
            {
                try
                {
                    connection.Open(); //Open connection.
                }
                catch (SqlException ex)
                {
                    connected = false; //couldn't open connection.
                    Console.WriteLine(ex.Message);
                }
            }
            //Return result
            return connected;
        }
        ///<summary>
        ///Executes a query and returns the resulting table.
        /// </summary>
        /// <param name="command">SQL Command</param>
        /// <returns></returns>
        /// 
        public static DataTable ExecuteQuery(SqlCommand command)
        {
            //result table
            DataTable table = new DataTable();
            //Open connection
            if (Open())
            {
                //Assign connection to command
                command.Connection = connection;
                SqlDataAdapter adapter = new SqlDataAdapter(command); //Adapter
                try
                {
                    adapter.Fill(table); //Execute query and fill result table.
                }
                catch (SqlException ex)
                {
                    Console.WriteLine(ex.Message); //For debugging only,
                }
                connection.Close();
            }
            //return table.
            return table;
        }
        public static bool ExecuteNonQuery(SqlCommand command)
        {
            bool executed = false;
            if (Open()) //Open connection to database server.
            {
                command.Connection = connection; //assign connection.
                try
                {
                    int affectedRows = command.ExecuteNonQuery(); //Read affected rows.
                    if (affectedRows > 0) executed = true; //executed.
                }
                catch (SqlException)
                {
                    executed = false;
                }
                connection.Close();
            }
            return executed; //return result.
        }
    }
}