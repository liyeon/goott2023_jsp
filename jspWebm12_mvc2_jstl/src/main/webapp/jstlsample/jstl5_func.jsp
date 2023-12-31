<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>jstl5_func</h3>
<c:set var="str1" value=" Functions <태그>를 사용합니다." />
<c:set var="str2" value="사용" />
<c:set var="str3" value="${fn:trim(str1) }" />
<c:set var="tokens" value="1,2,3,4,5,6,7,8,9,10" />

length(str1): ${fn:length(str1) } <br />
length(str3): ${fn:length(str3) } <br />
toUpperCase(str1) : ${fn:toUpperCase(str1) } <br />
toLowerCase(str1) : ${fn:toLowerCase(str1) } <br />
subString(str1,3,5) : ${fn:substring(str1,1,5) } <br />

replace(str1,src,dest) : ${fn:replace(str1," ","") } <br />

indexOf(str1,str2): ${fn:indexOf(str1,str2) } <br />

</body>
</html>