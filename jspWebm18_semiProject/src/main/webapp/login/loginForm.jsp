<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height:100%;">
<head>
<meta charset="UTF-8">
<title>벅스 : 로그인</title>
<link rel="stylesheet" href="../css/style.css" media="all" />
<link rel="shortcut icon" href="../img/faviconBugs.ico" />
<script>
function checkValue(){
 	inputForm = eval("document.loginInfo")/* name으로 객체 가져오기 */
 	if(!inputForm.id.value){
 		//alert("아이디를 입력해주세요.");
 		inputForm.id.focus();
 		return false;
 	}
 	if(!inputForm.password.value){
 		//alert("비밀번호를 입력해주세요.");
 		inputForm.password.focus();
 		return false;
 	}	
}
function goJoinForm(){
	location.href="../join/join.do";
}
</script>
</head>
<body style="height:100%;">
<h1><img src="../img/logo.svg" alt="" /></h1>
<form action="loginProc.do" name="loginInfo" method="post" onsubmit="return checkValue()">
	<label for="id">아이디</label>
	<input type="text" name="id" maxlength="50" placeholder="아이디를 입력해주세요."/>
	<label for="password">비밀번호</label>
	<input type="password" name="password" maxlength="50" placeholder="비밀번호를 입력해주세요."/>
	<input type="submit" value="로그인" />
	<input type="button" value="회원가입" class="cancel" onclick="goJoinForm()" />
</form>
</body>
</html>