<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>NOTICE</title>
<link rel="stylesheet" href="../css/style.css" media="all" />
</head>
<body>
	<%
	String sql = "select seq,title,writer,content,regdate,hit from notices order by to_number(seq) desc";
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "hr";
	String pw = "123456";
	Connection conn = DriverManager.getConnection(url, user, pw);

	// 실행 
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	%>
	<h1>노티이이쓰</h1>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<%
			while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString("seq")%></td>
				<td class="left"><a href="noticeDetail.jsp?c=<%=rs.getString("seq")%>"><%=rs.getString("title")%></a></td>
				<td><%=rs.getString("writer")%></td>
				<td><%=rs.getString("regdate")%></td>
				<td><%=rs.getInt("hit")%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<div class="a_wrap">
		<a href="noticeReg.jsp">글쓰기</a>
	</div>
	
	<%
		rs.close();
		stmt.close();
		conn.close();
	%>
</body>
</html>