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
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String item = request.getParameter("item");
	int price = Integer.parseInt(request.getParameter("price"));
	
	/* 
	전달받은 내용을 디비에 입력하기 
	디비에 연동하기
	*/ 
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
		sql="update productinfo set pname=?, pitem=?, pprice=? where pnum=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, item);
		pstmt.setInt(3, price);
		pstmt.setString(4, num);
		// 실행
		pstmt.executeUpdate();//update 실행
		conn.commit();
		System.out.println("업데이트성공");
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("업데이트실패");
	}finally{
		// 자원회수
		try{
			conn.setAutoCommit(true); //트랜잭션 처리를 기본상태로 되돌린다.
			if( pstmt != null ) pstmt.close();
	        if( conn != null ) conn.close();
		}catch(Exception e1){}
	}
	response.sendRedirect("select.jsp");
%>
</body>
</html>