<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>admin</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1> Admin Page: </h1>
    <%=tb %>

    <hr />
    <br />

    <form runat="server" method="post">
        <p>username:</p>
        <input type="text" name ="uName" />
        <h3 style="color:red">DELETE</h3>
        <input type="submit" value="Delete!" name="submit1"/> <br />
        <h3>CHANGE INFO</h3>
        <p>What do you want to change? </p> 
        <select name="toChange">
            <option value="uName">Username</option>
            <option value="email">Email</option>
            <option value="pw">Password</option>
            <option value="fName">First Name</option>
            <option value="lName">Last Name</option>
            <option value="gender">Gender</option>
            <option value="age">Age</option>
            <option value="admin">Is Admin?</option>
        </select> <br />
        <p> What do you want to change it to?</p>
        <input type="text" name="changeTo" /> <br />
        
        
        <input type="submit" name="submit2" value="Change!" />
    </form>
   
</asp:Content>

