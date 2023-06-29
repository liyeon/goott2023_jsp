<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/form.css" media="all" />
</head>
<body>
	<h1>whileTestForm</h1>
	<form action="whileTest.jsp" method="post">
		<label for="number">곱해질값</label>
		<input type="number" name="number" id="number" required/>
		<label for="number2">곱해질횟수</label>
		<input type="number" name="number2" id="number2" required/>
		<input type="submit" value="send" />
	</form>
</body>
</html>