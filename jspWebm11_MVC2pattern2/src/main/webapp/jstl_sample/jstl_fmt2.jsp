<%@page import="java.util.Locale"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<c:set var="now" value="<%=new Date() %>"></c:set>
	<fmt:formatNumber value="10000000" type="currency"/>
	<fmt:formatNumber value="10000000" type="currency" pattern="#원"/>
	<fmt:formatNumber value="10000000" type="currency" pattern="###,###원"/>
	<fmt:formatNumber value="10000000" type="currency" pattern="###,###"/>원
	<fmt:formatNumber value="10000000.1234" type="currency" pattern="###,###.##"/>
	<br />
	<br />
	위치정보 지역정보
	<fmt:setLocale value="en_us"/>
	<fmt:formatDate value="${now }" type="both" dateStyle="short" pattern="YY-MM-dd"/><br />
	<fmt:formatDate value="${now }" type="both" dateStyle="medium" pattern="YYYY-MM-dd [a] hh:mm:ss"/><!-- 2023-07-07 [PM] 02:56:05 --><br />
	<fmt:formatDate value="${now }" type="both" dateStyle="short"/><br />
	<fmt:formatDate value="${now }" type="both" dateStyle="medium"/><br />
	timeZone<fmt:formatDate value="${now }" type="both" dateStyle="Long" timeZone="America/Los_Angeles"/>
	<br />
	<fmt:formatDate value="${now }" type="both" dateStyle="full"/><br />
	<fmt:formatDate value="${now }" type="both" dateStyle="full" pattern="YYYY-MM-dd[E]"/><br />
	<br />	<br />
	TIMEZONE
	<fmt:setLocale value="ru_RU"/>
	<fmt:formatDate value="${now }" type="both" dateStyle="full"/><br />
	<fmt:formatDate value="${now }" type="both" dateStyle="full" pattern="YYYY-MM-dd[E]"/><br />
	국가코드알아보기
	<c:set var="ics" value="<%=Locale.getAvailableLocales() %>"/>
	<c:forEach items="${ics }" var="lo">
		${lo } &nbsp;
	</c:forEach>
</body>
</html>