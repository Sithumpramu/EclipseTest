<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Management</title>
    <link rel="stylesheet" href="Resourses/css/bootstrap.css">
</head>
<body class="bg-primary bg-opacity-25">
  <nav class="navbar justify-content-center bg-secondary">
        <img src="Resourses/logo.png" class="img-fluid p-2 bg-secondary" style="width: 220px;" alt="logo">
        <a href="#" class="btn text-muted fs-5">Order management</a>

        <div class="dropdown-center">
            <button class="btn fw-bold fs-5 dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
              Delivery Management
            </button>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="DeliverManagement.jsp">Unscheduled</a></li>
              <li><a class="dropdown-item" href="DeliverManagement.jsp">Scheduled</a></li>
              <li><a class="dropdown-item" href="DeliverManagement.jsp">Drivers</a></li>
              <li><a class="dropdown-item" href="DeliverManagement.jsp">Outlet</a></li>
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



    <div class="row m-5 h-75">
        <div class="col-8">
            <h4 class="p-2">New Orders</h4>
            <div class="bg-primary bg-opacity-50 border border-3 border-dark p-4 my-4" style="height: 65vh;">
                
                    <div class="d-flex">
                        <input type="checkbox">
                        <p class="m-3">Lorem ipsum dolor sit amet, 
                        <span>consectetur adipisicing elit.</span>
                        <span></span></p>
                        <!-- Order no,date,pickup or delivey -->
                    </div>
                    <div class="d-flex">
                        <input type="checkbox">
                        <p class="m-3">Lorem ipsum dolor sit amet, 
                        <span>consectetur adipisicing elit.</span>
                        <span></span></p>
                    </div>
                    <div class="d-flex">
                        <input type="checkbox">
                        <p class="m-3">Lorem ipsum dolor sit amet, 
                        <span>consectetur adipisicing elit.</span>
                        <span></span></p>
                    </div>
                    
                <div class="my-5 d-flex justify-content-around" style="position: relative; top: 170px;">
                    <a class="btn btn-light" data-bs-toggle="offcanvas" href="#offcanvasinform" role="button" aria-controls="offcanvas">Remind Outlet</a>
                    <a class="btn btn-light mx-5" href="Deliverymanagment.html">Delivery Management</a>
                </div>
                

            </div>
        </div>
    
        <div class="col-4">
          <h1 class="h5 text-danger p-2">Cancelled Oders</h1>
            <div class="bg-primary bg-opacity-25 p-2 border border-3 border-dark p-4 my-4" style="position: relative; top: 4px; height: 65vh;" >
                <p>Lorem, ipsum dolor <span></span><span></span></p>
                <p>Lorem, ipsum dolor <span></span><span></span></p>
                <p>Lorem, ipsum dolor <span></span><span></span></p>
                <p>Lorem, ipsum dolor <span></span><span></span></p>
                <!-- orderno delivery type and Cancelled date -->
                <div class="d-flex justify-content-center" style="position: relative; top: 210px;">
                    <a href="Deliverymanagment.html" class="btn fw-bold">View Delivery Schedule</a>
                    <!-- view delivery schedule and delete the relevent schedule it will send a message to the driver bt the system. -->
                    <a class="btn fw-bold" data-bs-toggle="offcanvas" href="#offcanvascancel" role="button" aria-controls="offcanvas">Cancel Order Processing</a>
                    <!-- a message will send to the admin and staff of the relavent outlet. -->
                </div>
                
            </div>
        </div>
    </div>

    <!-- offcanvas -->
    <div class="offcanvas offcanvas-end bg-secondary" tabindex="-1" id="offcanvasinform" aria-labelledby="offcanvas">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasLabel">Contacts</h5>
        <h5 class="offcanvas-title" id="offcanvasLabel">Inform Pickup orders</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <form>
          <label class="form-label">Kalutara - <span><a href="#">staffkalutara@shopmart.com</a></span></label>
          <input type="text" class="form-control" id="no1" placeholder="orderno">
          <label class="from-label mt-4">Kollupitiya - <span><a href="#">staffkollupitiya@shopmart.com</a></span></label>
          <input type="text" class="form-control  mt-1" id="no2" placeholder="orderno">
          <label class="form-label mt-4">Negambo - <span><a href="#">staffnegambo@shopmart.com</a></span></label>
          <input type="text" class="form-control" id="no3" placeholder="orderno">
          <button class="btn btn-primary mt-5" onclick="check()">Send</button>
        </form>
      </div>
    </div>

    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvascancel" aria-labelledby="offcanvas">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasLabel">Contacts</h5>
        <h5 class="offcanvas-title text-danger" id="offcanvasLabel">Cancelled orders</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <form>
          <label class="form-label">Kalutara - <span><a href="#">staffkalutara@shopmart.com</a></span></label>
          <input type="text" class="form-control" id="no4" placeholder="orderno">
          <label class="from-label mt-4">Kollupitiya - <span><a href="#">staffkollupitiya@shopmart.com</a></span></label>
          <input type="text" class="form-control mt-1" id="no5" placeholder="orderno">
          <label class="form-label mt-4">Negambo - <span><a href="#">staffnegambo@shopmart.com</a></span></label>
          <input type="text" class="form-control"  id="no6" placeholder="orderno">
          <button class="btn btn-danger mt-5" onclick="check1()">Cancel Processing</button>
        </form>
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
              <li><a href="Dashbord.jsp">Home</a></li>
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
    


<script src="Resourses/js/bootstrap.bundle.js"></script>
<script>
  

function check()
{
  var orderno1 = document.getElementById("no1").value;
  var orderno2 = document.getElementById("no2").value;
  var orderno3 = document.getElementById("no3").value;

  if(orderno1=='' &&  orderno2=='' && orderno3=='')
  {
    event.preventDefault;
    alert("Every feild Can't be empty");
  }
  else
  {
    alert("Send successfully");
  }
}


function check1()
{
  var orderno4 = document.getElementById("no4").value;
  var orderno5 = document.getElementById("no5").value;
  var orderno6 = document.getElementById("no6").value;

  if(orderno4=='' &&  orderno5=='' && orderno6=='')
  {
    event.preventDefault;
    alert("Every feild Can't be empty");
  }
  else
  {
    alert("Send successfully");
  }
}
</script>

</body>
</html>


