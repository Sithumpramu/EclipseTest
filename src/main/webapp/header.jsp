<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Styles\headerStyles.css" />
<link rel="stylesheet" href="Styles\home.css" />
<link rel="stylesheet" href="Styles\footer.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap"
	rel="stylesheet" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<header class="header">
		<li class="menu"><img src="Images\logo.png" class="logo" /></li>

		<nav class="navbar">
			<a href="homepage.jsp">Home</a> <a href="homepage.jsp">Categories</a>
			<a href="contact.html">Contact Us</a>

			<form action="./OrderServlet" method="get">
				<button type="submit" class="navbar-btn">My Orders</button>
			</form>

		</nav>

		<div class="icons">
			<div class="fa fa-search" id="search-btn"></div>

			<!-- <a href="shoppingCart.jsp"> -->
			<button type="submit" id="display-cart-button">

				<div class="fa fa-shopping-cart" id="cart-btn"></div>
			</button>

			<!--</a>-->



			<div class="fa fa-user" id="login-btn"></div>

		</div>


		<div id="myModal" class="modal">

			<!-- Modal content -->
			<div class="modal-content">
				<span class="close">&times;</span>
				<iframe src="shoppingCart.jsp" name="targetframe"
					class="cart-iframe" allowTransparency="true" scrolling="yes"
					frameborder="0"> </iframe>
			</div>

		</div>

		<form class="search-form">
			<input type="search" id="search-box" placeholder="Search Here...." />
			<label for="search-box" class="fa fa-search"></label>
		</form>
	</header>

	<section class="home" id="home">
		<div class="content">
			<h3>Fresh and best products for you.</h3>
			<p>We provide you............</p>

			<a href="#" class="btn">Shop Now</a>
		</div>
	</section>



	<script>
		var modal = document.getElementById("myModal");
		var btn = document.getElementById("display-cart-button");
		var span = document.getElementsByClassName("close")[0];
		btn.onclick = function() {
			modal.style.display = "block";
		}
		span.onclick = function() {
			modal.style.display = "none";
		}
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>


</body>
</html>