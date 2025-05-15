using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class timer : System.Web.UI.Page
{

    public int PB;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == "Guest")
        {
            Response.Redirect("register.aspx");
        }

        string uName = Session["user"].ToString();
        string result = MyAdoHelper.printDataTable("database.mdf", "SELCT single FROM [PBs] WHERE uName = '" + uName + "'");
        PB = Int32.Parse(result);

    }

    [WebMethod]
    public static string ProcessTime(int time)
    {
        // Simulated logic for calculating personal and world bests
        int personalBest = 1234;  // Example value, you can get this from a database
        int worldBest = 800;      // Example value, you can get this from a database

        // Example of updating the personal best if the new time is better
        if (time < personalBest)
        {
            personalBest = time;
        }

        if (time > worldBest)
        {
            worldBest = time;
        }

        // Create the response object
        var response = new
        {
            personalBest = personalBest,
            worldBest = worldBest
        };

        // Serialize and return as JSON
        var serializer = new JavaScriptSerializer();
        return serializer.Serialize(response);
    }
}