<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>폼!!!!</title>
<link rel="stylesheet" href="form.css"/>
</head>
<body>
	<h1>ifTest</h1>
	<form action="declareTest.jsp" method="get">
		<label for="name">이름</label>
		<input type="text" name="name" id="name"
				placeholder="홍길동" autofocus required/>
		<input type="submit" value="확인" />
	</form>
</body>
</html>