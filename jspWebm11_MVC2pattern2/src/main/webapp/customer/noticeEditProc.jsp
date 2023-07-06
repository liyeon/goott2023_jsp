<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	/* 디비에 해당 글 수정 */
	String seq = request.getParameter("c");
%>
<%=seq %>
</body>
</html>