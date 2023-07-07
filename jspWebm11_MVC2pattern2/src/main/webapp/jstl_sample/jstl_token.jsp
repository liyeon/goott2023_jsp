<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
<%-- <c:forTokens items="이름1,이름2,이름3,이름4,이름5" delims="," var="name">
반복 : <c:out value="${name}" /><br />
</c:forTokens> --%>

<%-- <c:forTokens items="이름1,이름2,이름3,이름4,이름5" delims="," var="name" varStatus="st">
index : ${st.index }<br />
current : ${st.current }<br />
count : ${st.count }<br />
first : ${st.first }<br />
last : ${st.last }<br />
begin : ${st.begin }<br />
end : ${st.end }<br />
step : ${st.step }<br />
<hr />
</c:forTokens> --%>

<%-- <c:forTokens items="이름1,이름2,이름3,이름4,이름5" delims="," var="name" varStatus="st" begin="1" end="3" step="2">
index : ${st.index }<br />
current : ${st.current }<br />
count : ${st.count }<br />
first : ${st.first }<br />
last : ${st.last }<br />
begin : ${st.begin }<br />
end : ${st.end }<br />
step : ${st.step }<br />
<hr />
</c:forTokens> --%>


<%-- <c:forTokens items="이름1/20,이름2/21,이름3/31,이름4/41,이름5/51" delims=",/" var="name" varStatus="st">
index : ${st.index }<br />
current : ${st.current }<br />
count : ${st.count }<br />
first : ${st.first }<br />
last : ${st.last }<br />
begin : ${st.begin }<br />
end : ${st.end }<br />
step : ${st.step }<br />
<hr />
</c:forTokens> --%>

<c:forTokens items="이름1/20,이름2/21,이름3/31,이름4/41,이름5/51" delims=",/" var="name" varStatus="st">
index : ${st.index }<br />
current : ${st.current }<br />
count : ${st.count }<br />
first : ${st.first }<br />
last : ${st.last }<br />
begin : ${st.begin }<br />
end : ${st.end }<br />
step : ${st.step }<br />
<hr />
</c:forTokens>
</body>
</html>