package bowling.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bowling.db.DBCon;
import bowling.vo.BowlingDto;

public class BowlingDao {
	// 1. 자신의 참조값을 저장 할 수 있는 private static 필드
	private static BowlingDao dao;

	// 2. 외부에서 객체를 생성하지 못하도록 생성자의 접근 지정자를 private 로 지정
	private BowlingDao() {}

	// 3. 자신의 참조값을 리턴해주는 public static 메소드
	public static BowlingDao getInstance() {
		if (dao == null)
			dao = new BowlingDao();
		return dao;
	}

	// 글 하나의 정보를 저장하는 메소드
	public boolean insert(BowlingDto dto) {
		// insert 작업
		// 필요한 객체의 참조값을 담을 지역변수 만들기
		Connection conn = null;
		PreparedStatement pstmt = null;

		int flag = 0;
		try {
			// Connection 객체의 참조값얻어오기
			conn = DBCon.getConnection();
			// 실행할 sql문 준비하기
			String sql = "INSERT INTO bowlboard VALUES (bowlboard_seq.nextval, ?,?,'작성자',sysdate,0)";
			pstmt = conn.prepareStatement(sql);
			// ?에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getBtitle());
			pstmt.setString(2, dto.getBcontent());
			// sql문을 수행하고 update or insert or delete 된 row의 개수를 리턴받는다.
			flag = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();// Connection 반납하기
			} catch (Exception e) {
			}
		} // fianlly
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
	}// insert

	// 글 전체 목록을 리턴하는 메소드
	public List<BowlingDto> getList() {
		// 목록을 담을 ArrayList 객체 생성
		List<BowlingDto> list = new ArrayList<>();
		// 필요한 객체의 참조값을 담을 지역변수 만들기
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			// Connection 객체의 참조값얻어오기
			conn = DBCon.getConnection();
			// 실행할 sql문 준비하기
			String sql = "select * from bowlboard order by bno desc";
			pstmt = conn.prepareStatement(sql);
			// sql문의 ?에 바인딩 할 값이 있으면 바인딩 하고

			// select 문 수행하고 결과 받아오기
			rs = pstmt.executeQuery();
			// 반복문 돌면서 결과 값 추출하기
			while (rs.next()) {
				// 현재 커서가 위치한 곳의 글정보를 읽어서 JobDto 객체에 담은 다음
				BowlingDto dto = new BowlingDto();
				dto.setBno(rs.getInt("bno"));
				dto.setBtitle(rs.getString("btitle"));
				dto.setBcontent(rs.getString("bcontent"));
				dto.setBwriter(rs.getString("bwriter"));
				dto.setBdate(rs.getDate("bdate"));
				dto.setBcnt(rs.getInt("bcnt"));
				// 생성된 JobDto 객체의 참조값을 ArrayList 객체에 누적시킨다.
				list.add(dto);
			}
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
		return list;
	}// getList

	// 글 하나의 정보를 리턴하는 메소드
	public BowlingDto getData(String num, String hit) {
		// 회원 한명의 정보를 담을 JobDto
		BowlingDto dto = null;

		Connection conn = null;
		PreparedStatement pstmt = null; // 인터페이스
		ResultSet rs = null;
		try {
			conn = DBCon.getConnection();
			int hnum = Integer.parseInt(hit);
			boolean b = hitupdate(num,hnum);
			System.out.println("조회수 업데이트 성공여부 : "+b);
			dto = new BowlingDto();
			String sql = "select * from bowlboard where bno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto = new BowlingDto();
				dto.setBno(rs.getInt("bno"));
				dto.setBtitle(rs.getString("btitle"));
				dto.setBcontent(rs.getString("bcontent"));
				dto.setBwriter(rs.getString("bwriter"));
				dto.setBdate(rs.getDate("bdate"));
				dto.setBcnt(rs.getInt("bcnt"));
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

	public BowlingDto getData(String num) {
		// 회원 한명의 정보를 담을 JobDto
		BowlingDto dto = null;

		Connection conn = null;
		PreparedStatement pstmt = null; // 인터페이스
		ResultSet rs = null;
		try {
			conn = DBCon.getConnection();
			dto = new BowlingDto();
			String sql = "select * from bowlboard where bno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto = new BowlingDto();
				dto.setBno(rs.getInt("bno"));
				dto.setBtitle(rs.getString("btitle"));
				dto.setBcontent(rs.getString("bcontent"));
				dto.setBwriter(rs.getString("bwriter"));
				dto.setBdate(rs.getDate("bdate"));
				dto.setBcnt(rs.getInt("bcnt"));
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
	
	// 글 하나의 정보를 삭제하는 메소드
	public boolean delete(String num) {
		// 필요한 객체의 참조값을 담을 지역변수 만들기
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			// Connection 객체의 참조값얻어오기
			conn = DBCon.getConnection();
			// 실행할 sql문 준비하기
			String sql = "DELETE FROM bowlboard where bno=?";
			pstmt = conn.prepareStatement(sql);
			// ?에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setInt(1, Integer.parseInt(num));
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
	}// delete
	
	public boolean update(BowlingDto dto) {
		int flag = 0;
		// 필요한 객체의 참조값을 담을 지역변수 만들기
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			// Connection 객체의 참조값얻어오기
			conn = DBCon.getConnection();
			// 실행할 sql문 준비하기
			String sql = "update bowlboard set btitle=?, bcontent=? where bno=?";

			pstmt = conn.prepareStatement(sql);
			// ?에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getBtitle());
			pstmt.setString(2, dto.getBcontent());
			pstmt.setInt(3, dto.getBno());
			// sql문을 수행하고 update or insert or delete 된 row의 개수를 리턴받는다.
			flag = pstmt.executeUpdate();
			conn.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {}
		} // fianlly
		if (flag > 0) {
			return true;
		} else {
			return false;
		}//if
	}//update
	
	private boolean hitupdate(String seq, int hnum) {
		System.out.println("조회수업데이트");
		System.out.println("인덱스 번호 : "+seq+" 조회수 : "+hnum);
		int flag = 0;
		// 필요한 객체의 참조값을 담을 지역변수 만들기
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			// Connection 객체의 참조값얻어오기
			conn = DBCon.getConnection();
			// 실행할 sql문 준비하기
			String sql = "update bowlboard " + "set bcnt=? where bno=?";
			
			pstmt = conn.prepareStatement(sql);
			// ?에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setInt(1, hnum+1);
			pstmt.setString(2, seq);
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
	}
}//class