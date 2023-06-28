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
	color: #fff;
	border: 1px solid #fb887c;
	border-right-color: #fff;
}

th:last-child {
	border-right-color: #fb887c;
}

th, td {
	padding: 15px;
}

td {
	border: 1px solid #fb887c;
}
</style>
</head>
<body>
	<%
	int[] haknos = { 50, 401, 402, 402, 502, 501 };
	String[] lectures = { "데이터베이스", "데이터베이스", "스포츠경영학", "자료구조", "자료구조" };
	String[] rooms = { "공학관110", "공학관110", "체육관103", "공학관111", "공학관111" };
	double[] scores = { 3.5, 4.0, 3.5, 4.0, 3.5 };
	%>
	<table>
		<thead>
			<tr>
				<th scope="col">학번</th>
				<th scope="col">강의</th>
				<th scope="col">강의실</th>
				<th scope="col">학점</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (int i = 0; i < 5; i++) {
			%>
			<tr>
				<td><%=haknos[i]%></td>
				<td><%=lectures[i]%></td>
				<td><%=rooms[i]%></td>
				<td><%=scores[i]%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	
	<%
		int x=5;
		int y=(x>=10)?20:x;//삼항연산자
		out.print("y값 : "+y);
	%>
</body>
</html>