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
<h3>noticeRegProc.jsp</h3>
<%
request.setCharacterEncoding("utf-8");
String title=request.getParameter("title");
String content=request.getParameter("content");

//insert 작업
String sql="insert into notices values("
	+"(select max(to_number(seq))+1 from notices)"
	+",?,'cj',?,sysdate,0)";

//dbcon
Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";
Connection con=DriverManager.getConnection(url,user,pw);

//실행
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1, title);
pstmt.setString(2, content);
pstmt.executeUpdate();

//목록으로 이동
response.sendRedirect("notice.jsp");
%>
</body>
</html>
<%
pstmt.close();
con.close();
%>