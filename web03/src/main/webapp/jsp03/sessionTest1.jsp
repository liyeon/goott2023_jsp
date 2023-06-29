<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>로그인폼</title>
<link rel="stylesheet" href="../css/form.css" media="all" />
</head>
<body>
	<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	if (id.equals("blue") && pass.equals("1234")) {
		// 성공하면 아이디를 세션에 담기
		/* session.setAttribute("세션이름", "벨류값"); */
		// session.setAttribute("id", id);
		application.setAttribute("id", id);//서버단위 기록유지
	}
	// 다시 폼으로 보내기
	response.sendRedirect("sessionTestForm1.jsp");
	%>
</body>
</html>