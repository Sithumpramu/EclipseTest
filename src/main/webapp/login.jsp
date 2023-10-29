<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="Styles/stylesJAVA.css">
        <link rel="stylesheet" href="Styles/header.css">
        <link rel="stylesheet" href="Styles/login.css">
        <title>
            Login 
        </title>
    </head>

    <body>
        
        <section>
        <div class="card">
        <h2>LOG IN</h2>
        <h4>Not a member?<a href="signupJAVA.html">Click here to join.</a></h4>

        <form class="Login_form" action="log" method="post"  name="loginForm" onsubmit="return validated()">
            Email : <br>
            <input type="Email" name="Email" autocomplete="off">
            <div id="Username_error">Enter your email</div>
            <br>
        
            Password : <br>
            <input type="password" name="password">
            <div id="password_error">Enter your password</div>
            <br>

            <input type="submit" name="send" value="LOG IN">
            <input type="reset" name="reset" value="CLEAR DATA">
        </form>
        <h4>Staff Login<a href="loginJAVA.html">Click here to join.</a></h4>
        </div>
        <script src="loginValidation.js"></script> 
        </section>
    

    </body>
</html>