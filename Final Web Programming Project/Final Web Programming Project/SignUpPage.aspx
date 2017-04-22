<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="Final_Web_Programming_Project.SignUpPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>

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

    <!-- My CSS -->
    <link rel="stylesheet" href="MyCSS.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <!-- My JavaScript -->
    <script src="validateSignUpDetails.js"> </script>

    <style>
        #termsAndConditions {
            width: 1000px;
            height: 200px;
        }
    </style>


</head>
<body>

    <!-- Header -->
    <div id="header">
        <div class="container">
            <!-- Logo -->
            <div id="logo">
                <img src="images/absolute_headline_white.png" />
                <span>By Jonathan Rozenblat</span>
            </div>

            <!-- Nav -->
            <nav id="nav">
					<ul>
						<li><a href="Index.aspx">Home</a></li>
						<li><a href="MyProfile.aspx">My Profile</a></li>
						<li><a href="ChordsTraining.aspx">Chords Training</a></li>
						<li><a href="#">Notes Training</a></li>
						<li><a href="#">Intervals Training</a></li>
					</ul>
				</nav>
        </div>
    </div>

    <div id="page">
        <div class="container">
            <h1>Sign Up:</h1>
            <br />
            <h4 class="text-danger"><%=repeatedDetailsMessege%></h4>
            <form id="form1" runat="server" action="SignUpPage.aspx" onsubmit="return validate_details()">
                <div class="form-group">

                    <!-- USERNAME: -->
                    <label class="text-muted" for="usernameInput">Username:</label>
                    <input class="form-control" type="username" name="usernameInput" id="usernameInput" placeholder="Enter username" />
                    <br />

                    <!-- EMAIL ADDRESS: -->
                    <label class="text-muted" for="emailAddressInput">Email Address:</label>
                    <input class="form-control" type="email" name="emailAddressInput" id="emailAddressInput" placeholder="Enter email address" />
                    <br />

                    <!-- PASSWORD: -->
                    <label class="text-muted" for="passwordInput">Password:</label>
                    <input class="form-control" type="password" name="passwordInput" id="passwordInput" placeholder="Enter password" />
                    <br />

                    <!-- CONFIRM PASSWORD: -->
                    <label class="text-muted" for="confirmPasswordInput">Confirm Password:</label>
                    <input class="form-control" type="password" name="confirmPasswordInput" id="confirmPasswordInput" placeholder="Confirm your password" />
                    <br />

                    <!-- FULL NAME: -->
                    <label class="text-muted" for="FullNameInput">Full Name:</label>
                    <input class="form-control" type="username" name="FullNameInput" id="FullNameInput" placeholder="Enter your full name" />
                    <br />

                    <!-- DATE OF BIRTH: -->
                    <label class="text-muted" for="dateOfBirthInput">Date Of Birth:</label>
                    <input class="form-control" type="date" name="dateOfBirthInput" id="dateOfBirthInput" />
                    <hr />

                    <!-- TERMS & CONDITIONS + CHECKBOX: -->
                    <label class="text-muted" for="termsAndConditions">Terms & Conditions:</label>
                    <br />
                    <textarea cols="15" rows="8" id="termsAndConditions" readonly="readonly">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis inventore voluptates adipisci eligendi. Nulla quis deleniti ratione amet accusantium, fugit facilis, minima incidunt rem nemo. Itaque quos eligendi cupiditate, possimus deserunt id accusantium impedit debitis nulla alias at, doloremque, magnam recusandae error incidunt repellendus eaque! Officiis adipisci quod, repellendus amet eius consequuntur vitae, quaerat eum reprehenderit fuga suscipit architecto fugiat tenetur delectus autem! Aliquam dolor, necessitatibus deleniti autem temporibus corrupti laudantium tenetur, et quam rerum cum illum! Sapiente quaerat nobis laudantium sint voluptatem error impedit alias enim, molestias aspernatur. Voluptatem, suscipit eos qui odio incidunt sapiente architecto itaque in alias temporibus debitis ea facere nam labore placeat doloremque veritatis, perspiciatis consequuntur aliquid similique quasi rerum atque, reiciendis necessitatibus. Nemo nam quasi magni temporibus iure perferendis, fuga magnam voluptates labore tempore sapiente voluptatibus officiis, similique animi architecto ut quibusdam autem neque deserunt repudiandae facilis sed! Unde reprehenderit nisi sequi placeat quis, minus eum, iusto eius quisquam cum incidunt, tempore aliquam mollitia delectus impedit praesentium suscipit eligendi illo ab molestiae accusamus! Autem, ea, est. Praesentium eveniet officia adipisci reiciendis voluptate totam dolorum dolor, corrupti, rem. Earum laboriosam soluta, omnis quam corporis unde. Soluta modi asperiores harum libero dignissimos saepe, pariatur iure! Sed in a eaque repellat placeat libero veniam ex, magni quisquam vitae. Vero voluptas enim laudantium consectetur modi? Cupiditate molestiae fugiat quidem quae placeat expedita eos, suscipit vitae. Neque repellendus nemo, nesciunt ipsa aspernatur tenetur quisquam, aut at impedit! Eligendi recusandae, debitis, illum nisi esse sit quam amet, minus repellendus ad voluptatum nihil non laborum cumque mollitia! Fugit harum reiciendis accusantium debitis eius esse nemo incidunt repellat molestias laborum ipsam modi expedita, commodi. A minima delectus atque aut fugit ullam. Ab doloremque omnis dolor natus hic, facere nihil est. Autem dolorem earum ad placeat tempore sint alias quasi tempora. Incidunt veritatis, accusamus fuga eum aliquid recusandae adipisci doloremque delectus labore, modi et ratione quas quam! Nam voluptates cupiditate aut dignissimos, deserunt velit maxime quisquam amet incidunt rerum. In, inventore. Molestias neque perspiciatis quia quos libero fugiat minima, beatae sapiente nam officiis quam cupiditate mollitia magni voluptatum delectus aliquam, voluptas esse quis temporibus necessitatibus, voluptate! Deserunt fuga nobis iure pariatur ratione, libero possimus reiciendis. Natus, perspiciatis. Vel aspernatur ducimus pariatur fugiat, necessitatibus veritatis autem praesentium, explicabo nulla recusandae nihil iste eos, sunt. Beatae dicta, modi distinctio eveniet quibusdam fugiat obcaecati exercitationem. Doloribus, quis, eveniet. Cum laboriosam possimus nulla quisquam laborum porro maiores itaque placeat ipsa vitae! Officia doloremque quis laboriosam assumenda temporibus fugit est animi, hic dolor nemo eum, esse? Magni beatae ex perferendis quam odit tenetur incidunt commodi dolores. Dolore dolores molestiae aliquam vero tenetur consequuntur delectus aperiam similique earum voluptates, ullam, nostrum dicta sunt incidunt fugiat autem voluptatem laborum quos expedita, maxime alias iste. Nostrum velit ipsa eos incidunt, sint dolorum, a, error voluptatum, nobis rerum voluptate eaque voluptates placeat necessitatibus? Consequatur fugit alias eum quisquam doloremque mollitia vel distinctio dolores aliquam libero obcaecati vero, modi, optio. Eaque, numquam, amet. Architecto optio iste excepturi tempora illo nemo, cumque dolore, atque consequuntur expedita quia ex, aperiam commodi voluptate reprehenderit. Illo, reprehenderit. Reiciendis deleniti minima at numquam cum molestias quis iste! Sint deleniti at ut, obcaecati harum accusamus facilis, error tempore quibusdam aperiam ad delectus voluptates aliquid rerum quia consectetur architecto sequi! Ratione eos sapiente quasi, ea molestiae recusandae asperiores, saepe eum culpa! Quidem amet illum nostrum reprehenderit, repudiandae dicta deserunt debitis voluptate commodi quo! Recusandae, iure ex minima voluptatem. Nobis fuga, impedit repellendus veniam necessitatibus tempore! Labore, nisi temporibus eos, similique enim quasi officiis unde tempora, doloremque quidem excepturi. Saepe fuga totam deserunt enim pariatur earum, esse, blanditiis aspernatur rerum ea consequuntur quidem architecto soluta nisi. Autem minima expedita commodi veritatis laudantium atque, soluta aliquam, harum, dolorem rerum ratione pariatur corporis porro fugit nihil temporibus voluptatem quis ullam impedit. Modi corporis amet quasi quidem reprehenderit officiis, soluta architecto eos dignissimos facilis laudantium fugit blanditiis nam doloribus. Quas eos magni molestias praesentium voluptas aliquid incidunt nesciunt, vero quos ipsam soluta est, facilis nisi iste maiores saepe natus reiciendis nulla dolores placeat modi repudiandae dolore esse. Perspiciatis odio autem, dignissimos provident minus repellat consectetur labore ipsum tenetur expedita sapiente amet, mollitia illum, doloribus, at sit. Eaque molestias exercitationem id, unde eligendi rem mollitia praesentium aliquid nihil, quasi et dolor quo ipsam. Vel rerum ad, eum quia quae nulla explicabo nobis dignissimos, vitae doloremque, error perspiciatis fugit omnis expedita mollitia asperiores repudiandae odit sequi? Numquam, voluptatibus tempora necessitatibus, qui, sint voluptas modi perferendis animi voluptates illo ea consectetur in, nostrum impedit ex odit doloremque molestias! Tempore laudantium labore quasi omnis provident vitae corporis est dolor, cupiditate praesentium vero exercitationem facere minima beatae, consequuntur fugit. Ex culpa deleniti, beatae quibusdam eius vero eos, itaque omnis. Totam incidunt nemo voluptas iste dolores voluptatibus. Omnis in optio odit ipsa unde sint, expedita beatae. Perspiciatis eveniet laborum maxime molestias, ratione facere nulla neque. Sint, rerum porro reiciendis quos ut architecto ex aperiam eveniet dicta excepturi accusantium illo quo magnam, deserunt fugit autem. Modi odit fuga, repudiandae, a ratione laborum nesciunt vel impedit velit quam omnis natus. Magnam, quam. Soluta tenetur quod facilis nemo voluptatem officia cum, earum est ipsam eveniet quidem libero voluptates expedita amet atque illum facere, itaque vitae ea consequatur maxime necessitatibus veniam labore. Reprehenderit possimus necessitatibus, voluptates alias pariatur quas eum obcaecati error aperiam consectetur veritatis corporis fugit illo, ratione animi quod distinctio quibusdam, quasi inventore iste accusantium iure id rem? A dolor nobis earum vero odio dolore, maxime rerum, pariatur quae voluptatibus sit ipsum ex nesciunt voluptatum sequi perferendis, sed! Suscipit fugiat cum aliquid laboriosam nobis debitis esse totam saepe ipsam, id doloribus numquam dicta similique, eligendi quam pariatur natus rem, perspiciatis. Fugit distinctio fuga molestias soluta odit alias, aperiam ipsam? Excepturi eos aliquid atque magnam vel quas quaerat non repudiandae et ut? Molestias accusamus quasi expedita eveniet voluptates quae ut, enim, asperiores, esse deserunt debitis. Ea, suscipit nulla beatae non quibusdam, eaque corrupti quos iste doloremque, eveniet iure ratione voluptatum voluptate aliquid saepe fugiat hic natus reprehenderit necessitatibus. Modi facere at similique cupiditate.</textarea>
                    <br />
                    <input class="form-check-input" type="checkbox" id="termsAndConditionsCheckBox">I agree to the terms & conditions.</input>
                    <br />
                    <br />

                    <input type="submit" class="btn btn-primary" />

                </div>
            </form>
        </div>
    </div>
</body>
</html>
