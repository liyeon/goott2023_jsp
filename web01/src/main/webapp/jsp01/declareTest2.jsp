<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2>선언문 샘플</h2>
	<%!
		String id="blue";
		public String getId(){
			return id;
		}
	%>
	
	<h3>id변수 : <%=id %></h3>
	<h3>메소드 접근 : <%=getId() %></h3>
</body>
</html>