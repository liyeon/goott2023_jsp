<%@page import="java.sql.* "%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>벅스: 공지사항</title>
<link rel="stylesheet" href="../css/style.css" media="all" />
<link rel="shortcut icon" href="../img/faviconBugs.ico" />
<script>
function clearVal(){
	var inputVal = document.getElementById("q");
	inputVal.value="";
}
</script>
</head>
<body style="height:auto">
<header>
	<h1><img src="../img/logo.svg" alt="" /></h1>
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
		<li><a href="../login/logoutProc.do">로그아웃</a></li>
	</c:if>
	</ul>
</header>




<section>
<table>
	<tr>
		<td>번호</td>
		<td>말머리</td>
		<td>제목</td>
		<td>작성자</td>
		<td>작성일</td>
		<td>조회수</td>
	</tr>
	
<c:forEach items="${list }" var="dto">
	<tr>
		<td>${dto.bno }</td>
		<td>
			
				<c:choose>
					<c:when test="${dto.bcategory eq '공지사항'}">
					<span class="category">
					</c:when>
					<c:when test="${dto.bcategory eq '이벤트'}">
					<span class="category green">
						
					</c:when>
					<c:when test="${dto.bcategory eq '소식'}">
					<span class="category blue">
					</c:when>
					<c:otherwise>
					<span class="category gray">
					</c:otherwise>
				</c:choose>
					${dto.bcategory }
				</span>
		</td>
		<td><a href="noticeDetail.do?c=${dto.bno }&h=${dto.bhit }">${dto.btitle }</a></td>
		<td>${dto.bwriter }</td>
		<td>${dto.bdate }</td>
		<td>${dto.bhit }</td>
	</tr>
</c:forEach>

</table>
<div class="right">
<c:if test="${not empty sessionScope.uid }">
	<a href="noticeReg.do" class="btn_mini">글쓰기</a>
</c:if>
</div>
</section>
</body>
</html>