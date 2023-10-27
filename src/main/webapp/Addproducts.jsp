<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet">
     <title>Add products</title>
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

        <div class="container tm-mt-big tm-mb-big mt-5 bg-secondary text-center" style="width:80vw ; height:80vh">
            <div class="row">
                <div class="col-xl-7 col-lg-5 col-md-6 col-sm-12 mx-auto">
                    <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                        <div class="row">
                            <div class="col-12">
                                <h2 class="tm-block-title d-inline-block">Add Product</h2>
                            </div>
                        </div>
                        <div class="tm-edit-product-row" style="position:absolute; right:20vw; width:40vw" >
                            <div class="col-xl-6 col-lg-6 col col-md-12">
                                <form action="insert" method="POST" class="tm-edit-product-form">
                                 <div class="form-group mb-3">
                                    <label for="category"> Category ID</label><br>
                                    <select class="custom-select tm-select-accounts mt-2" id="category" name="CID" onclick="checkpid()">
                                        <option selected>Select CID</option>
                                        <option value="1" id="1">1</option>
                                        <option value="2" id="2">2</option>
                                        <option value="3" id="3">3</option>
                                        <option value="4" id="4">4</option>
                                        <option value="5" id="5">5</option>
                                        <option value="6" id="6">6</option>
                                        <option value="7" id="7">7</option>
                                        <option value="8" id="8">8</option>
                                        <option value="9" id="9">9</option>
                                    </select>
                                </div>
                                <div class="form-group mb-3">
                                    <label for="name">Product name</label>
                                    <input id="name" name="name" type="text" class="form-control validate"required/>
                                </div>
                               
                                <div class="form-group mb-3">
                                    <lablel for="price">Product Price</lablel>
                                    <input id="price" name="price" type="price" class="form-control validate"required />
                                </div>
                                <div class="form-group mb-3 col-xl-3 col-lg-6 col col-md-12">
                                    <lablel for="Quantity">Units in Stock</lablel>
                                    <input id="Quantity" name="Quantity" type="quantity" class="form-control validate" required/>
                               
                                    <lablel for="re-stock">Re-Stock level</lablel>
                                    <input id="re-stock" name="re-stock" type="re-stock" class="form-control validate" >
                                </div>
                             
                             
                              <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                                    <div class="tm-product-img-dummy mx-auto">
                                        <i class="fas fa-cloud-upload-alt tm-upload-icon"  onclick="document.getElementById('fileInput').click();"></i>
                                    </div>
                                    <div class="custom-file mt-3 mb-3">
                                        <input id="fileInput" name="image" type="file" style="display: none;"/>
                                        <input type="button " class="btn btn-primary btn-block mt-3" style="position: relative; right:2.5vw " value="Upload Product Image" 
                                        onclick="document.getElementById('fileInput').click();"/>
                                    </div>
                                </div>
                             
                                <div class="col-12 p-4 m-5">
                                    <button type="submit" class="btn btn-primary btn-block text-uppercase " onclick="checkform()" style="position:relative; right:3.5vw; bottom: 5vh;">Add Product Details</button>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
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
  </nav>
    <script src="bootstrap-5.3.2-dist/js/bootstrap.bundle.js" ></script>
    <script>
      function checkform()
      {
        var label1=document.getElementById("name").value;
        var label2=document.getElementById("price").value;
        var label3=document.getElementById("Quantity").value;
        var label4=document.getElementById("re-stock").value;

        if(label1===''|| label2===''|| label3===''|| label4==='')
        {
          event.preventDefault();
          alert("fields can't be empty....!");
        }

        else
        {
           alert("Add product details successfully....!");
        }
      }
      
      function checkpid()
      {
    	  var option1=document.getElementById("P01").value;
    	  var option2=document.getElementById("P02").value;
    	  var option3=document.getElementById("P03").value;
    	  var option4=document.getElementById("P04").value;
    	  var option5=document.getElementById("P05").value;
    	  var option6=document.getElementById("P06").value;
    	  var option7=document.getElementById("P07").value;
    	  var option8=document.getElementById("P08").value;
    	  var option9=document.getElementById("P09").value;
      }
    </script>
</body>    
</html>