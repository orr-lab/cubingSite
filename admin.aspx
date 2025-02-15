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
        <h3 style="color:red">DELETE</h3>
        <p>username:</p>
        <input type="text" name ="uName" />
        <input type="submit" value="submit" name="submit"/>
    </form>
</asp:Content>

