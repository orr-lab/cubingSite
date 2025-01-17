<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="logIn.aspx.cs" Inherits="logIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Log In</title>
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
    <h1>Log in:</h1>
    <form>
        <label for="username">Username </label>
        <input type="text" id="username" name="username" /><br />
        <label for="password">Password </label>
        <input type="password" if="password" name="password" /> <br />
        <label for-="repass">Confirm password </label>
        <input type="password" name="repass" id="repass" /><br /> <br />
        <input type="submit" id="submit" name="submit" value="submit" />
        <input type="reset" id="reset" name="reset" value="reset" /> <br />
        <input type="button" id="changepass" name="changepass" value="Change Password" />
    </form>
</asp:Content>

