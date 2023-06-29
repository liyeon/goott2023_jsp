<%@page import="java.net.Inet4Address"%>
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
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String hobby = request.getParameter("hobby");

	if (gender.equals("m")) {
		gender = "남성";
	} else if (gender.equals("f")) {
		gender = "여성";
	}
	
	/* 
	url(uniform resource locator)
	uri(uniform resource Identifier) : 식별자 역할
	*/
	String uri = request.getRequestURI();
	StringBuffer url = request.getRequestURL();
	/* 컨텍스트 루트 가져오기 */
	String ctxPath = request.getContextPath();
	String mod = request.getMethod();
	// ip 주소 v6
	String addr6 = request.getRemoteAddr();
	// ip 주소 v4 
	String addr4 = Inet4Address.getLocalHost().getHostAddress();
	%>
	<%=name%>
	<%=age%>
	<%=gender%>
	<%=hobby%>
	<h1>uri : <%=uri%><br>
	url : <%=url%><br>
	ctxPath : <%=ctxPath %><br>
	mod : <%=mod %><br>
	addr6 : <%=addr6 %><br>
	addr4 : <%=addr4 %></h1>
</body>
</html>