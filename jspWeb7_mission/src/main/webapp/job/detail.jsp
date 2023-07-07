<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>디테일!</title>
<link rel="stylesheet" href="../css/style.css" media="all" />
</head>
<body>
<h1>디테이이일</h1>
<h1>${dto.title }</h1>
<div class="a_wrap">
	<a href="updateForm.do?num=${dto.no}">수정</a>
	<a href="delete.do?num=${dto.no}">삭제</a>
	<a href="../index.do">목록</a>
</div>
</body>
</html>