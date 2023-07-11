package bowling.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bowling.db.DBCon;
import bowling.vo.Member;

public class MemberDao {
	private static MemberDao dao;
	private MemberDao() {}
	
	public static MemberDao getInstance() {
		if(dao==null) {dao = new MemberDao();}return dao;
	}//getInstance()
	
	//인자로 전달된 아이디가 member 테이블에 존재하는지 여부를 리턴하는 메소드
	public Member getMember(String uid) {
		// 회원들중 uid에 해당하는 데이터 조회
		String sql="select * from member where id=?";
		boolean isExist = false;
		Connection conn = null;
		PreparedStatement pstmt = null; //인터페이스
		ResultSet rs = null;
		Member m=null;
		try {
			conn = DBCon.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, uid);
			rs = pstmt.executeQuery();
			
			//select 된 row가 있는지 확인한다.
		    if(rs.next()) {
		    	m =new Member();
		    	m.setId(rs.getString("id"));
		    	m.setPwd(rs.getString("pwd"));
		    	System.out.println("id : "+m.getId());
		    	isExist=true;//해당 아이디가 이미 존재하는 경우
		    }//if 종료
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)rs.close();
				if (pstmt != null)pstmt.close();
				if (conn != null)conn.close();
			} catch (Exception e) {}
		}
		return m;//아이디 존재 여부 리턴
	}//id 
}//class