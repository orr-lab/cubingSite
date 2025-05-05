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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Change info</h1>

   <form runat="server" method="post">
    <label for="uName">Username:</label>
    <input type="text" name ="uName" /> <br />
    <label for="pw">Password:</label>
    <input type="text" name="pw" /><br />
    <br />
    <label for="toChange">What do you want to change? </label> 
    <select name="toChange">
        <option value="uName">Username</option>
        <option value="email">Email</option>
        <option value="pw">Password</option>
        <option value="fName">First Name</option>
        <option value="lName">Last Name</option>
        <option value="gender">Gender</option>
        <option value="age">Age</option>
    </select> <br />
    <label for="changeTo"> What do you want to change it to?</label>
    <input type="text" name="changeTo" /> <br />
    
    
    <input type="submit" name="submit2" value="Change!" />
</form>
</asp:Content>

