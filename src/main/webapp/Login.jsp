<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
 <link href="bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5" style="position:relative; top : 20vh;">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title text-center">Staff Login</h2>
                    <form action="login" method="post">
                        <div class="form-group">
                            <label for="username">User Name:</label>
                            <input type="text" class="form-control" id="username" name="username" required>
                        </div>

                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-primary mt-4">Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="bootstrap-5.3.2-dist/js/bootstrap.bundle.js" ></script>

</body>
</html>