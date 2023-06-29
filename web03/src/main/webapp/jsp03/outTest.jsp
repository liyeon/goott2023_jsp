<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="16kb"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// buffer : 임시 저장 공간
	int bufferSize=out.getBufferSize();
	int remainSize=out.getRemaining();
	int useSize=bufferSize-remainSize;
	
%>

<h1>현재 버퍼 사용현황</h1>
<pre>
전체버퍼 : <%=bufferSize %>
사용버퍼 : <%=useSize %>
남은버퍼 : <%=remainSize %>
</pre>
</body>
</html>