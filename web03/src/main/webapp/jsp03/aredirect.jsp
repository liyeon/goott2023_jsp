<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	내장 객체 : JSP 에서 제공하는 객체를 의미[사용 : 제공된 객체를 통해서 메소드 접근]
	JSP 페이지가 서블릿으로 변환되면서 jsp 컨테이너가 자동으로 제공
	----
	종류
	----
	request : 요청정보 저장 객체
	response : 응답 정보 저장 객체
	out : 출력 스트림 객체 
	session : 하나의 웹브라우저 단위의 저장 객체
	application : 서버 단위 저장 객체
	pageContest : 페이지 정보 저장
	page : 페이지 정보
	config : 설정정보
 -->
 
 <%
 	// 제어권을 넘긴다.
 	response.sendRedirect("bredirect.jsp"); // aredirect 를 실행시켰을 때 bredirect가 실행됨
 %>
</body>
</html>