<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    
<title>Insert title here</title>
</head>
<body>
<h2>dhgc</h2>
<p>${test}</p>
 <c:forEach var ="tests" items = "${test}">
  
  <P>${tests.getName()}</P>
  <p>${tests.getImage()}</p>
  
  </c:forEach>
  
  <p>${test}</p>
  
 
 

</body>
</html>