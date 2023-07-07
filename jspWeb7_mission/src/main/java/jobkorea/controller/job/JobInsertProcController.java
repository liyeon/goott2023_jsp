package jobkorea.controller.job;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jobkorea.controller.Controller;
import jobkorea.dao.JobDao;
import jobkorea.dto.JobDto;


public class JobInsertProcController implements Controller {
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("글작성ㄱㄱ");
		//한글 깨지지 않도록
		request.setCharacterEncoding("utf-8");
		//1. form 전송 되는 수정할 회원의 정보를 읽어온다.
		String seq = request.getParameter("num");
		
	    // 폼 전송되는 수정할 글의 정보를 읽어온다.
		
		String work= request.getParameter("work"); // 직업명
		String company= request.getParameter("company"); // 회사명
		String title= request.getParameter("title"); // 공고명
		String career= request.getParameter("career"); // 경력
		String academic_ability= request.getParameter("academic_ability");// 학력
		String prefer_basic= request.getParameter("prefer_basic");// 우대사항
		String prefer_language= request.getParameter("prefer_language"); // 선호 언어
		String employment_type= request.getParameter("employment_type");// 고용 유형 정규직 계약직
		String salary= request.getParameter("salary");// 연봉
		String location= request.getParameter("location");// 지역
		String time= request.getParameter("time");// 시간~
		String position= request.getParameter("position");// 팀원 팀장 머 이런거
		JobDto dto=new JobDto();
		dto.setWork(work);
		dto.setCompany(company);
		dto.setTitle(title);
		dto.setCareer(career);
		dto.setAcademic_ability(academic_ability);
		dto.setPrefer_basic(prefer_basic);
		dto.setPrefer_language(prefer_language);
		dto.setEmployment_type(employment_type);
		dto.setSalary(salary);
		dto.setLocation(location);
		dto.setTime(time);
		dto.setPosition(position);
		
	   	//3. 응답한다.
		JobDao dao=new JobDao();
		dao.insert(dto);
		boolean b = dao.insert(dto);
		System.out.println("글작성 성공여부 : "+b);
		// jsp 에 전달하기 위한 포워딩 처리
		// forward 처리
		response.sendRedirect("../index.do");
	}
}// class