<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<%
	int ranNum = (int) (Math.random()*10)+1;
	String grade = "a"+ranNum;
	System.out.println("grade : "+ grade);
	%>
	
	<c:set value="<%=grade %>" var="grade"/>
	<c:choose>
		<c:when test="${grade=='a1'}">
			당신의 등급은 : A1입니다.
		</c:when>
		<c:when test="${grade=='a2'}">
			당신의 등급은 : A2입니다.
		</c:when>
		<c:when test="${grade=='a3'}">
			당신의 등급은 : A3입니다.
		</c:when>
		<c:when test="${grade=='a4'}">
			당신의 등급은 : A4입니다.
		</c:when>
		<c:when test="${grade=='a5'}">
			당신의 등급은 : A5입니다.
		</c:when>
		<c:otherwise>
			당신의 등급은 : 기타 등급입니다.
		</c:otherwise>
	</c:choose>
</body>
</html>