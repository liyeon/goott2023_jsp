<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/form.css" media="all" />
<style>
input[readonly] {
	background: #e9fbff;
}
</style>
</head>
<body>
	<h1>UPDATE FORM2</h1>
	<%
	String num = request.getParameter("num");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";

	try {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "hr";
		String pass = "123456";
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, pass);
		sql = "select * from studentinfo where snum=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, num);
		rs = pstmt.executeQuery();
		System.out.println("실행성공");
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("실행실패");
	}
	while(rs.next()){
	%>
	<form action="update.jsp" method="post">
		<label for="num">번호</label> <input type="text" name="num" id="num"
			value="<%=rs.getString(1)%>" readonly /> <label for="name">이름</label>
		<input type="text" name="name" id="name" value="<%=rs.getString(2)%>" />
		<label for="addr">주소</label> <input type="text" name="addr" id="addr"
			value="<%=rs.getString(3)%>" /> <label for="grade">학년</label> <select
			name="grade" id="grade">
			<option selected><%=rs.getString(4) %></option>
			<% for (int i=1; i<=6;i++){%>
			<option><%=i %></option>
			<%} %>
		</select> <label for="class">학번</label> <select name="class" id="class">
			<option selected><%=rs.getString(5) %></option>
			<% for (int i=1; i<=10;i++){%>
			<option><%=i %></option>
			<%} %>
		</select> <label for="credit">학점</label> <select name="credit" id="credit">
			<option selected><%=rs.getString(6) %></option>
			<% for (int i=1; i<=30;i++){%>
			<option><%=i %></option>
			<%} %>
		</select> <input type="submit" value="SUBMIT" />
		<%} 
		
		if(!rs.next()){%>
		<h2>입력하신 번호가 없습니다.</h2>
		<input type="button" value="돌아가기" onclick="location.href='updateForm.jsp'"/>
		<%
		}
		%>

	</form>
</body>
</html>