<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>제곱근 계산기</title>
<link rel="stylesheet" href="../css/form.css" media="all" />
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	//number 타입이더라모 파라미터 값이 전달 될 때는 문자로 전달 된다
	int number = Integer.parseInt(request.getParameter("number"));
	int number2 = Integer.parseInt(request.getParameter("number2"));
	
	long multiply = 1;
	int count=0;
	while(count<number2){
	multiply*=number;
	count++;
	}
	%>
	<h1 style="width:auto">
	결과 : <%=multiply %>
	</h1>
</body>
</html>