<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:forEach var="cus" items="${cusDetails}">

$(cus.Username);
$(cus.FNAme);
$(cus.LName);
$(cus.Email);
$(cus.Modile);
$(cus.pw);



</c:forEach>

</body>
</html>