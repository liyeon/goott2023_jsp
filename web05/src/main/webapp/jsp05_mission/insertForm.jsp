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
	<h1>INSERT FORM</h1>
	<form action="insert.jsp" method="post">
		<label for="name">이름</label> <input type="text" name="name" id="name" />
		<label for="addr">주소</label> <input type="text" name="addr" id="addr" />
		<label for="grade">학년</label>
		<select name="grade" id="grade">
			<% for (int i=1; i<=6;i++){%>
			<option><%=i %></option>
			<%} %>
		</select>
		<label for="class">학번</label>
		<select name="class" id="class">
			<% for (int i=1; i<=10;i++){%>
			<option><%=i %></option>
			<%} %>
		</select>
		
		<label for="credit">학점</label>
		<select name="credit" id="credit">
			<% for (int i=1; i<=10;i++){%>
			<option><%=i %></option>
			<%} %>
		</select>
		<input type="submit" value="SUBMIT" />
	</form>
</body>
</html>