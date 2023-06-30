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
<h1>상품삭제</h1>
	<form action="delete.jsp" method="post">
		<label for="num">번호</label> <input type="text" name="num" id="num"required="required"/>
		<input type="submit" value="send" />
	</form>
</body>
</html>