package customer.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import customer.db.DBCon;
import customer.vo.Notice;

public class NoticeDao {
	
	public void write(Notice n) throws Exception {
		//insert  작업
		String sql="insert into notices values("
			+"(select max(to_number(seq))+1 from notices)"
			+",?,'cj',?,sysdate,0)";
		//dbcon
		Connection con=DBCon.getConnection();
		//실행
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, n.getTitle());
		pstmt.setString(2, n.getContent());
		pstmt.executeUpdate();
		
		
		pstmt.close();
		con.close();
	}
	
	public void update(Notice notice) throws Exception {
		
		String sql="update notices"
				+" set title=?,content=? where seq=?";
		Connection con=DBCon.getConnection();
		//실행
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, notice.getTitle());
		pstmt.setString(2, notice.getContent());
		pstmt.setString(3, notice.getSeq());
		
		pstmt.executeUpdate();
		
	}
	public void update2(String seq,String tit,String content) throws Exception {
		
		String sql="update notices"
				+" set title=?,content=? where seq=?";
		Connection con=DBCon.getConnection();
		//실행
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, tit);
		pstmt.setString(2, content);
		pstmt.setString(3, seq);
		
		pstmt.executeUpdate();
		
	}
	public int delete(String seq) throws Exception {
		String sql="delete from notices where seq="+seq;
		//dbcon
		Connection con=DBCon.getConnection();
		//실행
		PreparedStatement pstmt=con.prepareStatement(sql);
		int del=pstmt.executeUpdate();
		
		return del;	
	}
	
	public Notice getNotice(String seq) throws Exception {
		String sql="select seq,title,writer,content,"
				+ "regdate,hit from notices where seq="+seq;

		//dbcon
		Connection con=DBCon.getConnection();
		//실행
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		rs.next();
		
		Notice n=new Notice();
		n.setSeq(rs.getString("seq"));
		n.setWriter(rs.getString("writer"));
		n.setTitle(rs.getString("title"));
		n.setContent(rs.getString("content"));
		n.setRegdate(rs.getDate("regdate"));
		n.setHit(rs.getInt("hit"));
		
		rs.close();
		stmt.close();
		con.close();
		return n;
		
		
	}
	
	

}
