using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logIn : System.Web.UI.Page
{
    public string msg;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submit"] != null)
        {
            string email = Request.Form["email"];
            string pw = Request.Form["pw"];
            string uName = Request.Form["uName"];


            if (MyAdoHelper.IsExist("Database.mdf", ("Select * FROM [users] where uName = '" + uName + "' and pw = '" + pw + "'")))
            {
                string sql = "update [users] SET email ='" + email + "' where uName = '" + uName + "'";
                MyAdoHelper.DoQuery("Database.mdf", sql);
                msg = "Email Changed!";
            }
            else
            {
                msg = "Wrong credentials";
            }
        }
    }
}