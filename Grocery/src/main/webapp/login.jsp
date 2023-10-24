<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Form</title>
</head>
<body>

<h2>Login Form</h2>

<form action="login" method="post">
    <div>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
    </div>

    <div>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
    </div>

    <div>
        <input type="submit" value="Login">
    </div>
</form>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:forEach var="cus" items="${cusdetails}">


<c:set var="id" value="${cus.username}"/>
<c:set var="name" value="${cus.FNAme}"/>
<c:set var="name2" value="${cus.LName}"/>

<c:set var="modile" value="${cus.modile}"/>
<c:set var="pw" value="${cus.PW}"/>

<h1>${cus.username}</h1>
<h1>${cus.FNAme}</h1>
<h1>${cus.LName}</h1>

<h1>${cus.modile}</h1>
<h1>${cus.PW}</h1>



</c:forEach>


</body>
</html>
