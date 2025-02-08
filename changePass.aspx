<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changePass.aspx.cs" Inherits="logIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Change Password</title>
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
    <h1>Change Password:</h1>
    <form runat="server" method="post">
        <label for="username">Username </label>
        <input type="text" id="username" name="username" /><br />
        <label for="password">Current Password</label>
        <input type="password" id="oldpw" name="oldpw" /> <br />
        <label for="password">New Password</label>
        <input type="password" id="pw" name="pw" /> <br />
        <label for-="repass">Confirm password </label>
        <input type="password" name="repass" id="repass" /><br /> <br />
        <input type="submit" id="submit" name="submit" value="submit" />
        <input type="reset" id="reset" name="reset" value="reset" /> <br />
    </form>
    <p style="color: darkcyan; font-weight: bold; margin-top: 10px;"><%= msg %></p>
</asp:Content>

