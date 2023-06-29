<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/form.css"/>
</head>
<body>
	<form action="lunchResult.jsp" method="get">
		아이디 : <input type="text" id="id" name="id" autofocus required /><br>
		비밀번호 : <input type="text" id="pass" name="pass" required /><br>
		점심메뉴 : 
		<select name="lunch" id="lunch">
			<option value="blackbeannoodle">짜장면</option>
			<option value="jjambbong">짬뽕</option>
			<option value="friedrice">볶음밥</option>
		</select><br>
		<input type="submit" value="send" />
	</form>
</body>
</html>