<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/form.css" media="all" />
<style>
h1 {
	width: 600px;
}

table {
	width: 600px;
	margin: 0 auto;
	border-collapse: collapse;
	text-align: center;
}

th, td {
	border: 1px solid #cfe8ff;
	padding: 10px;
}

thead tr {
	background: #031a87;
	color: #fff;
}

tbody tr:nth-child(odd) {
	background: #9ed1ff;
}

tr:nth-child(even) {
	background: #cee8ff;
}

.btn {
	width: 600px;
	display: flex;
	justify-content: flex-start;
	gap: 0 10px;
	margin-top: 20px;
	display: flex;
}

.btn a {
	padding: 10px 30px;
	background: #1F6E8C;
	text-decoration: none;
	color: #fff;
	border-radius: 5px;
}

.btn a:nth-child(2) {
	background: #2E8A99;
}

.btn a:nth-child(3) {
	background: #84A7A1;
}
</style>
</head>
<body>
	<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";

	try {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "hr";
		String pass = "123456";
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, pass);
		// id를 조건으로 name 과 addr 변경
		sql = "select * from member1";
		pstmt = conn.prepareStatement(sql);
		// 실행 resultSet으로 데이터 저장됨
		rs = pstmt.executeQuery();
		System.out.println("실행성공");
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("실행실패");
	}
	%>
	<h1>데이터 조회</h1>
	<table>
		<thead>
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>주소</th>
			</tr>
		</thead>
		<tbody>
			<%
			while (rs.next()) {// 다음 내용이 존재하면 true 아니면 false
			%>
			<tr>
				<td><%=rs.getString("id")%></td>
				<td><%=rs.getString("pw")%></td>
				<td><%=rs.getString("name")%></td>
				<td><%=rs.getString("addr")%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<div class="btn">
		<a href="insertForm.jsp">목록 추가</a> <a href="updateForm.jsp">수정</a> <a
			href="deleteForm.jsp">삭제</a>
	</div>

</body>
</html>