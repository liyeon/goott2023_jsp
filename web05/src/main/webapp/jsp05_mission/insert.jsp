<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	int grade = Integer.parseInt(request.getParameter("grade"));
	int sclass = Integer.parseInt(request.getParameter("class"));
	int credit = Integer.parseInt(request.getParameter("credit"));
	
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
		
		sql="insert into studentinfo values(studentinfo_seq.nextval,?,?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, addr);
		pstmt.setInt(3, grade);
		pstmt.setInt(4, sclass);
		pstmt.setInt(5, credit);
		// 실행
		pstmt.executeUpdate();//insert 실행
		System.out.println("입력성공");
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("입력실패");
	}finally{
		// 자원회수
		if(pstmt!=null)try{pstmt.close();}catch(Exception e){}
		if(conn!=null)try{conn.close();}catch(Exception e){}
	}
	response.sendRedirect("select.jsp");
%>