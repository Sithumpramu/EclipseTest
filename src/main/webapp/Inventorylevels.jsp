<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet">
     <title>Inventory Levels</title>
</head>
<body>
   <c:forEach var="item" items="${iList}">
   
   ${item.CID}
   ${item.Name}
   ${item.Qty}
   ${item.restockLevel}
   
  </c:forEach>

  <body class="bg-light">
    <nav class="navbar justify-content-center bg-secondary">
          <img src="Images/logo.png" class="img-fluid p-2 bg-secondary" style="width: 150px;" alt="logo" >
          <a href="Dashboard.jsp" class="btn fw-bold fs-5">Products Management</a>
  
          <div class="dropdown-center">
              <button class="btn text-muted fs-5 dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" href="Add products.html">
                Add products
              </button>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="Addproducts.jsp">Add products</a></li>
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

<div class="container bg-info">
    <div class="row my-5 text-center bg-secondary bg-opacity-25 h-75 rounded-4 border">
      <div class="col-9 border-end border-3">
        <h1 class="h1 text-primary mt-3 text-center text-black">Inventory Levels</h1>
        <div class="content d-flex mt-4 bg-light">
          <p class="col border fw-bold justify-content-around">Category ID</p>
          <p class="col border fw-bold justify-content-around">Product Name</p>
          <p class="col border fw-bold justify-content-around">Quantity</p>
          <p class="col border fw-bold justify-content-around">Restock Level</p>
        </div>
        <div class="content bg-secondary">
          
        </div>
      </div>
  </div>
  <div>
    <button class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#restockmodal" style="position: absolute; top:35vh;right:14vw">Restock Reminder</button>
  </div>
</div>
  </section>

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
  <div class="modal fade" id="restockmodal" tabindex="-1" aria-labelledby="exampleModalLable" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLable">Enter Product Name</h1> <br>
          <input type="text" id="name" placeholder="product name....">
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="close"></button>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">close</button>
          <button type="button" class="btn btn-secondary" onclick="restockchecking()">Send Reminder</button>
        </div>
      </div>
    </div>
  </div>
  <script src="bootstrap-5.3.2-dist/js/bootstrap.bundle.js"> </script>
  <script>
    
    function restockchecking()
    {
      alert("Send re-stock reminders to manager and staff?")
      alert("Send Successfully")
    }

  </script>
   
 
</body>
</html>