<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>noticeDelPro.jsp</h3>
<%
String seq=request.getParameter("c");

String sql="delete from notices where seq="+seq;

//dbcon
Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";
Connection con=DriverManager.getConnection(url,user,pw);

//실행
PreparedStatement pstmt=con.prepareStatement(sql);
int del=pstmt.executeUpdate();

//System.out.println("del cnt : "+del);

if(del>0)
	response.sendRedirect("notice.jsp");
else
	out.write("삭제 오류");
%>
</body>
</html>