<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="form.css"/>
</head>
<body>
	<h1>좋아하는 과일 선택</h1>
	
	<form action="fruitsResult.jsp">
	<label for="name">이름</label>
	<input type="text" name="name" id="name" placeholder="이름을 입력해주세요"/>
	<label for="age">나이</label>
	<input type="number" id="age" name="age" placeholder="나이를 입력해주세요 12세 이상 ~ 122세 이하" min="12" max="122">
	<label for="food">색상</label>
	<select name="food" id="fruits">
		<option value="banana" selected>바나나</option>
		<option value="apple">사과</option>
		<option value="jjambbong">짬뽕</option>
	</select>
	<br />
	<input type="submit" value="send" />
</form>
</body>
</html>