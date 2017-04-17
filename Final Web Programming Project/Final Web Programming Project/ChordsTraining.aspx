﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChordsTraining.aspx.cs" Inherits="Final_Web_Programming_Project.ChordsTraining" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Absolute - Chords Training</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
    <!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/skel.min.js"></script>
    <script src="js/skel-panels.min.js"></script>
    <script src="js/init.js"></script>
    <noscript>
		<link rel="stylesheet" href="css/skel-noscript.css" />
		<link rel="stylesheet" href="css/style.css" />
	</noscript>

    <!-- BOOTSTRAP - CSS, JavaScript, and mobile features -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
    <!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>

    <div id="wrapper">

        <!-- Header -->
        <div id="header">
            <div class="container">

                <div class="row">
                    <!-- WELCOME USER -->
                    <b id="Welcome" class="6u TextBold">Welcome <%= user_full_name %> !</b>

                    <!-- Sign Up & Sign In -->
                    <div id="HeaderLinks" class="6u SiteHeaderLink">
                        <a id="SignInLink" class="TextBold" href="SignInPage.aspx">Sign In</a>
                        <span>or</span>
                        <a id="SignUpLink" class="TextBold" href="SignUpPage.aspx">Sign Up</a>
                    </div>
                </div>

                <!-- Logo -->
                <div id="logo">
                    <img src="images/absolute_headline_white.png" />
                    <span>By Jonahtan Rozenblat</span>
                </div>

                <!-- Nav -->
                <nav id="nav">
                    <ul>
                        <li><a href="Index.aspx">Home</a></li>
                        <li><a href="MyProfile.aspx">My Profile</a></li>
                        <li class="active"><a href="ChordsTraining.aspx">Chords Training</a></li>
                        <li><a href="NotesTraining.aspx">Notes Training</a></li>
                        <li><a href="IntervalTraining.aspx">Interval Training</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /Header -->

        <div id="page">
            <div class="container">
                <div class="row">
                    <div class="3u">
                        <section id="sidebard2">
                            <header>
                                <h2>Play a Chord !</h2>
                            </header>
                            <ul class="style1">
                                <li class="first"><span class="fa fa-check"></span><a href="#">Maecenas luctus lectus at sapien</a></li>
                                <li><span class="fa fa-check"></span><a href="#">Etiam rhoncus volutpat erat</a></li>
                                <li><span class="fa fa-check"></span><a href="#">Donec dictum metus in sapien</a></li>
                                <li><span class="fa fa-check"></span><a href="#">Integer gravida nibh quis urna</a></li>
                                <li><span class="fa fa-check"></span><a href="#">Etiam posuere augue sit amet nisl</a></li>
                                <li><span class="fa fa-check"></span><a href="#">Nulla luctus eleifend purus</a></li>
                            </ul>
                            <a href="#" class="button">Full Article</a>
                        </section>
                    </div>


                    <div class="5u skel-cell-important">
                        <header>
                            <h2>Click Your Answer !</h2>
                        </header>
                        <table id="ChordsTrainingTable">
                            <tr>
                                <td>
                                    <button id="MajorBtn">Major</button></td>
                                <td>
                                    <button id="MinorBtn">Minor</button></td>
                            </tr>
                            <tr>
                                <td>
                                    <button id="DiminishedBtn">Diminished</button></td>
                                <td>
                                    <button id="AugmentedBtn">Augmented</button></td>
                            </tr>
                        </table>
                    </div>

                    <div class="4u">
                        <section>
                            <header>
                                <h2>Check your answer !</h2>
                            </header>

                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>