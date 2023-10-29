<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="CustomerOrder.Item" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Styles\headerStyles.css" />
    <link rel="stylesheet" href="Styles\product.css" />
    <link rel="stylesheet" href="Styles\footer.css" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<%@include file="header.jsp" %>


      <section class="category" id="category">
        <h1 class="heading">Vegetables</h1>

        <div class="box-container">
           <c:forEach var="item" items="${Ilist}">
          <div class="box">
          
            <img src="Images/${item.getImage()}" />
            <h3>${item.getName()}</h3>
            <p class="price">Rs.${item.getPrice()}0</p>

            <a href="#" class="btn" >
            <div class="fa fa-shopping-cart" id="cart-btn"></div>
              Add to cart</a>
            
          </div>
          
          </c:forEach>
</form>
          
        </div>
      </section>

<%@include file="footer.jsp" %>

      <script src="js/script.js"></script>
</body>
</html>