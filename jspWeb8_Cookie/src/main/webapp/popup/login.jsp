<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>login.jsp</h2>
	<script>
		function loginCheck(ff) {
			window.open("login_check.jsp", "",
					"width=300,height=200,titlebar=0");
		}
	</script>

	<form action="" name="frm">
		<input type="text" id="id" name="id" maxlength="8" /> 
		<input type="password" id="pwd" name="pwd" maxlength="8" />
		<input type="button" value="login" onclick="loginCheck(this.form)" /> 
	</form>
</body>
</html>