<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>미션 인설트트트ㅡ</title>
<link rel="stylesheet" href="../css/form.css" media="all" />
</head>
<body>
	<h1>상품등록</h1>
	<form action="insert.jsp" method="post">
		<label for="name">상품명</label> <input type="text" name="name" id="name" />
		<label for="item">상품간략소개</label> <input type="text" name="item" id="item" />
		<label for="price">상품가격</label> <input type="text" name="price" id="price" />

		<input type="submit" value="등록" />
	</form>
</body>
</html>