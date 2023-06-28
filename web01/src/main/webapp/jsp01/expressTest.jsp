<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	width: 500px;
	margin: auto;
	text-align: center;
}

table, th, td {
	border: 1px solid #fff;
	border-collapse: collapse;
}

th {
	background: #fb887c;
	color : #fff;
}

th, td {
	padding: 15px;
	border: 1px solid #fb887c;
}
</style>
</head>
<body>
	<%
	String[] str = { "jsp", "java", "javascript", "html5" };
	%>
	<table>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">값</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (int i = 0; i < str.length; i++) {
			%>
			<tr>
				<td><%=i%></td>
				<td><%=str[i]%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>