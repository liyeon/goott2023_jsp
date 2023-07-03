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
<title>Insert title here</title>
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
	<h1>글 수정</h1>
	<form action="noticeEditProc.jsp" method="post">
		<label for="c">글번호</label>
		<input type="text" name="c" value="<%=rs.getString("seq")%>" readonly/> 
		<label for="title">제목</label>
		<input type="text" name="title" value="<%=rs.getString("title")%>" readonly/> 
		<label for="txtFile">첨부파일</label><input type="file" name="txtFile" value="첨부파일.docx"/>
		<label for="txtcontent">내용</label>
		<textarea name="content" id="txtcontent"><%=rs.getString("content")%></textarea>
		<div class="btn_wrap">
			<input type="submit" value="수정" />
			<input type="button" value="취소"class="cancel" onclick="location.href='noticeDetail.jsp?c=<%=rs.getString("seq")%>'"/>
		</div>
	</form>

</body>
</html>