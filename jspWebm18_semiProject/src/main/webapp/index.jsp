<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>벅스</title>
</head>
<body>
<c:choose>
	<c:when test="${not empty sessionScope.uid }">
	<%
	response.sendRedirect("./customer/notice.do");
	%>
	</c:when>
	<c:otherwise>
	<%
	response.sendRedirect("./login/login.do");
	%>
	</c:otherwise>
</c:choose>
</body>
</html>