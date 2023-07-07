<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.util.concurrent.ScheduledThreadPoolExecutor"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>usePool.jsp</h2>

	<%
	Calendar starttime = Calendar.getInstance();

	try {
		/* dbcp접속 */
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/noticeXe");
		Connection conn = ds.getConnection();

		String sql = "select seq,title,content from notices";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		while (rs.next()) {
			String seq = rs.getString("seq");
			String title = rs.getString("title");
			String content = rs.getString("content");
	%>
	<%=seq%>,<%=title%>,<%=content%>
	<br />
	<%
	}
	// TODO Auto-generated method stub

	// 실행간격 지정(3초)
	int sleepSec = 3;

	// 시간 출력 포맷
	final SimpleDateFormat fmt = new SimpleDateFormat("HH:mm:ss");

	// 주기적인 작업을 위한
	final ScheduledThreadPoolExecutor exec = new ScheduledThreadPoolExecutor(1);

	exec.scheduleAtFixedRate(new Runnable() {

		public void run() {
			try {

		Calendar cal = Calendar.getInstance();

		// 콘솔에 현재 시간 출력
		System.out.println(fmt.format(cal.getTime()));

		long difftime = cal.getTimeInMillis() - starttime.getTimeInMillis();
		System.out.println((difftime / 1000));
		if (difftime > 60000) {
			rs.close();
			pstmt.close();
			conn.close();
			System.out.println("close");
		}
			} catch (Exception e) {

		e.printStackTrace();

		// 에러 발생시 Executor를 중지시킨다
		exec.shutdown();
			}
		}
	}, 0, sleepSec, TimeUnit.SECONDS);

	} catch (Exception e) {
	e.printStackTrace();
	}
	%>

</body>
</html>