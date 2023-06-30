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
<h1>로그인</h1>
	<form action="insertPro.jsp" method="post">
		<label for="id">아이디</label> <input type="text" name="id" id="id" required="required"/>
		<label for="pw">비밀번호</label> <input type="text" name="pw" id="pw" required="required"/>
		<label for="name">이름</label> <input type="text" name="name" id="name" />
		<label for="addr">주소</label> <input type="text" name="addr" id="addr" />
		<input type="submit" value="send" />
	</form>
</body>
</html>