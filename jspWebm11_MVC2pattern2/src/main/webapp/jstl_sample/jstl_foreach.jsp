<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<%
	List<String> nameList = new ArrayList<String>(Arrays.asList("이름4", "이름5", "이름6"));
	request.setAttribute("name3", nameList);
	List<String> nameList2 = new ArrayList<String>(Arrays.asList("이름7", "이름8", "이름9"));
	request.setAttribute("name4", nameList2);
	%>
	<%-- <c:forEach var="name" items="이름1,이름2,이름3">
		<br />${name }
	</c:forEach>

	<c:forEach var="name" items="이름1,이름2,이름3" varStatus="st">
		<br />${st.count } : <c:out value="${name }" />
	</c:forEach>
	
	<c:forEach var="name" items="${name3 }" varStatus="st">
		<br />${st.count } : <c:out value="${name }" />
	</c:forEach>

	<c:forEach var="name" items="${name4 }" varStatus="st">
		<br />${st.count } : <c:out value="${name }" />
	</c:forEach>
	
	<c:forEach var="list4" items="${name4 }" varStatus="st">
		<br />${list4 } : ${name4[st.index] }
	</c:forEach>
	<br />
	<c:forEach var="i" begin="1" end="10">
		<c:out value="${i }"></c:out>
	</c:forEach>
	<br />
	<c:forEach var="i" begin="1" end="10" varStatus="st">
		${i }
		<c:if test="${not st.last }">,</c:if>
	</c:forEach>
	<br />
	<c:set value="0" var="n"/>
	<c:forEach var="i" begin="1" end="10" varStatus="st">
		${i }
		<c:set value="${n+i}" var="n"/>
		<c:if test="${not st.last }">,</c:if>
	</c:forEach><br />
	 sum = ${n }
	 <br /> --%>
	<c:set value="5" var="n" scope="page" />
<c:set value="${n+3 }" var="n2" scope="page" />
sum=${n2 } <br />

<a href="new.jsp" target="_blank">new.jsp</a>
</body>
</html>