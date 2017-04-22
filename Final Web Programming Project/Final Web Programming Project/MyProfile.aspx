<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="Final_Web_Programming_Project.MyProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%= username %></title>

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
    <div id="wrapper">
        <!-- Header -->
        <div id="header">
            <div class="container">

                <div class="row">
                    <!-- WELCOME USER -->
                    <b id="Welcome" class="6u TextBold">Welcome <%= user_full_name %> !</b>

                    <!-- Sign Out -->
                    <div id="HeaderLinks" class="6u SiteHeaderLink">
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
                        <li class="active"><a href="MyProfile.aspx">My Profile</a></li>
                        <li><a href="ChordsTraining.aspx">Chords Training</a></li>
                        <li><a href="#">Notes Training</a></li>
                        <li><a href="#">Intervals Training</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /Header -->

        <div id="page">
            <div class="container">
                <div class="row">
                    <div class="4u">
                        <section>
                            <header>
                                <h2>Acount Details:</h2>
                            </header>
                            <table id="AcountDetails">
                                <tr>
                                    <td class="AcountDetailsField"><b>Username: </b></td>
                                    <td><%= username %></td>
                                </tr>
                                <tr>
                                    <td class="AcountDetailsField"><b>Email: </b></td>
                                    <td><%= user_email %></td>
                                </tr>
                                <tr>
                                    <td class="AcountDetailsField"><b>Full Name: </b></td>
                                    <td><%= user_full_name %></td>
                                </tr>
                            </table>
                        </section>
                    </div>
                    <div class="4u">
                        <section>
                            <header>
                                <h2>Your Progress:</h2>
                            </header>
                            <table id="UserProgress">
                                <tr>
                                    <td class="AcountDetailsField"><b>Level:</b></td>
                                    <td><%= user_level %></td>
                                </tr>
                                <tr>
                                    <td class="AcountDetailsField"><b>XP:</b></td>
                                    <td><%= user_XP %> / <%= target_XP %></td>
                                </tr>
                            </table>
                        </section>
                    </div>
                    <div class="4u">
                        <section>
                            <header>
                                <h2>Your Achievements:</h2>
                            </header>
                            <%=achievementsList %>
                        </section>
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>
</html>
