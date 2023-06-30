<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
<h1>DELETE</h1>
	<form action="deletePro.jsp" method="post">
		<label for="id">아이디</label> <input type="text" name="id" id="id"required="required"/>
		<label for="pw">비밀번호</label> <input type="text" name="pw" id="pw" required="required"/>
		<input type="submit" value="send" />
	</form>
</body>
</html>