package customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import customer.db.DBCon;
import customer.vo.UsersDto;

public class UsersDao {
	private static UsersDao dao;

	private UsersDao() {}

	public static UsersDao getInstance() {
		if (dao == null) {
			dao = new UsersDao();
		}
		return dao;
	}// getInstance()

	// 인자로 전달된 아이디가 users 테이블에 존재하는지 여부를 리턴하는 메소드
	public boolean isExist(String inputId) {
		boolean isExist = false;
		Connection conn = null;
		PreparedStatement pstmt = null; // 인터페이스
		ResultSet rs = null;
		try {
			conn = DBCon.getConnection();
			String sql = "SELECT id" + " FROM bugsuser" + " where bid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, inputId);
			rs = pstmt.executeQuery();
			// select 된 row가 있는지 확인한다.
			if (rs.next()) {
				isExist = true;// 헤당 아이디가 이미 존재하는 경우
			} // if 종료
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		return isExist;// 아이디 존재 여부를 리턴한다
	}

	public UsersDto getData(String id) {
		// 회원 한명의 정보를 담을 BoardDto
		UsersDto dto = null;

		Connection conn = null;
		PreparedStatement pstmt = null; // 인터페이스
		ResultSet rs = null;
		try {
			conn = DBCon.getConnection();
			String sql = "SELECT *" + " FROM bugsuser" + " where bid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto = new UsersDto();
				dto.setBid(rs.getString("bid"));
				dto.setBpwd(rs.getString("bpwd"));
				dto.setBname(rs.getString("bname"));
				dto.setBemail(rs.getString("bemail"));
				dto.setBtel(rs.getString("btel"));
				dto.setBregdate(rs.getDate("bregdate"));
			} // while종료
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		return dto;
	}// getData

	// 회원정보를 저장하는 메소드
	public boolean insert(UsersDto dto) {
		// 필요한 객체의 참조값을 담을 지역변수 만들기
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			// Connection 객체의 참조값얻어오기
			conn = DBCon.getConnection();
			// 실행할 sql문 준비하기
			String sql = "insert into bugsuser values(?,?,?,?,?,sysdate)";
			pstmt = conn.prepareStatement(sql);
			// ?에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getBid());
			pstmt.setString(2, dto.getBpwd());
			pstmt.setString(3, dto.getBname());
			pstmt.setString(4, dto.getBemail());
			pstmt.setString(5, dto.getBtel());
			// sql문을 수행하고 update or insert or delete 된 row의 개수를 리턴받는다.
			flag = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		} // fianlly
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
	}// insert()
}// UsersDao