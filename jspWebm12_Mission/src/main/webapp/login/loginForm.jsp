<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>
<link rel="stylesheet" href="../css/style.css" media="all" />
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
	location.href="../joinus/join.jsp";
}
</script>
</head>
<body>
<div id="wrap">
	<h1>WELCOME</h1>
	<form action="loginProc.do" name="loginInfo" method="post" onsubmit="return checkValue()">
		<label for="id">아이디</label>
		<input type="text" name="id" maxlength="50" />
		<%
			String msg=request.getParameter("msg");
			if(msg!=null && msg.equals("0")){
				out.println("<p style='color:red;'>비밀번호를 확인해주세요</p>");
			}else if(msg!=null && msg.equals("-1")){
				out.println("<p style='color:red;'>아이디를 확인해주세요</p>");
			}
		%>
		<label for="password">비밀번호</label>
		<input type="text" name="password" maxlength="50" />
		<div class="btn_wrap">
			<input type="submit" value="login" />
			<input type="button" value="join" class="cancel" onclick="goJoinForm()" />
		</div>
	</form>
</div>
</body>
</html>