<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 주석 -->
	<%-- 
		선언문 : <%! %> 전역변수 선언
		스크립트릿 (코드 블락)(scriptlet) : <% %> 자바 프로그래밍 가능
		표현식 : <%= %> 화면에 값 출력 
	--%>
	<!-- 코드블락 -->
	<%
	String str1 = "게임 ID : " + str2;
	String username="username : "+str2;
	%>
	<!-- 전역변수 -->
	<%!String str2 = "blue";%>
	접속자 : <%=str1 %><br>
	접속자 : <%=str2 %><br>
	접속자 : <%=username %>
</body>
</html>