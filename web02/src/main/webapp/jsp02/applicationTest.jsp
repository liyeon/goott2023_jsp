<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String info = application.getServerInfo();
	String path = application.getRealPath("/");
	application.log("로그기록 : "+ info);
%>

<p>웹 컨테이너 버전 이름 : <%=info %></p>
<p>웹 어플리케이션 로컬 시스템 경로 : <%=path %></p>
</body>
</html>