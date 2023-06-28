<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    	String name = request.getParameter("name");
    	String age = request.getParameter("age");
    	String food = request.getParameter("food");
    	String strFood="";
    	if(food.equals("banana")){
    		strFood="바나나";
    	}else if(food.equals("apple")){
    		strFood="사과";
    	}else if(food.equals("jjambbong")){
    		strFood="짬뽕";
    	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="form.css"/>
</head>
<body>
<h3>
이름 : <%=name %><br>
나이 : <%=age %>
</h3>


<img src="../img/<%=food %>.png" alt="<%=food %>" />
<h1 style="width:100%;text-align:center;"><%=name %>님은 <%=strFood %>를 좋아합니다.</h1>


</body>
</html>