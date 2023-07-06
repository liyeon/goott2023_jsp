<%@page import="jobkorea.dao.JobDao"%>
<%@page import="jobkorea.dto.JobDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//JobDao객체를 이용해서 글 목록 얻오오기
List<JobDto> list = JobDao.getInstance().getList();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>index</title>
<link rel="stylesheet" href="./css/style.css" media="all" />
</head>
<body>
	<h1>첫화면</h1>
	
	<table>
		<thead>
			<tr>
				<th>글번호</th>
				<th>공고명</th>
				<th>회사</th>
			</tr>
		</thead>
		<tbody>
			<%for(JobDto tmp:list){ %>
				<tr>
					<td><%=tmp.getNo() %></td>		
					<td><a href="./job/detail.jsp?num=<%=tmp.getNo()%>"><%=tmp.getTitle() %></a></td>
					<td><%=tmp.getCompany() %></td>		
				</tr>
			<%} %>
		</tbody>
	</table>
	<div class="a_wrap">
		<a href="./job/insertForm.jsp">직업등록</a>
	</div>
</body>
</html>