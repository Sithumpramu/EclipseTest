<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Styles\deliveryform.css">
<title>Insert title here</title>
</head>
<body>
<section>
        <div class="card">
        <h2>DELIVERY DETAILS</h2>
        

        <form class="delivery_form" method="post"  action="insert">
            Name:
            <input type="text" name="name">
            <br>
            
            Email:
            <input type="text" name="email">
            <br>
            
            Contact No : 
            <input type="text" name="phone">
            <br>
            
            Delivery address: 
            <input type="text" name="address">
            <br>
        
            <input type="submit" name="submit" value="SUBMIT">
            <input type="reset" name="reset" value="CLEAR DATA">
        </form>
        </div>
</section>

</body>
</html>