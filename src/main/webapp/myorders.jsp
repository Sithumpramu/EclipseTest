<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Success</h1>

	<table>
		<tr>
			<th>OrderID</th>
			<th>Item Name</th>
			<th>Total Price</th>

		</tr>
	</table>


	<c:forEach var="order" items="${Orderlist}" varStatus="loop">
		<div class="foot">
			<h3>${order.getOrderId()}</h3>
			<h3>${order.getTotalPrice()}</h3>
			<c:forEach var="item" items="${order.getItemIds()}">
				<p>${item.getName()}</p>
			</c:forEach>
		</div>
	</c:forEach>



</body>
</html>