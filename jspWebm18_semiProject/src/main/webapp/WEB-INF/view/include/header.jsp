<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>벅스</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" media="all" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/faviconBugs.ico" />
</head>
<body>
<script>
function clearVal(){
	var inputVal = document.getElementById("q");
	inputVal.value="";
}
</script>
</head>
<body>
<header>
	<h1 onclick="location.href='notice.do'"><img src="../img/logo.svg" alt="" /></h1>
	<div class="form_search">
		<form action="notice.do" method="get">
			<select name="f" >
				<option value="btitle" ${param.f=="btitle"?"selected":"" }>제목</option>
				<option value="bcontent" ${param.f=="bcontent"?"selected":"" }>내용</option>
			</select>
			<input type="text" name="q" value="${query }" id="q" onclick="clearVal()"/>
			<input type="submit" value=" "/>
		</form>
	</div>
	<ul>
	<c:if test="${empty sessionScope.uid }">
		<li><a href="../login/login.do">로그인</a></li>
		<li><a href="../join/join.do">회원가입</a></li>
	</c:if>
	<c:if test="${not empty sessionScope.uid }">
		<li>${uid }님 반값습니다! | </li>
		<li><a href="../login/logoutProc.do">로그아웃</a></li>
	</c:if>
	</ul>
</header>