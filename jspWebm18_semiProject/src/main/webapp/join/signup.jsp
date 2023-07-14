<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/siginup.jsp</title>
<link rel="stylesheet" href="../css/style.css" media="all" />
</head>
<body>
<c:choose> 
	<c:when test="${isSuccess }"> 
		<p><strong>${id }</strong>회원님이 가입되었습니다.</p>
		<a href="loginform.jsp" class="btn_mini">로그인하러가기</a>
	</c:when>
	<c:otherwise> 
		<p>이미 가입된 아이디입니다.</p>
		<a href="join.do" class="btn_mini">다시 가입하러가기</a>
	</c:otherwise>
</c:choose>
</body>
</html>