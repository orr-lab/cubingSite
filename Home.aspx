<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Rubik's Cube Records</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>This website is an all in one Rubik's cube website!</h1>
    <p>Have you ever wanted to know how to solve a Rubik's cube? This website has tutorials, records, and even a timer that can compare your times to others across the world. <br />
        Rubik's cubes were invented as an exploration of how elements interact in a 3D space. But today it is the most popular and well known puzzle that pepole can do insane
        things with.<br /> The below records show the best cubers on the planet, I'd recomend giving theese a view! <br /><br /><br />
    </p>
    <h2>World records! <br />
        <img src="photos/podium.jpg" height="300"/><br /></h2>
    <table>
        <tr>
            <th>Event</th><th>Time</th><th>Record Holder</th><th>Video</th>
        </tr>
        <tr>
            <td>3x3</td><td>3.13</td><td>Max Park</td><td><iframe width="300" src="https://www.youtube.com/embed/gh8HX4itF_w" title="Fastest Rubik&#39;s cube 3x3 WR (3.13) sec WORLD RECORD" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></td>
        </tr>
        <tr>
            <td>2x2</td><td>0.43</td><td>Teodor Zajder</td><td><iframe width="300" src="https://www.youtube.com/embed/dKvlTX_BC8g" title="Teodor Zajder&#39;s 0.43 2x2 wr!" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></td>
        </tr>
        <tr>
            <td>4x4</td><td>15.71</td><td>Max Park</td><td><iframe width="300" src="https://www.youtube.com/embed/yApZR-TQ6ZQ" title="15.71 4x4 World Record single, Max Park" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></td>
        </tr>
        <tr>
            <td>5x5</td><td>30.45</td><td>Tymon Kolasiński</td><td><iframe width="300" src="https://www.youtube.com/embed/9cA2A8OJUFY" title="5x5 WORLD RECORD: 30.45s" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></td>
        </tr>
        <tr>
            <td>3x3 Blindfolded</td><td>12.00</td><td>Tommy Cherry</td><td>I couldn't find the world record. <br /> This is the 2nd best time <iframe width="300" src="https://www.youtube.com/embed/Hwv7sK8U6i4" title="World Record Blindfolded 3x3 Rubik&#39;s Cube Solve (Former) - 12.10 - Charlie Eggins" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></td>
        </tr>
        <tr>
            <td>5x5 Bindfolded</td><td>2:04.21</td><td>Stanly Chapel</td><td><iframe width="300" src="https://www.youtube.com/embed/uhkHR-6vawQ" title="2:04.41 World Record 5BLD Single" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></td>
        </tr>
        <tr>
            <td>Multiple 3x3s blindfolded</td><td>62 cubes</td><td>Graham Siggins</td><td><iframe width="300" src="https://www.youtube.com/embed/GoGVYQqgTgA" title="62/65 57:47 Multi-Blind World Record -- Graham Siggins" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></td>
        </tr>
        <tr>
            <td>Square-1</td><td>3.41</td><td>Ryan Pilat</td><td><iframe width="300" src="https://www.youtube.com/embed/4uH1-Wad35A" title="Square-1 World Record Single: 3.41 Seconds" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></td>
        </tr>
    </table>
    <p>All world records may be found on the <a target="_blank" href="https://www.worldcubeassociation.org/results/records" style="margin-left:0px;">WCA website</a></p>
    <h1><br /><br /></h1>

    <h2>Do <b>YOU</b> want to be able to solve a cube, and hopefully get a record? Go to the <a href="Tutorial.aspx" style="margin-left:0px; margin-right:0px;">tutorial page</a> of my website</h2>
</asp:Content>

