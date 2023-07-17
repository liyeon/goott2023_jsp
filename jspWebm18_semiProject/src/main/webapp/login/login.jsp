<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html style="height:100%;">
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="../css/style.css" media="all" />
</head>
<body style="height:100%;">
<c:choose> 
	<c:when test="${error eq '아이디없음' }"> 
		<p>입력하신 아이디가 없습니다.</p>
	</c:when>
	<c:otherwise> 
		<p>아이디 혹은 비밀번호가 틀립니다.</p>
	</c:otherwise>
</c:choose>
		<a href="login.do" class="btn_mini">다시 시도</a>
</body>
</html>