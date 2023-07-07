<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>index</title>
<link rel="stylesheet" href="./css/style.css" media="all" />
</head>
<body>
	<h1>첫화면</h1>
	
	<table>
		<thead>
			<tr>
				<th>글번호</th>
				<th>공고명</th>
				<th>회사</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="tmp" items="${list }">
				<tr>
					<td>${tmp.no }</td>		
					<td><a href="./job/detail.do?num=${tmp.no }">${tmp.title }</a></td>
					<td>${tmp.company }</td>		
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="a_wrap">
		<a href="./job/insertForm.do">직업등록</a>
	</div>
</body>
</html>