<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>ifTest</h2>
	<%
	String str = "";
	int val = 4;
	if (val > 5) {
		str = "변수 val가 5보다 크다.";
	%>
	<%=str%>
	<%
	} else {
	str = "변수 val가 5보다 크지않다.";
	%>
	<%=str%>
	<%
	}
	%>

</body>
</html>