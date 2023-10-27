<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet">
    <title>Admin Dashboard</title>
</head>
<body>
    <div class="container-fluid">
        <div class="row bg-secondary py-3 align-items-center" >
            <div class="col">
                <img src="Images/logo.png" class="img-fluid" style="width:190px"alt="logo">
            </div>
            <h1 class="h2 col text-center "><b>Admin Dashboard</b></h1>
            <div class="col">
                <div class="d-flex justify-content-end">
                    <input type="text" class="form-control me-2 w-50 " placeholder="search...." >
                    <button class="btn btn-primary">Logout</button>
                </div>
            </div>
        </div>
    </div>

    <div class="main-content">
    <div class="row bg-light " style="height: 100vh;">
     <div class="col-2 bg-black">
        <div class="navbar ">
            <ul class="nav flex-column">
               <li class="nav item mt-4 px-1"><a class="nav-link text-white" href="#"><i class="fas fa-plus"></i> Profile</a></li>
               <li class="nav item mt-4 px-1"><a class="nav-link text-white" href="Inventorylevels.jsp"><i class="fas fa-plus"></i> Inventory Levels</a></li>
               <li class="nav item mt-4 px-1"><a class="nav-link text-white" href="#"><i class="fas fa-plus"></i> Notifications</a></li>
               <div class="dropdown">
                <button class="nav item mt-4 px-3 btn btn-black text-white dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Products Management
                </button>
                <ul class="dropdown-menu">
                    <li><a href="Addproducts.jsp" class="dropdown-item">Add a New Product</a></li>
                    <li><a href="Productlist.jsp" class="dropdown-item">Remove a Product</a></li>
                    <li><a href="Editproducts.jsp" class="dropdown-item">Edit Product Details</a></li>
                </ul>
               </div>
            </ul>  
        </div>
     </div>
     <div class="col">
        <h1 class="display-6 my-4">Overview</h1>
    </div>
    </div>
   
    <div class="container bg-secondary w-75" style="position:absolute;top:200px;left:260px;">
        <div class="row">
            <div class="col">
                <div class="bg-light p-4 m-5 border border-3 border-dark">
                    <h6 class="p-2 text-center"><a href="Productlist.jsp">View All Products</a> </h6>
                </div>
            </div>
         <div class="col">
            <div class="bg-light p-4 m-5 border border-3 border-dark">
                <h6 class="p-2 text-center"><a href="Addproducts.jsp">Add a New Product</a></h6>
            </div>
         </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="bg-light p-4 m-4 border border-3 border-dark">
                 <h5 class="p-2 text-center"><a href="Inventorylevels.jsp">Inventory Levels</a></h5>
                 <a href="Inventorylevels.jsp"  style="position: relative; left: 700px;">product chart>></a>
                </div>
            <div class="col">
                <div class="bg-light p-2 m-5 border border-3 border-dark">
                 <h5 class="p-2 text-center"><a href="#">Notifications</a></h5>
                 <a href="#" style="position: relative; left: 730px;">More notification>></a>
                </div>
            </div>
        </div>
    </div>
    </div>
    <footer class="bg-black text-white mt-3" style="position:relative;bottom: 0px;top:5vh;">
      <div class="container">
        <div class="row">
          <div class="col">
            <h4>Contact Manager</h4>
            <ul class="list-unstyled">
              <li>Email: <a href="#">managercontact@shopmart.com</a></li>
              <li>Phone: <a href="#">0112-567-859</a></li>
              <li>Phone: <a href="#">077-2582540</a></li>
            </ul>
          </div>
          <div class="col text-center">
            <h4>Quick Links</h4>
            <ul class="list-unstyled">
              <li><a href="Productlist.jsp">Product category</a></li>
              <li><a href="Dashboard.jsp">Admin dashboard</a></li>
            </ul>
          </div>
          <div class="col text-end">
            <h4>Outlet Managers</h4>
            <ul class="list-unstyled">
              <li>Kaluthara: <a href="#">0342-567-890</a></li>
              <li>Kollupitiya: <a href="#">0112-567-890</a></li>
              <li>Negambo: <a href="#">0312-567-890</a></li>
            </ul>
          </div>
        </div>
        <hr>
        <div class="row">
          <div class="col">
            <p class="text-center">&copy; 2023 Shopmart Grocery Store. All rights reserved.</p>
          </div>
        </div>
      </div>
    </footer> 
    <script src="bootstrap-5.3.2-dist/js/bootstrap.bundle.js" >
    </script>
</body>
</html>