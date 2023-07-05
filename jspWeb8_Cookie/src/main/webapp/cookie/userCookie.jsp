<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>userCookie.jsp</title>
</head>
<body>
<h2>useCookie.jsp</h2>
<%
Cookie[] cookies=request.getCookies();
if(cookies!=null){
	for(int i=0; i<cookies.length;i++){
		if(cookies[i].getName().equals("id")){
			out.println("cookies name : "+cookies[i].getName());
			out.newLine();
			out.print("cookies value : "+cookies[i].getValue());
		}
	}
}
%>
</body>
</html>