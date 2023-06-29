<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 파라미터 값 받기 -->
	<%
	String id = request.getParameter("id");
	%>
	
	id : <%=id %>
</body>
</html>