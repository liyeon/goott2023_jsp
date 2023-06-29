<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>로그인폼</title>
<link rel="stylesheet" href="../css/form.css" media="all" />
</head>
<body>
	<h1>LOGIN</h1>
	<!-- 리다이렉트와 포워딩의 차이점  -->
	
	<%
	if (application.getAttribute("id") == null) {//로그인 안 된 상태
	%>
	<form action="sessionTest2.jsp">
		<label for="id">아이디</label> <input type="text" name="id" id="id"
			placeholder="아이디를 입력해주세요" /> <label for="pass">비밀번호</label> <input
			type="password" name="pass" id="pass" placeholder="비밀번호를 입력해주세요" />
		<input type="submit" value="login" />
	</form>
	<%
	} else {
		String s = (String)application.getAttribute("id");
	%>
	<h1>아이디 : <%=s %> </h1>
	<form action="logout2.jsp">
		<input type="submit" value="logout" />
	</form>
	<%
	}
	
	%>
</body>
</html>