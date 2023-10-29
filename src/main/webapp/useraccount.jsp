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
		<c:forEach var="user" items="${UserDet}">
	
		<c:set var="id" value="${user.getId() }"/>
		<c:set var="fname" value="${user.getFname()}"/>
		<c:set var="lname" value="${user.getLname() }"/>
		<c:set var="Email" value="${user.getEmail() }"/>
		<c:set var="mobile" value="${user.getMobile() }"/>
		<c:set var="password" value="${user.getPassword() }"/>
		
		
		<tr>
			<td>User ID</td>
			<td>${user.getId()}</td>
		</tr>
		<tr>
			<td>First Name</td>
			<td>${user.getFname()}</td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td>${user.getLname()}</td>
		</tr>
		<tr>
			<td>Email</td>
			<td>${user.getEmail()}</td>
		</tr>
		<tr>
			<td>Mobile number</td>
			<td>${user.getMobile()}</td>
		</tr>
		<tr>
			<td>Password</td>
			<td>${user.getPassword()}</td>
		</tr>
	
		</c:forEach>
	</table>
	
	<c:url value="updateProfile.jsp" var="userUpdate">
		<c:param name="id" value="${id}"/>
		<c:param name="fname" value="${fname}"/>
		<c:param name="lname" value="${lname}"/>
		<c:param name="Email" value="${Email}"/>
		<c:param name="mobile" value="${mobile}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	
	<a href="${userUpdate}">
		<input type="button" name="update" value="Update">
	</a>
	<br>
	
	<c:url value="deleteAccount.jsp" var="userDelete">
		<c:param name="id" value="${id}"/>
		<c:param name="fname" value="${fname}"/>
		<c:param name="lname" value="${lname}"/>
		<c:param name="Email" value="${Email}"/>
		<c:param name="mobile" value="${mobile}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	<a href="${userDelete}">
		<input type="button" name="delete" value="Delete account">
	</a>
	
</body>
</html>