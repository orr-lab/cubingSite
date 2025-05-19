using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{


    public string tb = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == "False")
        {
            Response.Redirect("Home.aspx");
        }


        string sql = "SELECT * FROM [users]";
        tb = MyAdoHelper.printDataTable("Database.mdf", sql);

        if (Request.Form["submit1"] != null)
        {
            string uName = Request.Form["uName"];
            string sql1 = "DELETE FROM [users] WHERE uName = '" + uName + "'";
            MyAdoHelper.DoQuery("Database.mdf", sql1);
            string sql2 = "DELETE FROM [PBs] WHERE uName = '" + uName + "'";
            MyAdoHelper.DoQuery("Database.mdf", sql2);
            Response.Redirect("admin.aspx");
        }
        if (Request.Form["submit2"] != null)
        {
            string uName = Request.Form["uName"];
            string toChange = Request.Form["toChange"];
            string changeTo = Request.Form["changeTo"];
            string sql1 = "UPDATE [users] SET " + toChange + " = '" + changeTo + "' WHERE uName = '" + uName + "'";
            MyAdoHelper.DoQuery("Database.mdf", sql1);

            if (toChange.Equals("uName"))
            {
                string sql2 = "UPDATE [PBs] SET uName = '" + changeTo + "' WHERE uName = '" + uName + "'";
                MyAdoHelper.DoQuery("Database.mdf", sql2);
            }

            Response.Redirect("admin.aspx");
        }
        if (Request.Form["submit3"] != null)
        {
            HttpContext.Current.Application["best"] = 20000;
        }

        if (Request.Form["submit4"] != null)
        {
            string uName = Request.Form["uName"];
            string sql1 = "UPDATE [PBs] SET single = 30000 WHERE uName = '" + uName + "'";
            MyAdoHelper.DoQuery("Database.mdf", sql1);
        }
    }
}