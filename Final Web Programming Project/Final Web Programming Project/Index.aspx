<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Final_Web_Programming_Project.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Absolute - Home</title>
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

<body class="homepage">
    <div id="wrapper">

        <!-- Header -->
        <div id="header">
            <div class="container">

                <div class="row">
                    <!-- WELCOME USER -->
                    <b id="Welcome" class="6u TextBold">Welcome <%= user_full_name %> !</b>

                    <%=logInOrOutHTML %>

                </div>


                <!-- Logo -->
                <div id="logo">
                    <img src="images/absolute_headline_white.png" />
                    <span>By Jonathan Rozenblat</span>
                </div>

                <!-- Nav -->
                <nav id="nav">
					<ul>
						<li class="active"><a href="Index.aspx">Home</a></li>
						<li><a href="MyProfile.aspx">My Profile</a></li>
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
                    <div class="skel-cell-important">
                        <section id="content">
							<header>
								<h2>About us:</h2>
							</header>
							<p> <i class="Italic">Absolute pitch</i> is a rare auditory phenomenon characterized by the ability of a person to identify or re-create
								a given musical note without the benefit of a reference tone.</p>

							<p>This website was created in order to help people who desire it, to develop or improve this quality in them. 
								Although some claim that the <i class="Italic">Absolute pitch</i> phenomenon is a quality peple are born with 
								and that it cannot be developed over time and experience, we think that with enough will power, anything is possible
								and that if you train yourself hard enough, the sky is the limit! 
							</p>
							<p>Here in our website, we offer a few exercises and features:<br/>
							<i class="fa fa-play-circle fa-1"></i> You can train your chord types identification skills. <br/>
							<i class="fa fa-play-circle fa-1"></i> Check your musical notes identifying precision. <br/>
							<i class="fa fa-play-circle fa-1"></i> Or even examine your knowlage of intervals identification.</p>

							<p>With the tools and exercises you are provided with here, nothing can stop you!</p>
							
							<table id="MotivationTable">
								<tr>
									<td>

										<p>So what are you waiting for? <br/>
							 				DO IT!<br/>
											JUST DO IT!!<br/>
											DON'T LET YOUR DREAMS BE DREAMS! <br/>
											Yesterday, you said "Tomorrow", SO JUST DO IT!  MAKE YOUR DREAMS COME TRUE! JUST.....DO IT! <br/>
									</td>
									<td>
										<audio id="DO-IT" src="Res/DO IT.mp3" type="audio/mpeg"></audio>
										<button class="btn btn-primary" onclick="document.getElementById('DO-IT').play()">MOTIVATION BUTTON</button>
									</td>
								</tr>
								<tr>
									<td>
										.......<br/>
										Some people dream of success, while you're gonna wake up and work hard at it! NOTHING IS IMPOSSIBLE! <br/>
										You should get to the point where anyone else would quit, and you're not gonna stop there! <br/>
										NO! WHAT ARE YOU WAITING FOR?! ...DO IT!!! <br/>
										JUST! DO IT!! <br/>
										YES YOU CAN! JUST DO IT!<br/>
										If you're tired of starting over, STOP. GIVING. UP.</p>
									</td>
								</tr>
							</table>
							
							<p> Anyway, have fun!</p>
	
						</section>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
