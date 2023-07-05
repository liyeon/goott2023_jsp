package customer.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import customer.db.DBConnection;
import customer.vo.Notice;

public class NoticeDao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	Statement stmt = null;
	ResultSet rs = null;

	public void write(Notice n) throws Exception {
		// insert 작업
		String sql = "insert into notices values(" + "(select max(to_number(seq))+1 from notices)"
				+ ",?,'cj',?,sysdate,0)";

		// dbcon
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "hr";
		String pw = "123456";
		Connection con = DriverManager.getConnection(url, user, pw);

		// 실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, n.getTitle());
		pstmt.setString(2, n.getContent());
		pstmt.executeUpdate();

		pstmt.close();
		con.close();
	}

	// 방법1
	public void update(Notice notice) throws Exception {
		// update 작업
		String sql = "update notices " + "set title=?,content=? where seq=?";

		// dbcon
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "hr";
		String pw = "123456";
		Connection con = DriverManager.getConnection(url, user, pw);

		// 실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, notice.getTitle());
		pstmt.setString(2, notice.getContent());
		pstmt.setString(3, notice.getSeq());
		pstmt.executeUpdate();

		pstmt.close();
		con.close();
	}

	// 방법2
	public void update2(String seq, String title, String content) throws Exception {
		// update 작업
		String sql = "update notices " + "set title=?,content=? where seq=?";

		// dbcon
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "hr";
		String pw = "123456";
		Connection con = DriverManager.getConnection(url, user, pw);

		// 실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, seq);
		pstmt.executeUpdate();

		pstmt.close();
		con.close();
	}

	// delete
	public int delete(String seq) throws Exception {

		// 삭제
		String sql = "delete from notices where seq=" + seq;
		// dbcon
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "hr";
		String pw = "123456";
		Connection con = DriverManager.getConnection(url, user, pw);

		// 실행
		PreparedStatement pstmt = con.prepareStatement(sql);

		int del = pstmt.executeUpdate();

		return del;
	}

	// select 하나만
	public Notice getNotice(String seq) {
		Notice n = null;
		try {
			String sql = "select seq,title,writer,content,regdate,hit from notices where seq=" + seq;
			conn = DBConnection.dbc();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				n = new Notice();
				n.setSeq(rs.getString("seq"));
				n.setWriter(rs.getString("writer"));
				n.setTitle(rs.getString("title"));
				n.setContent(rs.getString("content"));
				n.setRegdate(rs.getDate("regdate"));
				n.setHit(rs.getInt("hit"));
			} // while종료
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection c =new DBConnection();
			c.dbFinal();
		}
		return n;
	}
}
