<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="CustomerOrder.Category" %>
<%@ page import="CustomerOrder.Item" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Styles\headerStyles.css" />
    <link rel="stylesheet" href="Styles\home.css" />
    <link rel="stylesheet" href="Styles\footer.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    
    
<meta charset="ISO-8859-1">
<title>Shopping cart</title>
</head>


<body>

	<%@include file="header.jsp" %>

    <!-- Product List -->
    <section class="products" id="products">
    
      <h1 class="heading">Product Category</h1>

      <div class="box-container1">
      
     <c:forEach var="category" items="${Clist}">
       	 <div class="box">
          <img src="Images/${category.getImage() }" />
          <h3>${category.getCName()}</h3>
       
          <form action="./ItemServlet" method ="get">
        	<input type="hidden" name="cid" value="${category.getCID()}"/>
        	<button type="submit"  class="btn">Shop Now</button>
      	</form>
         
        </div>
        
     </c:forEach>
    

    

    <script src="js/script.js"></script>
</body>
</html>