<%-- 
    Document   : aboutme
    Created on : 05-jun-2016, 8:37:40
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

            <!-- Introduction Row -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">About Me
                        <small>Nice to Meet You!</small>
                    </h1>
                    <p>
                        Hi! Im Alexis,computer engineer more like a hobbie than a career, VGC Player,
                        Rock music fan, likes to chill and anime xD.
                        My interest in computing arises from an early age , where during my time on high school chooses to study a Middle Technician in Computer Networking
                        , but my interest was further and at the end of secondary entered at the Costa Rica Institute of Technology in the Computer Engineering career in 2011 .

                        During my course work , I have earned great skills of interaction with the client, the use of different technologies and their integration and support in various areas.
                        Characterized by assuming leadership in the groups in which I develop , take on challenges and especially 100 % to be worried in what I can improve to be a better professional .

                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header">Solution Technologies</h2>
                </div>
                <div class="col-lg-4 col-sm-6 text-center">
                    <img class="img-circle img-responsive img-center" src="http://ih1.redbubble.net/image.109336620.1604/sticker,220x200-pad,220x200,ffffff.u1.jpg" alt="">
                    <h3>NodeJS
                        <small>Javascript on Server Side</small>
                    </h3>
                    <p>In one sentence: Node.js shines in real-time web applications employing push technology over websockets. </p>
                </div>
                <div class="col-lg-4 col-sm-6 text-center">
                    <img class="img-circle img-responsive img-center" src="http://perlmaven.com/img/mongodb-logo.png" alt="">
                    <h3>MongoDB
                        <small>NonSQL Database</small>
                    </h3>
                    <p>As a small project I just dont need an sturdy database, and also I didnt need a relational stuff, so I just pick something that let me interact fast and easily with NodeJs.</p>
                </div>
                <div class="col-lg-4 col-sm-6 text-center">
                    <img class="img-circle img-responsive img-center" src="https://blog.rosehosting.com/blog/wp-content/uploads/2015/10/express_js.png" alt="">
                    <h3>Express
                        <small>Server framework</small>
                    </h3>
                    <p>Express is a minimal and flexible Node.js web application framework that provides a robust set of features to develop web and mobile applications. It facilitates a rapid development of Node based Web applications.</p>
                </div>
                <div class="col-lg-4 col-sm-6 text-center">
                    <img class="img-circle img-responsive img-center" src="http://www.pskills.in/image/jsp.png" alt="">
                    <h3>Java Server Pages
                        <small>Dynamically generated web pages</small>
                    </h3>
                    <p>The main idea was to create a web fullstack app, but the time and knowledge didnt let me. I had used JSP on some projects, so i thing why not?</p>
                </div>  
            </div>
            <hr>
        </div>
        <!-- jQuery Version 1.11.1 -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
