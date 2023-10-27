<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delivery Management</title>
    <link rel="stylesheet" href="Resourses/css/bootstrap.css">
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@page import = "manager.orders" %>
    
</head>
<body>
  
   
    
  <body class="bg-primary bg-opacity-25">
    <nav class="navbar justify-content-center bg-secondary">
          <img src="Resourses/logo.png" class="img-fluid p-2 bg-secondary" style="width: 220px;" alt="logo">
          <a href="OrderManagement.jsp" class="btn fw-bold fs-5">Order management</a>
  
          <div class="dropdown-center">
              <button class="btn text-muted fs-5 dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                Delivery Management
              </button>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#Unscheduled">Unscheduled</a></li>
                <li><a class="dropdown-item" href="#">Scheduled</a></li>
                <li><a class="dropdown-item" href="#drivers">Drivers</a></li>
                <li><a class="dropdown-item" href="#drivers">Outlet</a></li>
                <li><a class="dropdown-item" href="#Tracking">Tracking Info</a></li>
              </ul>
            </div>
  
            <img src="Resourses/bell-solid.svg" alt="Notifictions" class="img-fluid" style="height: 30px; position: absolute; top: 30px; right: 9vw;">

          <div class="btn-group dropstart" style="position: absolute; right: 50px; top: 23px;">
            <button class="btn" type="button" data-bs-toggle="dropdown" aria-expanded="false">
              <img src="Resourses/user-solid.svg" alt="Profile" class="img-fluid" style="height: 30px; position: absolute;">
            </button>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Profile</a></li>
              <li><a class="dropdown-item" href="#">Logout</a></li>
            </ul>
          </div>
          
  </nav>
  



  <div class="container">
    <div class="row my-5 text-center bg-info bg-opacity-25 h-75 rounded-4 border">
      <div class="col-4 border-end border-3">
        <h1 class="h5 text-primary mt-2">Delivery Orders</h1>
        <div class="content d-flex mt-4">
          <p class="col border fw-bold ">OrderNo</p>
          <p class="col border fw-bold ">Destination</p>
        </div>
        <div class="content">
          <p class="d-flex justify-content-around">${order.getOrderID()}<span>${order.getDeliveryAddress()}</span></p>
          <p class="d-flex justify-content-around">D000022587 <span>Kalutara</span></p>
          <p class="d-flex justify-content-around">D000022587 <span>Kalutara</span></p>
          <p class="d-flex justify-content-around">D000022587 <span>Kalutara</span></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
        </div>
      </div>
    
  
      <div class="col-8">
       
        <h1 class="h5 text-primary mt-2">Ongoing Deliveriy Schedule</h1>
        <div class="content d-flex mt-4">
          <p class="col border fw-bold ">Destination</p>
          <p class="col border fw-bold ">Driver</p>
          <p class="col border fw-bold ">DeliverNo</p>
          <p class="col border fw-bold ">Delivery Date</p>
          <p class="col border fw-bold ">Delete</p>
        </div>
        
        <div class="content d-flex">
        <c:forEach var = "schedules" items = "${sche}"> 
          <p class="col">${schedules.getDestination()}</p>
          <p class="col">${schedules.getDriver()}</p>
          <p class="col">${schedules.getDeliveryNo()}</p>
          <p class="col">${schedules.getDeliveryDate()}</p>
          <form action="DeleteSchedule" method="post">
          <input type="hidden" name="DeliveryNo" value="${schedules.getDeliveryNo()}">
          <button class="btn btn-warning me-4 col" style="width: 110px; height: 25px; font-size: 11px;" data-bs-toggle="modal" data-bs-target="#modal">DELETE</button>
          </form>
         </c:forEach>
        </div>
       
        <div class="content d-flex">
          <p class="col">Kalutara</p>
          <p class="col">K Perera</p>
          <p class="col">D000025478</p>
          <p class="col">2023/10/12</p>
          <button class="btn btn-warning me-4" style="width: 110px; height: 25px; font-size: 11px;" data-bs-toggle="modal" data-bs-target="#modal">DELETE</button>
        </div>
        <div class="content d-flex">
          <p class="col">Kalutara</p>
          <p class="col">K Perera</p>
          <p class="col">D000025478</p>
          <p class="col">2023/10/12</p>
          <button class="btn btn-warning me-4" style="width: 110px; height: 25px; font-size: 11px;" data-bs-toggle="modal" data-bs-target="#modal">DELETE</button>
        </div>
        <div class="content d-flex">
          <p class="col">Kalutara</p>
          <p class="col">K Perera</p>
          <p class="col">D000025478</p>
          <p class="col">2023/10/12</p>
          <button class="btn btn-warning me-4" style="width: 110px; height: 25px; font-size: 11px;" data-bs-toggle="modal" data-bs-target="#modal">DELETE</button>
        </div>
        
      </div>
      
    </div>
  

  <!-- cards -->
  <form action = "#">
  <section id="drivers">
    <div class="container bg-">
      <div class="row justify-content-center my-3">
        <div class="col-4">
          <div class="card text-center">
            <div class="card-body">
              <h5 class="card-title">Assign Delivery Drivers</h5>
              <p class="card-text d-flex justify-content-around bg-primary mt-5 text-light">
                <span>Saman</span>
                <span>K001478</span>
                <span>Kalutara</span>
              </p>
              <input class="w-100" type="text" placeholder="Orderno" id="driver1">
              <p class="card-text d-flex justify-content-around bg-primary mt-5 text-light">
                <span>Saman</span>
                <span>K001478</span>
                <span>Kalutara</span>
              </p>
              <input class="w-100" type="text" placeholder="Orderno" id="driver2">
              <p class="card-text d-flex justify-content-around bg-primary mt-5 text-light">
                <span>Saman</span>
                <span>K001478</span>
                <span>Kalutara</span>
              </p>
              <input class="w-100" type="text" placeholder="Orderno" id="driver3">
              <p class="card-text d-flex justify-content-around bg-primary mt-5 text-light">
                <span>Saman</span>
                <span>K001478</span>
                <span>Kalutara</span>
              </p>
              <input class="w-100" type="text" placeholder="Orderno" id="driver4">
              <p class="card-text d-flex justify-content-around bg-primary mt-5 text-light">
                <span>Saman</span>
                <span>K001478</span>
                <span>Kalutara</span>
              </p>
              <input class="w-100" type="text" placeholder="Orderno" id="driver5">
              <p class="card-text d-flex justify-content-around bg-primary mt-5 text-light">
                <span>Saman</span>
                <span>K001478</span>
                <span>Kalutara</span>
              </p>
              <input class="w-100" type="text" placeholder="Orderno" id="driver6">


              <button class="btn bg-warning my-4"  data-bs-toggle="modal" data-bs-target="#modal1">Send</button>
            </div>
          </div>
        </div>
    </form>  
    
       
        <div class="col-4" style="position: relative; top: 22vh;">
          <div class="card text-center">
            <div class="card-body">
              <h5 class="card-title">Outlet Contact</h5>
              <p class="card-text d-flex justify-content-around bg-secondary text-light mt-5">
                <span>Kalutara</span>
              </p>
              <input class="w-100" type="text" placeholder="Message" id="input1">
              <p class="card-text d-flex justify-content-around bg-secondary text-light mt-5">
                <span>Kollupitiya</span>
              </p>
              <input class="w-100" type="text" placeholder="Message" id="input2">
              <p class="card-text d-flex justify-content-around bg-secondary text-light mt-5">
                <span>Negambo</span>
              </p>
              <input class="w-100" type="text" placeholder="Message" id="input3">

              <button class="btn bg-warning my-4" data-bs-toggle="modal" data-bs-target="#outletmodal" >Send</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>


  <section class="mt-5" id="Unscheduled">
    <div class="container">
      <div class="row">
        <div class="col bg-warning bg-opacity-75 text-center mt-4">
          <h4 class="mt-3 mb-5">Scheduling <a href="https://calendar.google.com/" target="_blank"> <span class="h6" style="position:absolute; right: 100px;"><i>See Calender>></i></span></a></h4>
          <div class="content d-flex">
            <p class="col-2 border fw-bold ">Order ID</p>
            <p class="col-2 border fw-bold ">Driver</p>
            <p class="col border fw-bold ">Driver's ongoing delivery schedules</p>
            <p class="col border fw-bold ">Date and time</p>
          </div>
          <div class="content d-flex align-items-center mb-4">
            <p class="col-2">4</p>
            <p class="col-2">Kusal Perera.</p>
            <p class="col">2023-10-10</p>
            <input name="date1" class="col" type="datetime" placeholder="Date & Time" id="dat1">
          </div>
          <div class="content d-flex align-items-center mb-4">
            <p class="col-2">5</p>
            <p class="col-2">Adithya Perera</p>
            <p class="col">2023-10-11</p>
            <input name="date2" class="col" type="datetime"  placeholder="Date & Time" id="dat2">
          </div>
          <div class="content d-flex align-items-center mb-4">
            <p class="col-2">7</p>
            <p class="col-2">Kusal Perera.</p>
            <p class="col">2023-10-12</p>
            <input name="date3" class="col" type="datetime"  placeholder="Date & Time" id="dat3">
          </div>
          <div class="content d-flex align-items-center mb-4">
            <p class="col-2">8</p>
            <p class="col-2">Saman Perera.</p>
            <p class="col">2023-10-10</p>
            <input name="date4" class="col" type="datetime"  placeholder="Date & Time" id="dat4">
          </div>
          <button class="btn btn-primary my-3 " data-bs-toggle="modal" data-bs-target="#schedulingmodal">Schedule</button>
        </div>
      </div>
    </div>
  </section>

 <form action="DeliveryData" method = "post">
  <section id="Tracking">
    <div class="container border rounded-3 border-2 my-5 text-center">
      <h5 class="display-6">Tracking Info</h5>
      <div class="row d-flex flex-column">
        <div><input name="orderno" type="text" placeholder="DeliveryNO" class="w-50 mt-3" id="orderno"></div>
        <div><input name="packageno" type="text" placeholder="PackageNO" class="w-50 mt-3" id="packageno"></div>
        <div><input name="trackingno" type="text" placeholder="TrackingNO" class="w-50 mt-3" id="trackingno"></div>
      </div>
      <button class="btn w-25 btn-secondary my-4" onclick="trackingchecking3()">SET</button>
    </div>
  </section>
