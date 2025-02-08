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
            string olduName = Request.Form["olduName"];
            string pw = Request.Form["pw"];
            string uName = Request.Form["uName"];

            if (uName != olduName)
            {
                if (MyAdoHelper.IsExist("Database.mdf", ("Select * FROM [users] where uName = '" + olduName + "' and pw = '" + pw + "'")))
                {
                    string sql = "update [users] SET uName ='" + uName + "' where uName = '" + olduName + "'";
                    MyAdoHelper.DoQuery("Database.mdf", sql);
                    msg = "Username Changed!";
                }
                else
                {
                    msg = "Wrong credentials";
                }
            }
            else
            {
                msg = "Make sure to enter a new username";
            }
        }
    }
}