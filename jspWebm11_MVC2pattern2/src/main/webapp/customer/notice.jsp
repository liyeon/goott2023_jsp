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
	<h1>노티이이쓰</h1>
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
				<td>${tmp.seq }</td>
				<td class="left"><a href="noticeDetail.do?c=${tmp.seq }">${tmp.title }</a></td>
				<td>${tmp.writer }</td>
				<td>${tmp.regdate }</td>
				<td>${tmp.hit }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="a_wrap">
		<a href="noticeReg.do">글쓰기</a>
	</div>
</body>
</html>