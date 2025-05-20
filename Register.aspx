<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Register</title>
    <style>
        label{
            color: white;
        }
        input{
            background-color: #444444;
            color: white;
            border: 1px solid black;
            border-radius: 5px;
        }
        input:hover{
            background-color: #555555;
        }
        input[type=submit], input[type=reset] {
            border: none;
            padding: 16px 32px;
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
        }
        
    </style>

    <script type="text/javascript">
        function checkAll() {
            return checkFname() && checkLname() && checkPass() && checkUname();
        }

        function checkFname() {
            var fName = document.getElementById("fname").value;
            //window.alert(fName);
            if (fName[0] < 'A' || fName[0] > 'Z') {
                window.alert("First name must start with a CAPITAL letter")
                return false;
            }

            if (fName.length >= 50) {
                window.alert("First name too long (max 50)")
                return false;
            }

            for (var i = 1; i < fName.length; i++) {
                if (fName[i] < 'a' || fName[i] > 'z') {
                    window.alert("in the first name, all characters must be lowewecase letters exept for the first one");
                    return false;
                }
            }
            return true;
        }

        function checkLname() {
            var fName = document.getElementById("lname").value;
            //window.alert(fName);
            if (fName[0] < 'A' || fName[0] > 'Z') {
                window.alert("Last name must start with a CAPITAL letter")
                return false;
            }

            if (fName.length >= 50) {
                window.alert("Last name too long (max 50)")
                return false;
            }

            for (var i = 1; i < fName.length; i++) {
                if (fName[i] < 'a' || fName[i] > 'z') {
                    window.alert("in the last name, all characters must be letters and lowewecase exept for the first one");
                    return false;
                }
            }
            return true;
        }
        function checkPass(){
            var pass = document.getElementById("pass").value;

            if (pass.length >= 50) {
                window.alert("Password is too long (max 50 chars)")
                return false;
            }
            if (pass.length <= 8) {
                window.alert("Password is too short (min 8 chars)")
                return false;
            }

            var flag = false
            for (var i = 0; i < pass.length; i++) {
                if (pass[i] >= 'A' && pass[i] <= 'Z') {
                    flag = true;
                }

                
            }

            if (!flag) {
                window.alert("Password must contain at least one CAPITAL letter")
                return false;
            }

            flag = false;

            var nums = "0123456789";

            for (var i = 0; i < pass.length; i++) {
                for (var j = 0; j < nums.length; j++) {
                    if (pass[i] == nums[j]) {
                        flag = true;
                    }
                }
            }

            if (!flag) {
                window.alert("Password must contain at least one number")
                return false;
            }

            flag = false;

            var symbols = "&+!@#$*%()-_="

            for (var i = 0; i < pass.length; i++) {
                for (var j = 0; j < symbols.length; j++) {
                    if (pass[i] == symbols[j]) {
                        flag = true;
                    }
                }
            }

            if (!flag) {
                window.alert("Password must contain at least one symbol (" + symbols + ")")
                return false;
            }

            return true;

        }

        function checkUname() {
            var uname = document.getElementById("username").value;

            if (uname.length >= 20) {
                window.alert("Username is too long (max 20 chars)")
                return false;
            }
            if (uname.length <= 1) {
                window.alert("Username is too short (min 1 chars)")
                return false;
            }
            return true;
        }


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Register</h1>
    <p>Register for a timer and more exclusive content!</p>
    <br />
    <br />

    <form id="form1" name="form1" action="" runat="server" method="post" onsubmit="return checkAll()">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required/><br /> <br />

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required/><br /><br />
        
        <label for="pass">Password</label>
        <input type="password" id="pass" name="pass" required/><br /> <br />

        <label for="fname">First Name</label>
        <input type="text" id="fname" name="fname" required/><br /><br />

        <label for="lname">Last Name</label>
        <input type="text" id="lname" name="lname" required/><br /><br />


        <p>Gender: </p>
        <input type="radio" id="male" name="gender" value="male">
        <label for="male">Male</label><br>
        <input type="radio" id="female" name="gender" value="female">
        <label for="female">Female</label><br>
        <input type="radio" id="other" name="gender" value="other">
        <label for="other">Other</label> <br /><br />

        <label for="age">Age</label>
        <input type="number" id="age" name="age" required/><br /><br />

        <p>Other hobbies: </p>
        <input type="checkbox" id="hobby1" name="hobby1">
        <label for="hobby1"> Video gaming</label><br>
        <input type="checkbox" id="hobby2" name="hobby2">
        <label for="hobby2"> Board gaming</label><br>
        <input type="checkbox" id="hobby3" name="hobby3">
        <label for="hobby3"> Biking</label><br />
        <input type="checkbox" id="hobby4" name="hobby4" />
        <label for="hobby4">D&D</label><br />
        <input type="checkbox" id="hobby5" name="hobby5" />
        <label for="hobby5">Sports</label><br />
        <input type="checkbox" id="hobbyOther" name="hobbyOther" />
        <label for="hobbyOther">Other</label> <br /><br />

        <label for="PB">What is your PB (personal best) single?</label>
        <input type="time" id="PB" name="PB" required/><br /><br />
        

        <input type="submit" value="submit" name="submit"/>
        <input type="reset" value="reset" />
    </form>

    <p style="color: lightblue; font-weight: bold; margin-top: 10px;"><%= msg %></p>
</asp:Content>

