package customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import customer.db.DBCon;
import customer.vo.BoardDto;

public class BoardDao {
	// 1. 자신의 참조값을 저장 할 수 있는 private static 필드
	private static BoardDao dao;

	// 2. 외부에서 객체를 생성하지 못하도록 생성자의 접근 지정자를 private 로 지정
	private BoardDao() {}

	// 3. 자신의 참조값을 리턴해주는 public static 메소드
	public static BoardDao getInstance() {
		if (dao == null)
			dao = new BoardDao();
		return dao;
	}

	// 글 하나의 정보를 저장하는 메소드
	public boolean write(BoardDto dto) {
		// insert 작업
		// 필요한 객체의 참조값을 담을 지역변수 만들기
		Connection conn = null;
		PreparedStatement pstmt = null;

		int flag = 0;
		try {
			// Connection 객체의 참조값얻어오기
			conn = DBCon.getConnection();
			// 실행할 sql문 준비하기
			String sql = "insert into bugsboard values(bugsboard_seq.nextval, ?,?,?,?,sysdate,0,?)";
			pstmt = conn.prepareStatement(sql);
			// ?에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getBtitle());
			pstmt.setString(2, dto.getBcontent());
			pstmt.setString(3, dto.getBwriter());
			pstmt.setString(4, dto.getBcategory());
			pstmt.setString(5, dto.getFilesrc());
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
	}// write

	public boolean update(BoardDto dto) {
		int flag = 0;
		// 필요한 객체의 참조값을 담을 지역변수 만들기
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			// Connection 객체의 참조값얻어오기
			conn = DBCon.getConnection();
			// 실행할 sql문 준비하기
			String sql = "update bugsboard set btitle=?,bcontent=?, bcategory=? where bno=?";

			pstmt = conn.prepareStatement(sql);
			// ?에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getBtitle());
			pstmt.setString(2, dto.getBcontent());
			pstmt.setString(3, dto.getBcategory());
			pstmt.setInt(4, dto.getBno());
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

	// delete
	public boolean delete(String seq){
		// 삭제
		int flag = 0;
		// 필요한 객체의 참조값을 담을 지역변수 만들기
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			// Connection 객체의 참조값얻어오기
			conn = DBCon.getConnection();
			// 실행할 sql문 준비하기
			String sql = "delete from bugsboard where bno=?";
			pstmt = conn.prepareStatement(sql);
			// ?에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setInt(1, Integer.parseInt(seq));
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

	// select 하나만
	public BoardDto getData(String seq) {
		BoardDto dto = null;
		// 필요한 객체의 참조값을 담을 지역변수 만들기
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBCon.getConnection();
			String sql = "select * from bugsboard where bno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(seq));
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto = new BoardDto();
				dto.setBno(rs.getInt("bno"));
				dto.setBtitle(rs.getString("btitle"));
				dto.setBwriter(rs.getString("bwriter"));
				dto.setBcontent(rs.getString("bcontent"));
				dto.setBcategory(rs.getString("bcategory"));
				dto.setBdate(rs.getDate("bdate"));
				dto.setBhit(rs.getInt("bhit"));
				dto.setFilesrc(rs.getString("filesrc"));
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
	}//getNotice
	// 글 전체 목록을 리턴하는 메소드
		public List<BoardDto> getList( String cate) {
			// 할 일 목록을 담을 ArrayList 객체 생성
			List<BoardDto> list = new ArrayList<>();
			// 필요한 객체의 참조값을 담을 지역변수 만들기
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				// Connection 객체의 참조값얻어오기
				conn = DBCon.getConnection();
				// 실행할 sql문 준비하기
				String sql = "SELECT * FROM bugsboard Where bcategory=? ORDER by bno DESC";
				pstmt = conn.prepareStatement(sql);
				// sql문의 ?에 바인딩 할 값이 있으면 바인딩 하고
				pstmt.setString(1, cate);
				// select 문 수행하고 결과 받아오기
				rs = pstmt.executeQuery();
				// 반복문 돌면서 결과 값 추출하기
				while (rs.next()) {
					// 현재 커서가 위치한 곳의 글정보를 읽어서 JobDto 객체에 담은 다음
					BoardDto dto = new BoardDto();
					dto.setBno(rs.getInt("bno"));
					dto.setBtitle(rs.getString("btitle"));
					dto.setBwriter(rs.getString("bwriter"));
					dto.setBcontent(rs.getString("bcontent"));
					dto.setBcategory(rs.getString("bcategory"));
					dto.setBdate(rs.getDate("bdate"));
					dto.setBhit(rs.getInt("bhit"));
					dto.setFilesrc(rs.getString("filesrc"));
					// 생성된 dto 객체의 참조값을 ArrayList 객체에 누적시킨다.
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

		public List<BoardDto> getSearch(String field, String query) {
			// 할 일 목록을 담을 ArrayList 객체 생성
			List<BoardDto> list = new ArrayList<>();
			// 필요한 객체의 참조값을 담을 지역변수 만들기
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				// Connection 객체의 참조값얻어오기
				conn = DBCon.getConnection();
				// 실행할 sql문 준비하기
				String sql = "SELECT * FROM bugsboard where "+field+" like ? ORDER by bno DESC";
				pstmt = conn.prepareStatement(sql);
				// sql문의 ?에 바인딩 할 값이 있으면 바인딩 하고
				pstmt.setString(1, "%"+query+"%");
				// select 문 수행하고 결과 받아오기
				rs = pstmt.executeQuery();
				// 반복문 돌면서 결과 값 추출하기
				while (rs.next()) {
					// 현재 커서가 위치한 곳의 글정보를 읽어서 JobDto 객체에 담은 다음
					BoardDto dto = new BoardDto();
					dto.setBno(rs.getInt("bno"));
					dto.setBtitle(rs.getString("btitle"));
					dto.setBwriter(rs.getString("bwriter"));
					dto.setBcontent(rs.getString("bcontent"));
					dto.setBcategory(rs.getString("bcategory"));
					dto.setBdate(rs.getDate("bdate"));
					dto.setBhit(rs.getInt("bhit"));
					dto.setFilesrc(rs.getString("filesrc"));
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
		}//getSearch

		//조회수 처리 메소드
		/*
		 * 
		 */
		public BoardDto getData(String seq, String hit) {
			BoardDto dto = null;
			// 필요한 객체의 참조값을 담을 지역변수 만들기
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = DBCon.getConnection();
				int hnum = Integer.parseInt(hit);
				
				boolean b = hitupdate(seq,hnum);
				System.out.println("조회수 업데이트 성공여부 : "+b);
				String sql = "select * from bugsboard where bno=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(seq));
				rs = pstmt.executeQuery();
				if (rs.next()) {
					dto = new BoardDto();
					dto.setBno(Integer.parseInt(seq));
					dto.setBtitle(rs.getString("btitle"));
					dto.setBwriter(rs.getString("bwriter"));
					dto.setBcontent(rs.getString("bcontent"));
					dto.setBcategory(rs.getString("bcategory"));
					dto.setBdate(rs.getDate("bdate"));
					dto.setBhit(rs.getInt("bhit"));
					dto.setFilesrc(rs.getString("filesrc"));
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
		}//조회수 처리 종

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
				String sql = "update bugsboard " + "set bhit=? where bno=?";
				
				pstmt = conn.prepareStatement(sql);
				// ?에 바인딩 할 값이 있으면 바인딩한다.
				pstmt.setInt(1, hnum+1);
				pstmt.setInt(2, Integer.parseInt(seq));
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