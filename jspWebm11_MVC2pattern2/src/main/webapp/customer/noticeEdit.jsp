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
<title>글수정</title>
<link rel="stylesheet" href="../css/style.css" media="all" />
</head>
<body>
	<h1>글 수정</h1>
	<form action="noticeEditProc.do" method="post">
		<label for="c">글번호</label>
		<input type="text" name="c" value="${notice.seq}" readonly/> 
		<label for="title">제목</label>
		<input type="text" name="title" value="${notice.title}" readonly/> 
		<label for="txtFile">첨부파일</label><input type="file" name="txtFile" value="첨부파일.docx"/>
		<label for="txtcontent">내용</label>
		<textarea name="content" id="txtcontent">${notice.content}</textarea>
		<div class="btn_wrap">
			<input type="submit" value="수정" />
			<input type="button" value="취소"class="cancel" onclick="location.href='noticeDetail.jsp?c=${notice.seq}'"/>
		</div>
	</form>

</body>
</html>