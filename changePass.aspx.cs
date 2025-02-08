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
            string uName = Request.Form["username"];
            string oldpw = Request.Form["oldpw"];
            string pw = Request.Form["pw"];
            string rePass = Request.Form["repass"];

            if (pw == rePass)
            {
                if (MyAdoHelper.IsExist("Database.mdf", ("Select * FROM [users] where uName = '" + uName + "' and pw = '" + oldpw + "'")))
                {
                    string sql = "update [users] SET pw ='" + pw + "' where uName = '" + uName + "'";
                    MyAdoHelper.DoQuery("Database.mdf", sql);
                    msg = "Password Changed!";
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