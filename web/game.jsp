<%-- 
    Document   : game
    Created on : 05-jun-2016, 8:36:07
    Author     : Alexis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

        <script type="text/javascript">
            /*GetTournamentWinner: 
             * Makes a request to the RESTAPI
             * send a tournament as a bracket list and return the winner
             * of the tournament
             */
            function GetTournamentWinner() {
                var vTournament = document.getElementById("txtaTournament").value;
                var url = "http://107.21.76.9:3000/api/championship/new";
                var httpRequest = new XMLHttpRequest();
                httpRequest.onreadystatechange = function () {
                    if (httpRequest.readyState === 4) {
                        if (httpRequest.status === 200) {
                            alert(httpRequest.responseText);
                        }
                    }
                };
                httpRequest.open('POST', url, true);
                httpRequest.setRequestHeader("Content-type", "application/json");
                httpRequest.setRequestHeader("Accept", "application/json");
                httpRequest.send({"data": vTournament});
            }

            /*GetTopPlayers 
             * Makes a request to the RESTAPI
             * and returns the top 10 players of the game
             */
            function GetTopPlayers() {
                var url = "http://107.21.76.9:3000/api/championship/top";
                var httpRequest = new XMLHttpRequest();
                httpRequest.onreadystatechange = function () {
                    if (httpRequest.readyState === 4) {
                        if (httpRequest.status === 200) {
                            alert(httpRequest.responseText);
                        }
                    }
                };
                httpRequest.open('GET', url, true);
                httpRequest.setRequestHeader("Content-type", "application/json");
                httpRequest.setRequestHeader("Accept", "application/json");
                httpRequest.send("count=10");
            }

            function ResetDataBase() {
                //TODO
            }

        </script>

        <title>Rock, Paper, Scissors!!</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <style>
            body {
                padding-top: 70px;
                /* Required padding for .navbar-fixed-top. Remove if using .navbar-static-top. Change if height of navigation changes. */
            }
        </style>

    </head>

    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">Home</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="game.jsp">Game</a>
                        </li>
                        <li>
                            <a href="aboutme.jsp">About me</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        <!-- Page Content -->
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Rock, Paper, Scissors!!
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <form class="form-horizontal">
                        <fieldset>
                            <!-- File Button --> 
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="btnSelectFile"></label>
                                <div class="col-md-4">
                                    <input id="btnSelectFile" name="btnSelectFile" class="input-file" type="file">
                                </div>
                            </div>

                            <!-- Textarea -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="txtaTournament">Tournament:</label>
                                <div class="col-md-4">                     
                                    <textarea class="form-control" rows="15" cols="80" id="txtaTournament" name="txtaTournament"></textarea>
                                </div>
                            </div>

                            <!-- Button (Double) -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="btnSendTournament"></label>
                                <div class="col-md-8">
                                    <button id="btnSendTournament" name="btnSendTournament" class="btn btn-success" onclick="GetTournamentWinner()">Send Tournament</button>
                                    <button id="btnClearDB" name="btnClearDB" class="btn btn-danger" onclick="ResetDataBase()">Reset DB</button>
                                </div>
                            </div>
                        </fieldset>
                    </form>

                </div>

                <div class="col-md-4">
                    <h3>Game Description</h3>
                    <p> In a game of rock-paper-scissors, each player chooses to play Rock (R), 
                        Paper (P), or Scissors (S). The rules are: Rock beats Scissors, Scissors 
                        beats Paper, but Paper beats Rock. A rock-paper-scissors game is encoded 
                        as a list, where the elements are 2-element lists that encode a player’s 
                        name and a player’s strategy.</p>
                    <h3>How to use it?</h3>
                    <ul>
                        <p>Pick a Tournament file of your choice and upload it to the page using the 
                            find tournament file button, or just define on the text field the 
                            tournament bracket list, and push the button Send Tournament to get the
                            tournament winner, also yo have some other options like: restart the server 
                            game or just see the top 10 players of the game. You can check out this examples files:
                            <a href="./files/Example1.txt">Example #1</a>  
                        </p>
                    </ul>
                </div>
            </div>
        </div>
        <!-- jQuery Version 1.11.1 -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>
