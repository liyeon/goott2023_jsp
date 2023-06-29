<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>로그인폼</title>
<link rel="stylesheet" href="../css/form.css" media="all" />
</head>
<body>
	<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	// 리다이렉트는 제어권이 완전히 넘어가서 매개 역할을 못해준다.
	// 포워딩은 토스해줘서 제어권이 유지된다.
	// response.sendRedirect("logout2.jsp");
	%>
	<%-- <%=id %> --%>
	
	<!-- 포워딩 -->
	<jsp:forward page="logout2.jsp"></jsp:forward>
</body>
</html>