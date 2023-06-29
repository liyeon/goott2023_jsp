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
	<!-- 로그인 상태와 로그인 안 된 상태 구분  -->
	<%
	if (application.getAttribute("id") == null) {//로그인 안 된 상태
	%>
	<form action="sessionTest1.jsp">
		<label for="id">아이디</label> <input type="text" name="id" id="id"
			placeholder="아이디를 입력해주세요" /> <label for="pass">비밀번호</label> <input
			type="password" name="pass" id="pass" placeholder="비밀번호를 입력해주세요" />
		<input type="submit" value="login" />
	</form>
	<%
	} else {
		String s = (String)application.getAttribute("id");
	// 세션 스코프 out.print("session : "+application.getAttribute("id")); // 브라우저의 저장공간인 세션이라는 곳에 저장
	%>
	<h1>아이디 : <%=s %> </h1>
	<form action="logout.jsp">
		<input type="submit" value="logout" />
	</form>
	<%
	}
	
	%>
</body>
</html>