</form>


  
  <!-- footer -->
  <footer class="bg-dark text-white">
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
            <li><a href="Dashbord.jsp">Home</a></li>
            <li><a href="OrderManagement.jsp">OrderManagement</a></li>
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


  <!-- modal -->

  <div class="modal fade" id="modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">Are You Sure</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" onclick="success()">Yes</button>
        </div>
      </div>
    </div>
  </div>
  
  <div class="modal fade" id="modal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">Select Yes to proceed</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" onclick="checking()">Yes</button>
        </div>
      </div>
    </div>
  </div>
  
  <div class="modal fade" id="outletmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">Select Okay to send</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" onclick="outletchecking1()">Okay</button>
        </div>
      </div>
    </div>
  </div>

  <div class="modal fade" id="schedulingmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">Confirm schedule</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" onclick="schedulingchecking2()">Confirm</button>
        </div>
      </div>
    </div>
  </div>
  


  

    <script src="Resourses/js/bootstrap.bundle.js"></script>
    <script>
      function checking()
{
    var D1 = document.getElementById("driver1").value;
    var D2 = document.getElementById("driver2").value;
    var D3 = document.getElementById("driver3").value;
    var D4 = document.getElementById("driver4").value;
    var D5 = document.getElementById("driver5").value;
    var D6 = document.getElementById("driver6").value;

    if(D1 == '' && D2 == '' && D3 == '' && D4 == '' && D5 == '' && D6 == '')
    {
        alert("Every Feilds can't be empty")
    }
    else
    {
        alert("Send successfully")
    }
}


function success()
{
    alert("Deleted!!")
}


function outletchecking1()
{
    var i1 = document.getElementById("input1").value;
    var i2 = document.getElementById("input2").value;
    var i3 = document.getElementById("input3").value;

    if(i1 == '' && i2 == '' && i3 == '')
    {
        alert("Every Feild can't be empty")
    }
    else
    {
        alert("Send successfully")
    }
}

function schedulingchecking2()
{
    var D1 = document.getElementById("dat1").value;
    var D2 = document.getElementById("dat2").value;
    var D3 = document.getElementById("dat3").value;
    var D4 = document.getElementById("dat4").value;

    if(D1 == '' && D2 == '' && D3 == '' && D4 == '')
    {
        alert("Every Feild can't be empty")
    }
    else
    {
        alert("Set successfully")
    }
}

function trackingchecking3()
{
    var T1 = document.getElementById("orderno").value;
    var T2 = document.getElementById("packageno").value;
    var T3 = document.getElementById("trackingno").value;
    

    if(T1 == '' || T2 == '' || T3 == '')
    {
        alert("Every feild have to be filled")
    }
    else
    {
        alert("Set successfully")
    }
}


    </script>
</body>
</html>