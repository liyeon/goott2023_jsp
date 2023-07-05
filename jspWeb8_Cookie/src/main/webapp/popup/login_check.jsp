<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="member_check()">
	<h3>login_check.jsp</h3>
	<script>
		idArray = new Array("kang", "kim", "lee");
		nameArray = new Array("강태공", "김유신", "리여사");
		pwdArray = new Array("111", "222", "333");
		function member_check() {
			//메인창의 정보가저오기
			id = window.opener.document.frm.id.value;
			pwd = window.opener.document.frm.pwd.value;
			rs = document.getElementById("result");

			flag = "n";//찾는 맴버없음
			tempStr = "";
			pos = 0;//배열의 위치
			for (var i = 0; i < idArray.length; i++) {
				if ((id == idArray[i]) && (pwd == pwdArray[i])) {
					pos = i;
					flag = "y";
					break;
				}
			}
			if (flag == "y") {
				tempStr = "<p style='color:red;'>로그인성공</p>";
				tempStr += nameArray[pos] + "님 방가방가";

			} else {
				tempStr = "<p style='color:blue;'>로그인실패</p>";
				tempStr += id + "님 다시 로그인 하세요";
			}
			rs.innerHTML = tempStr;
		}
	</script>
	<div id="result"></div>
</body>
</html>