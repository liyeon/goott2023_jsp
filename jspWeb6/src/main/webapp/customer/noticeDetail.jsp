<%@page import="customer.vo.Notice"%>
<%@page import="customer.dao.NoticeDao"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<h3>noticeDetail.jsp</h3>
<%
String seq=request.getParameter("c");
/* String sql="select seq,title,writer,content,regdate,hit from notices where seq="+seq;

//dbcon
Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";
Connection con=DriverManager.getConnection(url,user,pw);

//실행
Statement stmt=con.createStatement();
ResultSet rs = stmt.executeQuery(sql);
rs.next(); */

NoticeDao dao = new NoticeDao();
Notice n = dao.getNotice(seq);
%>
<table class="twidth">
	<colgroup>
		<col width="15%" />
		<col width="35%" />
		<col width="15%" />
		<col width="35%" />	
	</colgroup>
	<caption>Detail</caption>
	<tbody>
		<tr>
			<th class="left">글번호</th>
			<td><%=n.getSeq() %></td>
			<th class="left">조회수</th>
			<td><%=n.getHit() %></td>
		</tr>
		<tr>
			<th class="left">작성자</th>
			<td><%=n.getWriter() %></td>
			<th class="left">작성시간</th>
			<td><%=n.getRegdate() %></td>
		</tr>
		<tr>
			<th class="left">제목</th>
			<td colspan="3"><%=n.getTitle() %></td>
		</tr>
		<tr>
			<th class="left">내용</th>
			<td colspan="3" id="content"><%=n.getContent() %></td>
		</tr>
		<tr>
			<th class="left">첨부</th>
			<td colspan="3">첨부</td>
		</tr>
	</tbody>
</table>
<a href="noticeEdit.jsp?c=<%=n.getSeq() %>">수정</a>
<a href="noticeDelProc.jsp?c=<%=n.getSeq() %>">삭제</a>
<a href="notice.jsp">목록</a>

</body>
</html>