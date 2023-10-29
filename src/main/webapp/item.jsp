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
      
        	<h1 class="heading">${itemCategory.getCName()}</h1>

        	<div class="box-container">
        	
        
           		<c:forEach var="item" items="${Ilist}">
          
          		<div class="box">
          			<img src="Images/${item.getImage()}" />
            		<h3>${item.getName()}</h3>
            		<p class="price">Rs.${item.getPrice()}0</p>
					
					
					 <form action="./shoppingCartServlet" method ="post">
				
        				<input type="hidden" name="id" value="${item.getID()}"/>
        				<input type="hidden" name="name" value="${item.getName()}"/>
        				<input type="hidden" name="price" value="${item.getPrice()}"/>
        				
        				<button  type="submit" id="cart-btn"><div class="fa fa-shopping-cart">Add to cart</div></button>	
      				</form>

            		
            
          		</div>
          
          		</c:forEach>
			
          
        </div>
      </section>

<%@include file="footer.jsp" %>

      <script src="js/script.js"></script>
     <script>
     const items=document.getElementById("itemsArr");
     console.log(items)
   	var itemArr=[]
   	
   	function additem(id,name,price){
   		var item={
   				itemId:id,
   				itemName:name,
   				itemPrice:price
   		};
   		
   		
   		itemArr.push(item)
   		items.value=itemArr
  		console.log(itemArr)
  		console.log(items)
   	}
  
      	
      
      </script>
</body>
</html>