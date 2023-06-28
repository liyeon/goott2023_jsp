<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>if else 좋아하는 색상</h1>
<form action="ifTest.jsp">
	<label for="name">이름</label>
	<input type="text" name="name" id="name" placeholder="홍길동"/>
	<label for="color">색상</label>
	<select name="color" id="color">
		<option value="blue" selected>파랑</option>
		<option value="green">초록</option>
		<option value="red">빨강</option>
		<option value="yellow">노랑</option>
	</select>
	<br />
	<input type="submit" value="send" />
</form>
</body>
</html>