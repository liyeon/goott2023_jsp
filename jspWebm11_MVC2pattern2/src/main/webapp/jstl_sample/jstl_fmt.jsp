<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<!--  
format : 숫자 형식을 지정할수있다.
숫자형식지정 JSTL -->
	number :<fmt:formatNumber value="123456789" type="number"/><br />
	currency :
	<fmt:formatNumber value="123456789" type="currency" currencySymbol="$" />
	<br /> 
	percent :
	<fmt:formatNumber value="123456789" type="percent"/>
	<br /> 
	pettern :
	<fmt:formatNumber value="123456789" pattern=".0"/>
	<br />

	<c:set var="now" value="<%=new Date()%>"/>
	<br /> ${now }<br />
	date :
	<fmt:formatDate value="${now }" type="date" />
	<br />
	time :
	<fmt:formatDate value="${now }" type="time" />
	<br />
	both :
	<fmt:formatDate value="${now }" type="both" />
	<br />
</body>
</html>