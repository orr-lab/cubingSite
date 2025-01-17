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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Register</h1>
    <p>Register for a timer and more exclusive content!</p>
    <br />
    <br />

    <form>
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required/> <br /> <br />

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required/><br /><br />
        
        <label for="pass">Password</label>
        <input type="password" id="pass" name="pass" required/><br /> <br />

        <label for="fname">First Name</label>
        <input type="text" id="fname" name="fname" required/><br /><br />

        <label for="lname">Last Name</label>
        <input type="text" id="lname" name="lname" required/><br /><br />


        <p>Gender: </p>
        <input type="radio" id="male" name="gender">
        <label for="male">Male</label><br>
        <input type="radio" id="female" name="gender">
        <label for="female">Female</label><br>
        <input type="radio" id="other" name="gender">
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
        <input type="time" id="PB" name="PB" /><br /><br />
        
        <label for="PBavg">What is your PB ao5 (avarage of 5)?</label>
        <input type="time" id="PBavg" name="PBavg" /><br /><br /><br />

        <input type="submit" value="submit"/>
        <input type="reset" value="reset" />
    </form>
</asp:Content>

