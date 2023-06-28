<%@page import="java.sql.Timestamp"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info="copyright by hong!!!!" session="true"
	buffer="8kb" autoFlush="true" isThreadSafe="true"%>

<!-- 
    session="true" - 세션 사용 여부
   	buffer="8kb" 
   	autoFlush="true" -- 버퍼가 가득 차면 자동으로 비우기
   	isThreadSafe="true"-- 멀티 스레드를 사용할지 여부
    -->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>page 디렉티브(지시자) info 속성</h2>
	<%=getServletInfo() %><br>
	
	<%
		Timestamp now = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String strDate=format.format(now);
		String name="홍길동";
	%>
	오늘의 날짜는 <%= strDate %>입니다. <br>
	당신의 이름은 <%=name %> 입니다.<br>
	님의 이름은 <%="홍홍동" %> 입니다.
</body>
</html>