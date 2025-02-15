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
        string sql = "SELECT * FROM [users]";
        tb = MyAdoHelper.printDataTable("Database.mdf", sql);

        if (Request.Form["submit"] != null)
        {
            string uName = Request.Form["uName"];
            string sql1 = "DELETE FROM [users] WHERE uName = '" + uName + "'";
            MyAdoHelper.DoQuery("Database.mdf", sql1);
        }
    }
}