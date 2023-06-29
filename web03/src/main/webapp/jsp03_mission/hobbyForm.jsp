<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/form.css" media="all" />
</head>
<body>
	<!-- 로그인 상태와 로그인 안 된 상태 구분  -->
	<%
	if (session.getAttribute("habun") == null) {//로그인 안 된 상태
	%>
	<h1>LOGIN</h1>
	<form action="hobbyTest.jsp" method="get">
		<label for="habun">아이디</label> 
		<input type="text" name="habun" id="habun" placeholder="아이디를 입력해주세요" /> 
		<label for="stupass">비밀번호</label> 
		<input type="password" name="stupass" id="stupass" placeholder="비밀번호를 입력해주세요" />
		<label for="stuhobby">취미</label> 
		<input type="text" name="stuhobby" id="stuhobby" placeholder="취미를 입력해주세요" />
		<input type="submit" value="login" />
	</form>
	<%
	} else {
		String id = (String)session.getAttribute("habun");
		String hb = (String)session.getAttribute("stuhobby");
	%>
	<h1>
	아이디 : <%=id %> <br>
	취미 : <%=hb %> 
	</h1>
	<form action="hobbyLogout.jsp">
		<input type="submit" value="logout" />
	</form>
	<%
	}
	
	%>
</body>
</html>