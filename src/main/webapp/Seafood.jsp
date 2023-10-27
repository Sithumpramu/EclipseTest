<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet">
     <title>Seafood products</title>
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
<section class="category" id="category">
    <h1 class="heading">Sea Foods</h1>

    <div class="box-container">
      <div class="box">
        <img src="Images/seachicken.jpg" />
        <h3>Sea Chicken</h3>
        <p class="price">Rs.390.00/KG</p>
        <a href="Editproducts.jsp" class="btn"><div class="fa fa-shopping-cart" id="cart-btn"></div>Edit Details</a>
        <button class="btn" onclick="deleteProduct()"><div class="fa fa-shopping-cart" id="cart-btn"></div>Delete Product</button>
      </div>

      <div class="box">
        <img src="Images/linna.jpg" />
        <h3>Linna</h3>
        <p class="price">Rs.750.00/KG</p>
        <a href="Editproducts.jsp" class="btn"><div class="fa fa-shopping-cart" id="cart-btn"></div>Edit Details</a>
        <button class="btn" onclick="deleteProduct()"><div class="fa fa-shopping-cart" id="cart-btn"></div>Delete Product</button>
      </div>

      <div class="box">
        <img src="Images/fish2.jpg" />
        <h3>Lena Paraw</h3>
        <p class="price">Rs.900.00/KG</p>
        <a href="Editproducts.jsp" class="btn"><div class="fa fa-shopping-cart" id="cart-btn"></div>Edit Details</a>
        <button class="btn" onclick="deleteProduct()"><div class="fa fa-shopping-cart" id="cart-btn"></div>Delete Product</button>
      </div>

      <div class="box">
        <img src="Images/crab.jpg" />
        <h3>Cleaned Crab</h3>
        <p class="price">Rs.3.590.00/KG</p>
        <a href="Editproducts.jsp" class="btn"><div class="fa fa-shopping-cart" id="cart-btn"></div>Edit Details</a>
        <button class="btn" onclick="deleteProduct()"><div class="fa fa-shopping-cart" id="cart-btn"></div>Delete Product</button>
      </div>

      <div class="box">
        <img src="Images/prawns.jpg" />
        <h3>Prawns</h3>
        <p class="price">Rs.2,190.00/KG</p>
        <a href="Editproducts.jsp" class="btn"><div class="fa fa-shopping-cart" id="cart-btn"></div>Edit Details</a>
        <button class="btn" onclick="deleteProduct()"><div class="fa fa-shopping-cart" id="cart-btn"></div>Delete Product</button>
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

  <script src="bootstrap-5.3.2-dist/js/bootstrap.bundle.js"></script>
  <script>
    function deleteProduct()
    {
      alert("Are you sure about deleting this product?")
      alert("Product deleted successfully!")
    }
  </script>
  <style>
    --css--
{
    font-size:62.5%;
    overflow-x:hidden;
    scroll-behavior:smooth;
    scroll-padding-top: 7rem;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}

.heading
{
    text-align: center;
    padding: 2rem 0;
    padding-bottom: 3rem;
    font-size: 3.5rem;
    color:black;
    margin-top: 0rem;
}

.btn
{
    border: 0.2rem solid black;
    margin-top: 1rem;
    display: inline-block;
    padding: 1rem 1rem;
    font-size: 1.3rem;
    border-radius: 0.5rem;
    color: black;
    cursor: pointer;
    background: white;
    text-decoration: none;
}

.btn:hover
{
    background: rgb(105, 178, 99);
    color: whitesmoke;
}

.category .box-container
{
    border:0px solid;
    display:grid;
    grid-template-columns: repeat(auto-fit, minmax(20rem, 1fr));
    gap:1.5rem;
    margin-left: 10rem;
    margin-right: 10rem;
}

.category .box-container .box
{
    border: 1px solid black;
    border-radius: .5rem;
    padding:3rem 3rem 3rem 3rem;
    background: #fff;
    outline-offset: -1rem;
    outline: gray;
    text-align: center;
    box-shadow: gray;
    width:18rem;
}

.category .box-container .box:hover
{
    box-shadow:1px 1px 10px 4px rgb(105, 178, 99);
    
}

.category .box-container .box img
{

   height:14rem; 
   
}

.category .box-container .box h1
{
    font-size: 2.5rem;
    color:rgb(105, 178, 99);
    
}

.category .box-container .box h3
{
    font-size: 1.5rem;
    color:rgb(18, 19, 20);
}

.category .box-container .box .price
{
    font-size: 1.5rem;
    color: rgb(105, 178, 99);   
}

.category .box-container .box .icons div
{  
    color:rgb(55, 53, 53);
    font-size:1.8rem;
    padding-right: 1.5rem;
    cursor: pointer;
}





@media (max-width:450px)
{
    html
    {font-size: 50%;}

    .heading
    {
        font-size: 2.5rem;
    }
}
  </style>
</body>
</head>
</html>
