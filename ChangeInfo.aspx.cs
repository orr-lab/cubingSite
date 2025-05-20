using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangeInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submit"] != null)
        {
            string uName = Request.Form["uName"];
            string toChange = Request.Form["toChange"];
            string changeTo = Request.Form["changeTo"];
            string pw = Request.Form["pw"];
            if (MyAdoHelper.IsExist("Database.mdf", ("Select * FROM [users] where uName = '" + uName + "' and pw = '" + pw + "'")))
            {
                string sql1 = "UPDATE [users] SET " + toChange + " = '" + changeTo + "' WHERE uName = '" + uName + "' AND pw = '" + pw + "'";
                MyAdoHelper.DoQuery("Database.mdf", sql1);

                if (toChange.Equals("uName"))
                {
                    string sql2 = "UPDATE [PBs] SET uName = '" + changeTo + "' WHERE uName = '" + uName + "'AND pw = '" + pw + "'";
                    MyAdoHelper.DoQuery("Database.mdf", sql2);
                }
            }

            
        }
    }
}