<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignInPage.aspx.cs" Inherits="Final_Web_Programming_Project.SignInPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>

    <!-- My CSS -->
    <link rel="stylesheet" href="MyCSS.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <!-- Bootstrap - Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- Bootstrap - Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Bootstrap - something for smartphones-->
    <meta name="viewport" content="width=device-width, initial-scale=1">

   
</head>
<body>
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
</body>
</html>
