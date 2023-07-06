<%@page import="java.util.* "%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style.css" media="all" />
</head>
<body>
<!-- errors 출력 -->
<p style="color:red">
<%
if(request.getAttribute("errors")!=null){
	List<String> errors=(List)request.getAttribute("errors");
	for(int i=0;i<errors.size();i++){
%>	
	<%=errors.get(i) %> <br />
<% 	
	}
}
%>
</p>

<h1>join</h1>
<form action="joinProc.jsp" class="join">
	<label for="id">아이디</label>
	<div class="form_id">
		<input type="text" name="id" />
		<input type="button" value="중복확인" />
	</div>
	<label for="pwd">비밀번호</label>
	<input type="text" name="pwd" />
	<label for="pwd2">비밀번호 확인</label>
	<input type="text" name="pwd2" />
	<label for="name">이름</label>
	<input type="text" name="name" />
	<label for="gender">성별</label>
	<select name="gender">
		<option value="남성">남성</option>
		<option value="여성">여성</option>
	</select>
	<label for="year">생년월일</label>
	<div class="form_birth">
		<input type="text" name="year" size="5" /> 년
		<input type="text" name="month" size="5" /> 월
		<input type="text" name="day" size="5" /> 일
	</div>
	
	<div>
		<input type="radio" name="IsLunar" value="Solar" checked /> 양력
		<input type="radio" name="IsLunar" value="IsLunar" /> 음력
	</div>
	<label for="name">핸드폰 번호</label>
	<input type="tel" name="cphone" />예) 010-1111-2222
	<label for="email">이메일</label>
	<input type="email" name="email" /> 
	<label for="habit">취미</label>
	<div>
		<input type="checkbox" name="habit" value="music"/>음악
		<input type="checkbox" name="habit" value="movie"/>영화
		<input type="checkbox" name="habit" value="trip"/>여행 
	</div>
	<input type="submit" value="확인" />
	
</form>
</body>
</html>