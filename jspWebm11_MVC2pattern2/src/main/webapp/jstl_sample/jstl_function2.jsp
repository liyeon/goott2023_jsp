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
	<h3>split 사용 예제</h3>
    <c:set var="str1" value="Java|Androrid|Spring|JSP|Servlet" />
    <c:set var="splitStr" value="${fn:split(str1, '|') }" />
    <ul>
        <c:forEach var="str" items="${splitStr }">
            <li>${str }</li>
        </c:forEach>
    </ul>
    <br /> <hr />
    
    <h3>substring 사용 예제</h3>
    <c:set var="str1" value="Hello, world!" />
    <c:set var="subStr1" value="${fn:substring(str1, 0, 5) }" />
    <c:set var="subStr2" value="${fn:substring(str1, 7, 12) }" />
    <c:out value="subStr1 - ${subStr1 }" />
    <br />
    <c:out value="subStr2 - ${subStr2 }" />
    <br />
	<c:set var="str2" value="This is test string." />
 
    <h3>substringAfter 사용 예제</h3>
    <c:set var="subStr1" value="${fn:substringAfter(str2, 'test') }" />
    <c:set var="subStr2" value="${fn:substringAfter(str2, 'This') }" />
    <c:out value="subStr1 - ${subStr1 }" />
    <br />
    <c:out value="subStr2 - ${subStr2 }" />
    <br />
    <hr />
     <h3>substringBefore 사용 예제</h3>
    <c:set var="subStr1" value="${fn:substringBefore(str2, 'test') }" />
    <c:set var="subStr2" value="${fn:substringBefore(str2, 'This') }" />
    <c:out value="subStr1 - ${subStr1 }" />
    <br />
    <c:out value="subStr2 - ${subStr2 }" />
    <br />
</body>
</html>