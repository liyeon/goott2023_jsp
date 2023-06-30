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
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String num = request.getParameter("num");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "";

	try {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user="hr";
		String pass="123456";
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, pass);
		sql="delete from productinfo where pnum=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, num);
		// 실행
		pstmt.executeUpdate();
		System.out.println("삭제 성공");
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("삭제 실패");
	}finally{
		// 자원회수
		if(pstmt!=null)try{pstmt.close();}catch(Exception e){}
		if(conn!=null)try{conn.close();}catch(Exception e){}
	}
	response.sendRedirect("select.jsp");
%>
</body>
</html>