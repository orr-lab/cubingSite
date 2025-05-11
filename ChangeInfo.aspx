<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangeInfo.aspx.cs" Inherits="ChangeInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Change Info</title>
    <style>
        label{
            color: white;
        }
        input, select{
            background-color: #444444;
            color: white;
            border: 1px solid black;
            border-radius: 5px;
        }
        input:hover, select:hover{
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
                var change = document.getElementById("toChange").value
               // window.alert(change);
                if (change === "fName") {
                    var ans = checkFname();
                    return ans;
                }
                if (change === "lName") {
                    return checkLname();
                }
                if (change === "pw") {
                    return checkPass();
                }
                if (change === "uName") {
                    return checkUname();
                }
            }
           

            function checkFname() {
                var fName = document.getElementById("changeTo").value;
                window.alert(fName);
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
                var fName = document.getElementById("changeTo").value;
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
                var pass = document.getElementById("changeTo").value;

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
                var pass = document.getElementById("changeTo").value;

                if (pass.length >= 20) {
                    window.alert("Username is too long (max 20 chars)")
                    return false;
                }
                if (pass.length <= 1) {
                    window.alert("Username is too short (min 1 chars)")
                    return false;
                }
                return true;
            }

        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Change info</h1>

   <form runat="server" method="post" id="form" name="form" action="" onsubmit="return checkAll()">
    <label for="uName">Username:</label>
    <input type="text" name ="uName" /> <br />
    <label for="pw">Password:</label>
    <input type="text" name="pw" /><br />
    <br />
    <label for="toChange">What do you want to change? </label> 
    <select name="toChange" id="toChange">
        <option value="uName">Username</option>
        <option value="email">Email</option>
        <option value="pw">Password</option>
        <option value="fName">First Name</option>
        <option value="lName">Last Name</option>
        <option value="gender">Gender</option>
        <option value="age">Age</option>
    </select> <br />
    <label for="changeTo"> What do you want to change it to?</label>
    <input type="text" name="changeTo" id="changeTo" /> <br />
    
    
    <input type="submit" id="submit" name="submit" value="Change!" />
</form>
</asp:Content>

