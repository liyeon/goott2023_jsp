<%@page import="java.util.Locale"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>jstl4_fmt</h3>
<c:set var="now" value="<%=new Date() %>" />
<fmt:formatNumber value="1000000" type="currency"/> <br />
<fmt:formatNumber value="1000000" type="currency" pattern="#원"/> <br />
<fmt:formatNumber value="1000000" type="currency" pattern="###,###원"/> <br />
<fmt:formatNumber value="1000000" type="currency" pattern="###,###"/>원 <br />
<fmt:formatNumber value="1000000.1234" type="currency" pattern="###,###.##"/> <br />

locale <br />
<fmt:setLocale value="en_us"/>
<fmt:formatDate value="${now }" type="both" dateStyle="short" pattern="YY-MM-dd"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="medium" pattern="YYYY-MM-dd [a] hh:mm:ss"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="short"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="medium"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="long"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="full"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="full" pattern="YYYY-MM-dd[E]"/> <br />

<hr />
timezone <br />
<fmt:setLocale value="en_us"/>
<fmt:formatDate value="${now }" type="both" dateStyle="short" pattern="YY-MM-dd"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="medium" 
pattern="YYYY-MM-dd [a] hh:mm:ss"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="long" 
timeZone="America/Los_Angeles"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="long"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="full" pattern="YYYY-MM-dd[E]"/> <br />
<hr />

<fmt:setLocale value="ru_RU"/>
<fmt:formatDate value="${now }" type="both" dateStyle="short" pattern="YY-MM-dd"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="medium" 
pattern="YYYY-MM-dd [a] hh:mm:ss"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="long" 
timeZone="America/Los_Angeles"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="long"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="full" pattern="YYYY-MM-dd[E]"/> <br />
<hr />

국가코드 알아보기 <br />
<c:set var="ics" value="<%=Locale.getAvailableLocales() %>"></c:set>
<c:forEach items="${ics }" var="lo">
${lo } &nbsp;
</c:forEach>

</body>
</html>