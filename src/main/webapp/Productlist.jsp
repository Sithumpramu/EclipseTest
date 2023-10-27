<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet">
     <title>products List</title>
</head>
<body>
  <body class="bg-light">
    <nav class="navbar justify-content-center bg-secondary">
          <img src="Images/logo.png" class="img-fluid p-2 bg-secondary" style="width: 150px;" alt="logo" >
          <a href="Dashboard.jsp" class="btn fw-bold fs-5">Products Management</a>
  
          <div class="dropdown-center">
              <button class="btn text-muted fs-5 dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                Add products
              </button>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="Editproducts.jsp">Edit products</a></li>
              </ul>
            </div>
  
            <img src="Images/bell-solid.svg" alt="Notifictions" class="img-fluid" style="height: 30px; position: absolute; top: 25px; right: 9vw;">

          <div class="btn-group dropstart" style="position: absolute; right: 50px; top: 23px;">
            <button class="btn" type="button" data-bs-toggle="dropdown" aria-expanded="false">
              <img src="Images/user-solid.svg" alt="Profile" class="img-fluid" style="height: 30px; position: absolute; top:0px;">
            </button>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Profile</a></li>
              <li><a class="dropdown-item" href="#">Logout</a></li>
            </ul>
          </div>
    </nav>
    <section class="products" id="products">
        <h1 class="heading">Product Category</h1>
  
        <div class="box-container1">
          <div class="box">
            <img src="Images/vegep.jpg" />
            <h3>Vegetables</h3>
            <a href="Vege.jsp" class="btn">See Products</a>
          </div>
  
          <div class="box">
            <img src="Images/fruit.jpg" />
            <h3>Fruits</h3>
            <a href="Fruit.jsp" class="btn">See Products</a>
          </div>
  
          <div class="box">
            <img src="Images/dairy.jpg" />
            <h3>Dairy Products</h3>
            <a href="Dairy.jsp" class="btn">See Products</a>
          </div>
  
          <div class="box">
            <img src="Images/beverages.jpg" />
            <h3>Beverages</h3>
            <a href="Beverages.jsp" class="btn">See Products</a>
          </div>

          <div class="box">
            <img src="Images/bakery.jpg" />
            <h3>Bakery</h3>
            <a href="Bakery.jsp" class="btn">See Products</a>
          </div>
  
          <div class="box">
            <img src="Images/meat.jpeg" />
            <h3>Meat</h3>
            <a href="Meat.jsp" class="btn">See Products</a>
          </div>
  
          <div class="box">
            <img src="Images/seafood.jpg" />
            <h3>Sea Food</h3>
            <a href="Seafood.jsp" class="btn">See Products</a>
          </div>
  
          <div class="box">
            <img src="Images/cooking.jpg" />
            <h5>Cooking Essentials</h5>
            <a href="Cooking.jsp" class="btn">See Products</a>
          </div>
  
          <div class="box">
            <img src="Images/household.jpg" />
            <h3>Household</h3>
            <a href="Household.jsp" class="btn">See Products</a>
          </div>
        </div>
        <footer class="bg-black text-white mt-3">
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
      </section>
  
      <script src="bootstrap-5.3.2-dist/js/bootstrap.bundle.js">
      </script>
      <style>
         --css--
    .home
  {
      display: flex;
      justify-content: center;
      border: 0px solid;
      background: url(../Images/banner.jpg) no-repeat;
      background-position: center;
      background-size: cover;
      padding-top: 17rem;
      padding-bottom: 17rem;
  }
  
  .home .content
  {
      text-align: center;
      border:0px solid;
      width: 60rem;
  
  }
  
  .home .content h3
  {
      color: rgb(13, 14, 14);
      font-size: 1rem;
  
  }
  
  .home .content p
  {
      color: black;
      font-size: 1.0rem;
      padding: 1rem 0;
      line-height: 1.8;
  
  }
  
  .btn
  {
      border: 0.2rem solid rgb(27, 167, 78);
  
      display: inline-block;
      padding: 0.5rem 0.5rem;
      font-size: 1.3rem;
      border-radius: 0.5rem;
      color: rgb(255, 255, 255);
      cursor: pointer;
      background: rgb(27, 167, 78);
      text-decoration: none;
      font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
  }
  
  .btn:hover
  {
      background: rgb(108, 205, 142);
      color: rgb(1, 1, 1);
  }
  
  .products .box-container1
  {
      border:0px solid;
      display:grid;
      grid-template-columns: repeat(auto-fit, minmax(20rem, 1fr));
      gap:1.5rem;
      margin-left: 10rem;
      margin-right: 10rem;
  }
  
  .products .box-container1 .box
  {
      border: 1px solid black;
      border-radius: .5rem;
      padding:2rem 2rem 2rem 2rem;
      background: #ffffff;
      outline-offset: -1rem;
      outline: gray;
      text-align: center;
      box-shadow: gray;
      width:15rem;
      height:20rem;
  }
  
  .products .box-container1 .box:hover
  {
      box-shadow:1px 1px 10px 4px rgb(135, 193, 222);
      
  }
  
  .products .box-container1 .box img
  {
  
     height:12rem; 
     
  }
  
  .products .box-container1 .box h1
  {
      font-size: 2.5rem;
      color:rgb(120, 161, 192);
      
  }
  
  .products .box-container1 .box h3
  {
      font-size: 1.5rem;
      color:rgb(18, 19, 20);
  }
  
  .products .box-container1 .box .price
  {
      font-size: 1.5rem;
      color: rgb(54, 148, 230);
      padding: .5rem 0;
      
  }
  
  .heading
  {
      text-align: center;
      padding: 2rem 0;
      padding-bottom: 3rem;
      font-size: 3.5rem;
      color:black;
  
  }
      </style>
    </body>
   
  </html>
