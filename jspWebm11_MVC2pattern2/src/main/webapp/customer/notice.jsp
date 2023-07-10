<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>NOTICE</title>
<link rel="stylesheet" href="../css/style.css" media="all" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script>
	function clearVal(){
		const inputVal = document.querySelector("#q");
		inputVal.value="";
		console.log(inputVal);
	}
</script>
</head>
<body>
	<div class="form_search">
		<h1>노티이이쓰</h1>
		<form action="notice.do" method="get" class="search">
			<select name="f">
				<option value="title" ${param.f=="title"?"selected":"" }>제목</option>
				<option value="content" ${param.f=="content"?"selected":""}>내용</option>
			</select>
			<input type="text" name="q" value="${query }" id="q" onclick="clearVal()" />
			<input type="submit" />
		</form>
	</div>
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
				<td class="left"><a href="noticeDetail.do?c=${tmp.seq }&hit=${tmp.hit }">${tmp.title }</a></td>
				<td>${tmp.writer }</td>
				<td>${tmp.regdate }</td>
				<td>${tmp.hit }</td>
			</tr>
			</c:forEach>
			<c:if test="${empty list }">
				<tr>
					<td colspan="5">검색결과가 없습니다.</td>
				</tr>
			</c:if>
		</tbody>
	</table>
	<div class="a_wrap">
		<a href="noticeReg.do">글쓰기</a>
	</div>
</body>
</html>