<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<table>
		
		
		<tr>
			<td>User ID</td>
			<td>${cusdetails.getUsername()}</td>
		</tr>
		<tr>
			<td>First Name</td>
			<td>${cusdetails.getFNAme()}</td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td>${cusdetails.getLName()}</td>
		</tr>
		<tr>
			<td>Email</td>
			<td>${cusdetails.getEmail()}</td>
		</tr>
		<tr>
			<td>Mobile number</td>
			<td>${cusdetails.getModile()}</td>
		</tr>
		<tr>
			<td>Password</td>
			<td>${cusdetails.getPW()}</td>
		</tr>
	
		
	</table>
	
	
	
	
		<input type="button" name="update" value="Update">
	
	

	
		<input type="button" name="delete" value="Delete account">
	

	
</body>
</html>


