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
	<h1>Form</h1>
	<form action="requestTest.jsp" method="post">
		<label for="name">이름</label>
		<input type="text" name="name" id="name" autofocus required />
		<label for="age">나이</label>
		<input type="number" name="age" id="age" min="20" max="99" required/>
		<fieldset>
			<legend>성별</legend>
			<input type="radio" name="gender" id="gender" value="m" checked />
			<label for="gender">남</label>
			<input type="radio" name="gender" id="gender" value="f"/>
			<label for="gender">여</label>
		</fieldset>
		<label for="hobby">취미</label>
		<select name="hobby" id="hobby">
			<option>잠자기</option>
			<option>무협지보기</option>
			<option>애니보기</option>
			<option>건프라하기</option>
			<option>태연언니 노래듣기</option>
		</select>
		<input type="submit" value="send" />
	</form>
</body>
</html>