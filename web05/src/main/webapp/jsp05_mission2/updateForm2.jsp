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
		sql = "select * from productinfo where pnum=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, num);
		rs = pstmt.executeQuery();
		System.out.println("실행성공");
		while(rs.next()){
			%>
				<form action="update.jsp" method="post">
					<label for="num">상품번호</label> 
					<input type="text" name="num" id="num" readonly placeholder="<%=rs.getString(1)%>"/>
					<label for="name">상품명</label> 
					<input type="text" name="name" id="name" value="<%=rs.getString(2)%>"/>
					<label for="item">상품간략소개</label> 
					<input type="text" name="item" id="item" value="<%=rs.getString(3)%>" />
					<label for="price">상품가격</label>
					<input type="text" name="price" id="price" value="<%=rs.getString(4)%>" />
					<label for="date">등록 날짜</label>
					<input type="text" name="date" id="date" placeholder="<%=rs.getString(5)%>" readonly/>
					<input type="submit" value="상품수정" />
				</form>
		<%
		}//while
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("실행실패");
	}
	%>
</body>
</html>