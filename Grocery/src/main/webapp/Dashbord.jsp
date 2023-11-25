    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import = "customer.Customer" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashbord</title>
    <link rel="stylesheet" href="Resourses/css/bootstrap.css">
</head>
<body>

  <c:forEach var = "drivers" items = "${driver}">
  
  <h1>${drivers.getDriverId()}</h1>
   ${drivers.getName()}
  
  </c:forEach>

    <div class="container-fluid">
        <div class="row bg-secondary py-3 align-items-center">
            <div class="col">
                <img src="Resourses/logo.png" class="img-fluid ms-3" style="width: 190px;" alt="logo">
            </div>
            <h1 class="h2 col text-center text-light">Manager Dashboard</h1>
            <div class="col">
                <div class="d-flex justify-content-end mt-4">
                    <input type="text" class="form-control me-2 w-50 h-50" placeholder="Search...">
                    <form action="LogOUT" method="post">
                     <button class="btn btn-primary">Logout</button>
                    </form>
                  </div>
            </div>
        </div>
    

     
      <div class="main-content" >
        <div class="row bg-primary bg-opacity-50 h-100 ">
            <div class="col-2 bg-black">
              <div class="sidebar">
              
              
              
              <div class="nav flex-column">
              
                  
              
                  <button class="btn btn-primary mt-1 px-3">
                      <a class="nav-link text-white" href="DeliverManagement.jsp">
                          Delivery Management
                      </a>
                  </button>
              
                  <button class="btn btn-primary my-1 px-3">
                      <a class="nav-link text-white" href="DeliverManagement.jsp"">
                          <i class="fas fa-user"></i>Drivers and outlets
                      </a>
                  </button>
              
                  <button class="btn btn-primary my-1 px-3">
                      <a class="nav-link text-white" href="Profile.jsp">
                          <i class="fas fa-tachometer-alt"></i>Profile
                      </a>
                  </button>
              
                  <button class="btn btn-primary my-1 px-3" data-bs-toggle="modal" data-bs-target="#modal">
                      <a class="nav-link text-white">
                          Notifications
                      </a>
                  </button>
                  
              </div>
             
              
             
              </div>
            </div>
            
     
             

    
            <div class="col" style="position: relative; left: 100px;">
                <h1 class="display-6 my-4" >Hello! <span class="fs-4 ms-4">${cusdetails.getUsername()}</span></h1>
                <h1 class="h3 my-5" >Overveiw</h1>
            </div>
            
                   </div>
        </div>
 
        
       
        <div class="container w-75" style="position: absolute; top: 250px; left: 300px;">
            <div class="row">
                <div class="col">
                    <div class=" p-2 m-5  border border-3 border-dark" >
                        <h5 class="p-2">New Orders</h5>
                        <p class="my-2 p-2 text-center fs-5">10</p>
                    </div>
                </div>
                <div class="col">
                    <div class=" p-2 m-5 border border-3 border-dark" >
                        <h5 class="p-2">In Transits</h5>
                        <p class="my-2 p-2 text-center fs-5">5</p>
                    </div>
                </div>
                <div class="col">
                    <div class=" p-2 m-5 border border-3 border-dark" >
                        <h5 class="p-2">Delivered</h5>
                        <p class="my-2 p-2 text-center fs-5">20</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-8">
                    <div class=" p-2 m-5 border border-3 border-dark" style="height: 200px;">
                        <h5 class="p-2">Orders</h5>
                         <c:forEach var = "allorders" items = "${orderss}">
                         
                          <c:set var = "id" value = "${allorders.getOrderid()}"/>
                           <c:set var = "date" value = "${allorders.getDate()}"/>
                            <c:set var = "type" value = "${allorders.getType()}"/>
                         
                        <p class="my-2 p-2 fs-5 mx-5 fs-6">
                            <span class="mx-5"> ${allorders.getOrderid()}</span>
                            <span class="mx-5">${allorders.getDate()}</span>
                            <span class="mx-5">${allorders.getType()}</span>
                        </p>
                        
                        
                        <c:url value="OrderManagement.jsp" var="order">
		<c:param name="id" value="${id}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="type" value="${type}"/>
		
	</c:url>
                        </c:forEach>
                        <a href="OrderManagement.jsp" class="text-black" style="position: relative; left: 35vw;">More>></a>
                    </div>
                </div>
                <div class="col">
                    <div class=" p-2 m-5 border border-3 border-dark"  style="height: 200px;">
                        <h5 class="p-2">Notifications</h5>
                        <p class="my-2 p-2 text-center fs-6">.</p>
                        <p class="my-2 p-2 text-center fs-6">No new Notifications</p>
                        <a href="#" class="text-black" style="position: relative; left: 170px;"  data-bs-toggle="modal" data-bs-target="#modal">More>></a>
                    </div>
               
            </div>
        </div>
    
      </div>  
      
      
      
	
	
	
	<button class="btn btn-primary mt-4 px-3">
                      <a class="nav-link text-white" href="${order}">
                          <i class="fas fa-plus"></i>Order Management
                      </a>
                  </button>
              
	
      <!-- modal -->
      <div class="modal fade" id="modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h1 class="modal-title fs-5" id="exampleModalLabel">Notification</h1>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>


       <!-- footer -->
       <footer class="bg-black text-white">
        <div class="container">
          <div class="row">
            <div class="col">
              <h4>Contact Admin</h4>
              <ul class="list-unstyled">
                <li>Email: <a href="#">admincontact@shopmart.com</a></li>
                <li>Phone: <a href="#">0112-567-890</a></li>
                <li>Phone: <a href="#">077-2582585</a></li>
              </ul>
            </div>
            <div class="col text-center">
              <h4>Quick Links</h4>
              <ul class="list-unstyled">
                <li><a href="OrderManagement.jsp">OrderManagement</a></li>
                <li><a href="DeliverManagment.jsp">DeliveryManagement</a></li>
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
      
      
    </div>
   
         
    


    <script src="Resourses/js/bootstrap.bundle.js"></script>
</body>
</html>