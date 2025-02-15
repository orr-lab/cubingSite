using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class logIn : System.Web.UI.Page
{
    public string msg;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["isAdmin"] != null && Session["isAdmin"].ToString() == "true")
        {
            Response.Redirect("admin.aspx");
        }
        if (Request.Form["submit"] != null)
        {
            string uName = Request.Form["username"];
            string pw = Request.Form["password"];
            string rePass = Request.Form["repass"];

            if (pw == rePass)
            {
                if (MyAdoHelper.IsExist("Database.mdf", ("Select * FROM [users] where uName = '" + uName + "' and pw = '" + pw + "'")))
                {
                    msg = "Welcome in!";
                    Session["user"] = uName;
                    Response.Write("hello to " + Session["user"]);
                    string sql3 = "SELECT * FROM [users] WHERE uName = '" + uName + "' and [admin?] = 1";
                    if (MyAdoHelper.IsExist("Database.mdf", sql3))
                    {
                        Session["isAdmin"] = "true"; 
                        Response.Redirect("admin.aspx");
                    }
                    Response.Redirect("timer.aspx");
                }
                else
                {
                    msg = "Wrong credentials";
                }
            }
            else
            {
                msg = "Make sure to make your passwords the same";
            }
        }
    }
}