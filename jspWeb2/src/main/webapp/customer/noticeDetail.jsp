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
<title>공지 디테일!</title>
<link rel="stylesheet" href="../css/style.css" media="all" />
</head>
<body>
	<%
	String seq = request.getParameter("c");
	String sql = "select seq,title,writer,content,regdate,hit from notices where seq="+seq;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "hr";
	String pw = "123456";
	Connection conn = DriverManager.getConnection(url, user, pw);

	// 실행 
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
%>
<h1>디테이이일</h1>
<table>
	<colgroup>
		<col width="15%" />
		<col width="35%" />
		<col width="15%" />
		<col width="35%" />
	</colgroup>
	<caption>DETAIL</caption>
	<tbody>
	<tr>
		<th>글번호</th>
		<td><%=rs.getString("seq") %></td>
		<th>조회수</th>
		<td><%=rs.getString("hit") %></td>
	</tr>
	<tr>
		<th>작성자</th>
		<td><%=rs.getString("writer") %></td>
		<th>작성시간</th>
		<td><%=rs.getString("regdate") %></td>
	</tr>
	<tr>
		<th>제목</th>
		<td colspan="3" class="left"><%=rs.getString("title") %></td>
	</tr>
	
	<tr id="content">
		<th>내용</th>
		<td colspan="3" class="left"><%=rs.getString("content") %></td>
	</tr>
	<tr>
		<th>첨부</th>
		<td colspan="3" class="left">첨부파일.docx</td>
	</tr>
	</tbody>
</table>

<a href="noticeEdit.jsp?c=<%=rs.getString("seq")%>">수정</a>
<a href="noticeDelProc.jsp?c=<%=rs.getString("seq")%>">삭제</a>
<a href="notice.jsp">목록</a>
<%
		rs.close();
		stmt.close();
		conn.close();
	%>
</body>
</html>