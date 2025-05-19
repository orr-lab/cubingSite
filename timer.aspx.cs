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
        string result = MyAdoHelper.giveResult("Database.mdf", "SELECT single FROM [PBs] WHERE uName = '" + uName + "'");
        PB = Int32.Parse(result);

    }

    [WebMethod]
    public static string ProcessTime(int time)
    {

        int personalBest = Int32.Parse(MyAdoHelper.giveResult("Database.mdf", "SELECT single FROM [PBs] WHERE uname = '" + HttpContext.Current.Session["user"].ToString() + "'")); 
        int worldBest = Convert.ToInt32(HttpContext.Current.Application["best"]);

        if (time < personalBest)
        {
            MyAdoHelper.DoQuery("Database.mdf", "UPDATE [PBs] SET single = " + time + " WHERE uName = '" + HttpContext.Current.Session["user"].ToString() + "'");
            personalBest = time;
        }

        if (time < worldBest)
        {
            HttpContext.Current.Application["best"] = time;
            worldBest = time;
        }

        // Create the response object
        var response = new
        {
            PB = personalBest,
            best = worldBest
        };

        // Serialize and return as JSON
        var serializer = new JavaScriptSerializer();
        return serializer.Serialize(response);
    }

    [WebMethod]
    public static string GetTime()
    {
        int personalBest = Int32.Parse(MyAdoHelper.giveResult("Database.mdf", "SELECT single FROM [PBs] WHERE uname = '" + HttpContext.Current.Session["user"].ToString() + "'"));
        int worldBest = Convert.ToInt32(HttpContext.Current.Application["best"]);

        var response = new
        {
            PB = personalBest,
            best = worldBest
        };

        // Serialize and return as JSON
        var serializer = new JavaScriptSerializer();
        return serializer.Serialize(response);
    }

}