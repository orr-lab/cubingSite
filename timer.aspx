   <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="timer.aspx.cs" Inherits="timer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Timer</title>
    <style>
        .time{
            margin: auto;
            font-size: 250px;
        }
        select{
            background-color: #444444;
            color: white;
            border: 1px solid black;
            padding: 5px;
            text-align: center;
            border-radius: 5px;
        }
        select:hover{
            background-color: #555555;
        }   
    </style>

    <script>
        const times = new Array(12);

        function genarateScramble(){
            const options = ['U', 'D', 'R', 'L', 'F', 'B'];
            const modifires = ['', "'", '2'];

            let move;
            let scramble = ""
            for (var i = 0; i < 20; i++) {
                move = ""
                move = options[Math.floor(Math.random() * options.length)];
                move += modifires[Math.floor(Math.random() * modifires.length)];

                scramble += move + " ";
            }

            
            document.getElementById("scramble").innerHTML = scramble.trim();
        }

        let startTime = null;
        let timerInterval = null;
        let running = false;

        function formatTime(ms) {
            const totalSeconds = ms / 1000;
            const minutes = Math.floor(totalSeconds / 60);
            const seconds = Math.floor(totalSeconds % 60);
            const hundredths = Math.floor((totalSeconds % 1) * 100);

            return minutes + ":" + seconds + "." + hundredths;
        }

        function updateTimerDisplay() {
            const now = Date.now();
            const elapsed = now - startTime;
            document.getElementById("time").textContent = formatTime(elapsed);
        }

        function startTimer()   {
            startTime = Date.now();
            timerInterval = setInterval(updateTimerDisplay, 10);
        }

        function stopTimer() {
            clearInterval(timerInterval);
            updateTimerDisplay(); // Final update
            const now = Date.now();
            var finalTime = now - startTime;

            var xhr = new XMLHttpRequest();
            xhr.open("POST", "timer.aspx/ProcessTime", true);  // Adjusted the URL to `timer.aspx/ProcessTime`
            xhr.setRequestHeader("Content-Type", "application/json; charset=utf-8");


            xhr.onload = function () {
                if (xhr.status === 200) {
                    console.log("Response received:", xhr.responseText);

                    var response = JSON.parse(xhr.responseText);
                    response = JSON.parse(response.d);
                    var PB = parseInt(response.PB);
                    var best = parseInt(response.best);
                    document.getElementById("PB").innerHTML = ("Personal best single: " + formatTime(PB));
                    document.getElementById("best").innerHTML = ("The best on this website is " + formatTime(best));
                } else {
                    console.log("Error:", xhr.status);
                }
            };

            var data = JSON.stringify({ "time": finalTime });
            xhr.send(data);
            startTime = null;
        }

        function getTimes() {
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "timer.aspx/GetTime", true)
            xhr.setRequestHeader("Content-Type", "application/json; charset=utf-8");


            xhr.onload = function () {
                if (xhr.status === 200) {
                    console.log("Response received:", xhr.responseText);

                    var response = JSON.parse(xhr.responseText);
                    response = JSON.parse(response.d);
                    var PB = parseInt(response.PB);
                    var best = parseInt(response.best);
                    document.getElementById("PB").innerHTML = ("Personal best single: " + formatTime(PB));
                    document.getElementById("best").innerHTML = ("The best on this website is " + formatTime(best));
                } else {
                    console.log("Error:", xhr.status);
                }
            };

            xhr.send(JSON.stringify({}));
        }

        window.addEventListener("keydown", function (event) {
            if (event.code === "Space") {
                event.preventDefault(); // Prevent page scroll
                if (!running) {
                    startTimer();
                } else {
                    stopTimer();
                    genarateScramble();
                }
                running = !running;
            }
        });

        window.addEventListener("load", function () {
            genarateScramble();
            getTimes();
        });;
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="margin-left: 0px;">Rubik's Cube Timer</h1> <br />
    <h2 id="scramble">Scramble goes here</h2>

    <h1 id="time" class="time"> Press Spacebar</h1> <br /><br /><br />
    <br />
    <h3 id="PB">Personal best single: </h3>
    <hr />
    <h2>Compared to the world!</h2>
    <h3 id="best">The best on this website is: </h3>
    
    
</asp:Content>

