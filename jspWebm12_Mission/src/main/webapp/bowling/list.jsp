<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>NOTICE</title>
<link rel="stylesheet" href="../css/style.css" media="all" />
</head>
<body>
<div class="login_txt">
	<c:if test="${empty sessionScope.uid }">
		<a href="../login/login.do">로그인</a>
		<a href="#">회원가입</a>
	</c:if>
	<c:if test="${not empty sessionScope.uid }">
		<a href="../login/logoutProc.do">로그아웃</a>
	</c:if>
</div>

	<h1>볼링 리스트</h1>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="tmp" items="${list }">
			<tr>
				<td>${tmp.bno }</td>
				<td class="left"><a href="detail.do?c=${tmp.bno }&hit=${tmp.bcnt }">${tmp.btitle }</a></td>
				<td>${tmp.bwriter }</td>
				<td>${tmp.bdate }</td>
				<td>${tmp.bcnt }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="a_wrap">
		<a href="insert.do">글쓰기</a>
	</div>
</body>
</html>