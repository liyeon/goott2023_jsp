<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>공지 디테일!</title>
<link rel="stylesheet" href="../css/style.css" media="all" />
</head>
<body>
<h1>디테이이일</h1>
<table>
	<colgroup>
		<col width="15%" />
		<col width="35%" />
		<col width="15%" />
		<col width="35%" />
	</colgroup>
	<caption>DETAIL</caption>
	<tbody>
	<tr>
		<th>글번호</th>
		<td>${dto.bno}</td>
		<th>조회수</th>
		<td>${dto.bcnt}</td>
	</tr>
	<tr>
		<th>작성자</th>
		<td>${dto.bwriter}</td>
		<th>작성시간</th>
		<td>${dto.bdate}</td>
	</tr>
	<tr>
		<th>제목</th>
		<td colspan="3" class="left">${dto.btitle}</td>
	</tr>
	
	<tr id="content">
		<th>내용</th>
		<td colspan="3" class="left">${dto.bcontent}</td>
	</tr>
	<tr>
		<th>첨부</th>
		<td colspan="3" class="left">첨부파일.docx</td>
	</tr>
	</tbody>
</table>
<div class="a_wrap">
	<a href="edit.do?c=${dto.bno}">수정</a>
	<a href="delProc.do?c=${dto.bno}">삭제</a>
	<a href="list.do">목록</a>
</div>
</body>
</html>