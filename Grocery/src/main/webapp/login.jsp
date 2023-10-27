<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Form</title>
    
    <link rel="stylesheet" href="Resourses/css/bootstrap.css">
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
                            <label for="username">Username:</label>
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


<script src="Resourses/js/bootstrap.bundle.js"></script>
</body>
</html>
