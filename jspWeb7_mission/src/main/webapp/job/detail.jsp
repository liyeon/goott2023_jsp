<%@page import="jobkorea.dao.JobDao"%>
<%@page import="jobkorea.dto.JobDto"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>공지 디테일!</title>
<link rel="stylesheet" href="../css/style.css" media="all" />
</head>
<body>
<%
//GET 방식 파라미터로 전달되는 자세히 보여줄 글의 번호 읽어오기 ?num=xxx
String num = request.getParameter("num");
//JobDao 객체를 이용해서 해당 글의 정보를 얻어온다.
JobDto dto = JobDao.getInstance().getData(num);
%>
<h1>디테이이일</h1>
<%=dto.getCompany() %>
</body>
</html>