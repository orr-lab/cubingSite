﻿using System;
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
            string pw = Request.Form["password"];
            string rePass = Request.Form["repass"];

            if (pw == rePass)
            {
                if (MyAdoHelper.IsExist("Database.mdf", ("Select * FROM [users] where uName = '" + uName + "' and pw = '" + pw + "'")))
                {
                    msg = "Welcome in!";
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