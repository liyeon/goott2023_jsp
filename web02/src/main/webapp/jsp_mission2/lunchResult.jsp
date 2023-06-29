<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/form.css" />
</head>
<body>
	<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String lunch = request.getParameter("lunch");
	
	String lmenu="";
	if(lunch.equals("blackbeannoodle")){
		lmenu="짜장면";
	}else if(lunch.equals("jjambbong")){
		lmenu="짬뽕";
	}else if(lunch.equals("friedrice")){
		lmenu="볶음밥";
	}
	%>
	<h1 style="width:auto;"><%=id %>님의 점심메뉴는 <%=lmenu %>입니다.</h1>
</body>
</html>