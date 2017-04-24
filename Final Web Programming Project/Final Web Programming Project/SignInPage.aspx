<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignInPage.aspx.cs" Inherits="Final_Web_Programming_Project.SignInPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>

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

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <!-- My CSS -->
    <link rel="stylesheet" href="MyCSS.css">
</head>
<body>

    <!-- Header -->
    <div id="header">
        <div class="container">
            <!-- Logo -->
            <div id="logo">
                <img src="images/absolute_headline_white.png" />
                <span>By Jonathan Rozenblat</span>

                <!-- Nav -->
                <nav id="nav">
					<ul>
						<li><a href="Index.aspx">Home</a></li>
						<li><a href="MyProfile.aspx">My Profile</a></li>
						<li><a href="ChordsTraining.aspx">Chords Training</a></li>
						<li><a href="NotesTraining.aspx">Notes Training</a></li>
					</ul>
				</nav>
            </div>
        </div>
    </div>
    <div id="page">
        <div class="container">
            <h1>Sign In:</h1>
            <br />
            <h4 class="text-danger"><%=wrongDetailsMessege%></h4>
            <form id="form1" runat="server" action="SignInPage.aspx">
                <div class="form-group">
                    <!-- USERNAME: -->
                    <label class="text-muted" for="usernameSignInInput">Username:</label>
                    <input class="form-control" type="username" name="usernameSignInInput" id="usernameSignInInput" placeholder="Enter username" />
                    <br />

                    <!-- PASSWORD: -->
                    <label class="text-muted" for="passwordSignInInput">Password:</label>
                    <input class="form-control" type="password" name="passwordSignInInput" id="passwordSignInInput" placeholder="Enter password" />
                    <br />

                    <input type="submit" class="btn btn-primary" value="Sign In" />
                </div>
            </form>
        </div>
    </div>
</body>
</html>
