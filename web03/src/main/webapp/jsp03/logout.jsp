<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 로그아웃처리 -->
	<%
	application.removeAttribute("id");//모든 세션 제거
	response.sendRedirect("sessionTestForm1.jsp");
%>
</body>
</html>