<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
    	String name = request.getParameter("name");
    	String color = request.getParameter("color");
    	String strCol="";
    	if(color.equals("blue")){
    		strCol="파랑";
    	}else if(color.equals("red")){
    		strCol="빨강";
    	}else if(color.equals("green")){
    		strCol="초록";
    	}else if(color.equals("yellow")){
    		strCol="노랑";
    	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#col{
	width : 100px;
	height : 100px;
	background : <%=color %>;
	}
</style>
</head>
<body>
이름 : <%=name %>
색상 : <%=color %>

<img src="../img/<%=color %>.png" alt="<%=color %>" />

<div id="col"></div>

<h3><%=name %>님이 좋아하는 색상은 <%=strCol %>입니다.</h3>
</body>
</html>