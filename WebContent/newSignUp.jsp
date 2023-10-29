<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/stylesJAVA.css">
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/login.css">
        <title>
            signup
        </title>
    </head>

    <body>
        
        <div class="card">
            <h2>SIGN UP</h2>
            <form method="post" action="register">
                <b>First Name : </b><br>
                <input type="text" name="fname" placeholder="Your Name" required>
                <br>
    
                <b>Last Name : </b><br>
                <input type="text" name="lname" placeholder="Your Name" required>
                <br>
    
                <b>Email : </b><br>
                <input type="Email" name="Email" placeholder="example@gmail.com" required>
                <br>
                
                <b>Mobile Number: </b><br>
                <input type="text" name="mobile" placeholder="Your mobile number" required>
                <br>

                <b>Password : </b><br>
                <input type="password" name="password" placeholder="Your Password" required>
                <br>

                <input type="submit" name="send" value="SIGN UP">
                <input type="reset" name="reset" value="CLEAR DATA">

                <p><a href="loginJAVA.html">You have an account?</a></p>
            </form>
        </div>

        
    </body>
</html>