<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>makeCookie</title>
</head>
<body>
<!-- 
쿠키는 웹사이트에 접속 할 때 생성되는 정보를 임시로 저장하는 파일
쿠키의 사이즈는 4kb 이하 크기 
쿠키의 목적은 웹사이트에 접속한 사용자의 정보를 유지하거나
사이트에 접속한 사용자들에게 쉽게 접속할수있도록 정보를 제공한다
 -->
 
 <%
 	Cookie cookie = new Cookie("id","master");
 	cookie.setMaxAge(60*1);//일분동안 유지 
 	response.addCookie(cookie);
 	out.println("쿠키생성됨");
 %>
 
 <form action="userCookie.jsp">
 	<input type="submit" value="쿠키확인하기" />
 </form>
</body>
</html>