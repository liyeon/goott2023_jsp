package jobkorea.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jobkorea.db.DBCon;
import jobkorea.dto.JobDto;

public class JobDao {
	// 1. 자신의 참조값을 저장 할 수 있는 private static 필드
	private static JobDao dao;

	// 2. 외부에서 객체를 생성하지 못하도록 생성자의 접근 지정자를 private 로 지정
	public JobDao() {
	}

	// 3. 자신의 참조값을 리턴해주는 public static 메소드
	public static JobDao getInstance() {
		if (dao == null)
			dao = new JobDao();
		return dao;
	}

	// 글 하나의 정보를 저장하는 메소드
	public boolean insert(JobDto dto) {
		// insert 작업
		// 필요한 객체의 참조값을 담을 지역변수 만들기
		Connection conn = null;
		PreparedStatement pstmt = null;

		int flag = 0;
		try {
			// Connection 객체의 참조값얻어오기
			conn = DBCon.getConnection();
			// 실행할 sql문 준비하기
			String sql = "insert into jobhm values((select max(to_number(no)+1) from jobhm), ?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			// ?에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getWork());
			pstmt.setString(2, dto.getCompany());
			pstmt.setString(3, dto.getTitle());
			pstmt.setString(4, dto.getCareer());
			pstmt.setString(5, dto.getAcademic_ability());
			pstmt.setString(6, dto.getPrefer_basic());
			pstmt.setString(7, dto.getPrefer_language());
			pstmt.setString(8, dto.getEmployment_type());
			pstmt.setString(9, dto.getSalary());
			pstmt.setString(10, dto.getLocation());
			pstmt.setString(11, dto.getTime());
			pstmt.setString(12, dto.getPosition());
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
	public List<JobDto> getList() {
		// 할 일 목록을 담을 ArrayList 객체 생성
		List<JobDto> list = new ArrayList<>();
		// 필요한 객체의 참조값을 담을 지역변수 만들기
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			// Connection 객체의 참조값얻어오기
			conn = DBCon.getConnection();
			// 실행할 sql문 준비하기
			String sql = "SELECT *" + " FROM jobhm" + " ORDER BY To_number(no) DESC";
			pstmt = conn.prepareStatement(sql);
			// sql문의 ?에 바인딩 할 값이 있으면 바인딩 하고

			// select 문 수행하고 결과 받아오기
			rs = pstmt.executeQuery();
			// 반복문 돌면서 결과 값 추출하기
			while (rs.next()) {
				// 현재 커서가 위치한 곳의 글정보를 읽어서 JobDto 객체에 담은 다음
				JobDto dto = new JobDto();
				dto.setNo(rs.getString("no"));
				dto.setWork(rs.getString("work"));
				dto.setCompany(rs.getString("company"));
				dto.setTitle(rs.getString("title"));
				dto.setCareer(rs.getString("career"));
				dto.setAcademic_ability(rs.getString("academic_ability"));
				dto.setPrefer_basic(rs.getString("prefer_basic"));
				dto.setPrefer_language(rs.getString("prefer_language"));
				dto.setEmployment_type(rs.getString("employment_type"));
				dto.setSalary(rs.getString("salary"));
				dto.setLocation(rs.getString("location"));
				dto.setTime(rs.getString("time"));
				dto.setPosition(rs.getString("position"));
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
	public JobDto getData(String num) {
		// 회원 한명의 정보를 담을 JobDto
		JobDto dto = null;

		Connection conn = null;
		PreparedStatement pstmt = null; // 인터페이스
		ResultSet rs = null;
		try {
			conn = DBCon.getConnection();
			dto = new JobDto();
			String sql = "SELECT *" + " FROM jobhm where no=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setNo(rs.getString("no"));
				dto.setWork(rs.getString("work"));
				dto.setCompany(rs.getString("company"));
				dto.setTitle(rs.getString("title"));
				dto.setCareer(rs.getString("career"));
				dto.setAcademic_ability(rs.getString("academic_ability"));
				dto.setPrefer_basic(rs.getString("prefer_basic"));
				dto.setPrefer_language(rs.getString("prefer_language"));
				dto.setEmployment_type(rs.getString("employment_type"));
				dto.setSalary(rs.getString("salary"));
				dto.setLocation(rs.getString("location"));
				dto.setTime(rs.getString("time"));
				dto.setPosition(rs.getString("position"));
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
			String sql = "DELETE FROM jobhm where no=?";
			pstmt = conn.prepareStatement(sql);
			// ?에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, num);
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
	
	public boolean update(JobDto dto) {
		int flag = 0;
		// 필요한 객체의 참조값을 담을 지역변수 만들기
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			// Connection 객체의 참조값얻어오기
			conn = DBCon.getConnection();
			// 실행할 sql문 준비하기
			String sql = "update jobhm set title=?,company=?,salary=? where no=?";

			pstmt = conn.prepareStatement(sql);
			// ?에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getCompany());
			pstmt.setString(3, dto.getSalary());
			pstmt.setString(4, dto.getNo());
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
}//class