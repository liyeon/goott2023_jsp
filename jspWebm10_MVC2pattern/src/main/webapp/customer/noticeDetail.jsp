<%@page import="customer.vo.Notice"%>
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
<%Notice notice=(Notice)request.getAttribute("notice"); %>
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
		<td><%=notice.getSeq() %></td>
		<th>조회수</th>
		<td><%=notice.getHit() %></td>
	</tr>
	<tr>
		<th>작성자</th>
		<td><%=notice.getWriter() %></td>
		<th>작성시간</th>
		<td><%=notice.getRegdate() %></td>
	</tr>
	<tr>
		<th>제목</th>
		<td colspan="3" class="left"><%=notice.getTitle() %></td>
	</tr>
	
	<tr id="content">
		<th>내용</th>
		<td colspan="3" class="left"><%=notice.getContent() %></td>
	</tr>
	<tr>
		<th>첨부</th>
		<td colspan="3" class="left">첨부파일.docx</td>
	</tr>
	</tbody>
</table>
<div class="a_wrap">
	<a href="noticeEdit.do?c=<%=notice.getSeq() %>">수정</a>
	<a href="noticeDelProc.do?c=<%=notice.getSeq() %>">삭제</a>
	<a href="notice.do">목록</a>
</div>
</body>
</html>