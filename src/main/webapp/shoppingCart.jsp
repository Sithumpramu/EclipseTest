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
				<p>My Cart</p>
			</div>

			<c:forEach var="cart" items="${Cartlist}" varStatus="loop">
				<div class="foot">
					<h3>${cart.getName()}</h3>
					<p class="price">Rs.${cart.getPrice()}</p>
				</div>

				<form action="./editItem" method="post" target="targetframe"
					id="itemEditForm${loop.index}">
					<input type="hidden" name="id" value="${cart.getItemId()}" /> <input
						type="hidden" name="price" value="${cart.getPrice()}" /> <input
						type="hidden" name="unitPrice" value="${cart.getUnitPrice()}" />
					<input type="number" name="selectedQty" min=0
						value="${cart.getQuantity()}" />
				</form>

				<form action="./deleteItem" method="post" target="targetframe">
					<input type="hidden" name="id" value="${cart.getItemId()}" />
					<button type="submit">Remove</button>
				</form>
			</c:forEach>

		</div>
	</div>

	<form action="./CheckoutServlet" method="get">
		<button type="submit" class="btn">Check Out</button>
	</form>

	<script>
		var selectedQtyInputs = document
				.querySelectorAll('input[name="selectedQty"]');

		selectedQtyInputs.forEach(function(input, index) {
			input.addEventListener('change', function() {
				var itemForm = document.getElementById('itemEditForm' + index);
				itemForm.submit();
			});
		});
	</script>
</body>
</body>
</html>