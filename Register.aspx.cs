using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    public string msg;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submit"] != null)
        {
            string uName = Request.Form["username"];
            string email = Request.Form["email"];
            string pw = Request.Form["pass"];
            string fName = Request.Form["fname"];
            string lName = Request.Form["lname"];
            string gender = Request.Form["gender"];
            int age = Int32.Parse(Request.Form["age"]);
            int vGaming, bGaming, biking, dnd, sports, hobbyOther;
            if (Request.Form["hobby1"] != null)
            {
                vGaming = 1;
            } else {
                vGaming = 0;
            }
            if (Request.Form["hobby2"] != null)
            {
                bGaming = 1;
            }
            else
            {
                bGaming = 0;
            }
            if (Request.Form["hobby3"] != null)
            {
                biking = 1;
            }
            else
            {
                biking = 0;
            }
            if (Request.Form["hobby4"] != null)
            {
                dnd = 1;
            }
            else
            {
                dnd = 0;
            }
            if (Request.Form["hobby5"] != null)
            {
                sports = 1;
            }
            else
            {
                sports = 0;
            }
            if (Request.Form["hobbyOther"] != null)
            {
                hobbyOther = 1;
            }
            else
            {
                hobbyOther = 0;
            }

            string pbSingle = Request.Form["PB"];
            string pbAo5 = Request.Form["PBavg"];

            TimeSpan pbSpan = TimeSpan.Parse(pbSingle);
            TimeSpan avgSpan = TimeSpan.Parse(pbAo5);

            int minutesSingle = pbSpan.Hours;
            int secondsSingle = pbSpan.Minutes + 1; //add one because its without miliseconds and I want to account for the worst
            
            int minutesAvg = avgSpan.Hours;
            int secondsAvg = avgSpan.Minutes + 1;

            float singleFloat = minutesSingle + secondsSingle;
            float avgFloat = minutesAvg + secondsAvg;

            string sql1 = "Select * from [users] where email='" + email + "'";
            if (MyAdoHelper.IsExist("Database.mdf", sql1))
                msg = "You already exist in our site!";
            else
            {
                string sql2 = "Insert into [users] (uName,email,pw,fName,lName,gender,age,vGaming,bGaming,biking,dnd,sports,hobbyother) values ('" + uName + "','" + email + "','" + pw + " ',' " + fName + "','" + lName + "','" + gender + "','" + age + "',"+vGaming+","+bGaming+","+biking+","+dnd+","+sports+","+hobbyOther+");";
                MyAdoHelper.DoQuery("Database.mdf", sql2);
                msg = "you were added to our site!";
                

                string sql3 = "Insert into [PBs] (uName,single,ao5) values ('" + uName + "'," + singleFloat + "," + avgFloat + ");";
                MyAdoHelper.DoQuery("Database.mdf", sql3);

                Session["user"] = uName;
                Response.Write("hello to " + Session["user"]);
            }
        }
    }
}