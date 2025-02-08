<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangeInfo.aspx.cs" Inherits="ChangeInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Change Info</title>
    <style>
        input{
            background-color: #444444;
            color: white;
            border: 1px solid black;
            border-radius: 5px;
            padding: 35px;
            margin:  22px;
        }
        input:hover{
            background-color: #555555;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Change info</h1>

   <input type="button" value="Change Password" onclick="window.location.href='changePass.aspx';"/>
   <input type="button" value="Change Username" onclick="window.location.href='changeUser.aspx';"/>
   <input type="button" value="Change Age" onclick="window.location.href='changeAge.aspx';"/>
   <input type="button" value="Change Email" onclick="window.location.href='changeMail.aspx';"/>
</asp:Content>

