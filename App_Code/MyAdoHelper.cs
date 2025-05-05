using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// Summary description for MyAdoHelper
/// SQL SERVER
///  App_Data 

public class MyAdoHelper
{
    public MyAdoHelper()
    {

    }

    public static SqlConnection ConnectToDb(string fileName)
    {
        string path = HttpContext.Current.Server.MapPath("App_Data/");
        path += fileName;
        // to add here the connection string
        string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\orrkn\source\repos\cubingSite\App_Data\Database.mdf;Integrated Security=True";

        SqlConnection conn = new SqlConnection(connString);
        return conn;

    }

    /// To Execute update / insert / delete queries
    public static void DoQuery(string fileName, string sql)
    {

        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlCommand com = new SqlCommand(sql, conn);
        com.ExecuteNonQuery();
        com.Dispose();
        conn.Close();
    }

    /// To Execute update / insert / delete queries
    public static int RowsAffected(string fileName, string sql)
    {
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlCommand com = new SqlCommand(sql, conn);
        int rowsA = com.ExecuteNonQuery();
        conn.Close();
        return rowsA;
    }

    // called by RowsAffected
    public static void ExecuteNonQuery(string fileName, string sql)
    {
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlCommand command = new SqlCommand(sql, conn);
        command.ExecuteNonQuery();
        conn.Close();
    }

    /// To check if data exisits in the database
    public static bool IsExist(string fileName, string sql)
    {
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlCommand com = new SqlCommand(sql, conn);
        SqlDataReader data = com.ExecuteReader();
        bool found;
        found = (bool)data.Read();
        conn.Close();
        return found;
    }

    // returns an object of dataTable by the query sql
    public static DataTable ExecuteDataTable(string fileName, string sql)
    {
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlDataAdapter tableAdapter = new SqlDataAdapter(sql, conn);
        DataTable dt = new DataTable();
        tableAdapter.Fill(dt);
        return dt;
    }

    // returns a string that prints out the table from the query sql
    public static string printDataTable(string fileName, string sql)
    {
        DataTable dt = ExecuteDataTable(fileName, sql);

        string printStr = "<table border='1'>";

        foreach (DataRow row in dt.Rows)
        {
            printStr += "<tr>";
            foreach (object myItemArray in row.ItemArray)
            {
                printStr += "<td>" + myItemArray.ToString() + "</td>";
            }
            printStr += "</tr>";
        }
        printStr += "</table>";
        return printStr;
    }

}