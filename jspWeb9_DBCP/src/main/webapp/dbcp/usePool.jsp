<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>usePool.jsp</title>
</head>
<body>
	<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		/* dbcp 접속 */
		
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/noticeXe");
		conn = ds.getConnection();
		System.out.println("Connection 얻어오기 성공!");

		String sql = "select * from notices";
		pstmt=conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			String seq = rs.getString("seq");
			String title = rs.getString("title");
			String content = rs.getString("content");
	%>
	<%=seq%> <%=title%> <%=content%>
	<%
	}//while
	} catch (Exception e) {
	}
	%>
</body>
</html>