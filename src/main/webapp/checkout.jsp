<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="CustomerOrder.Item"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Styles/addtocart.css">
<script src="https://kit.fontawesome.com/92d70a2fd8.js"
	crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>

	<div class="container">
		<div class="sidebar">
			<div class="head">
				<p>Total Bill</p>
			</div>

			<c:forEach var="cart" items="${Cartlist}" varStatus="loop">
				<div class="foot">
					<h3>${cart.getName()}</h3>
					<p class="price">Rs.${cart.getPrice()}.00</p>

				</div>
			</c:forEach>

			<h3>Total Bill</h3>
			<c:set var="totalPrice" value="0" />
			<c:forEach var="cart" items="${Cartlist}">
				<c:set var="totalPrice" value="${totalPrice + cart.getPrice()}" />
			</c:forEach>
			<p class="price">Rs.${totalPrice}.00</p>


		</div>
	</div>

	<form action="./DeliveryOrder.jsp" method="post">
		<button type="submit" class="btn">Delivery</button>

	</form>


</body>
</body>
</html>