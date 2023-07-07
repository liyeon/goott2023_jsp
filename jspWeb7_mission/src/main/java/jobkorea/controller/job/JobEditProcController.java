package jobkorea.controller.job;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jobkorea.controller.Controller;
import jobkorea.dao.JobDao;
import jobkorea.dto.JobDto;
public class JobEditProcController implements Controller {
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("수정컨트로로로롤");
		//한글 깨지지 않도록
		request.setCharacterEncoding("utf-8");
		//1. form 전송 되는 수정할 회원의 정보를 읽어온다.
		String seq = request.getParameter("num");
	    // 폼 전송되는 수정할 글의 정보를 읽어온다.
	   	String title = request.getParameter("title");
		String company = request.getParameter("company");
		String salary = request.getParameter("salary");
		JobDto dto = new JobDto();
	   	dto.setTitle(title);
	   	dto.setCompany(company);
	   	dto.setSalary(salary);
	   	dto.setNo(seq);
	   	System.out.println(seq);
	   	//3. 응답한다.
		JobDao dao = new JobDao();
		boolean b = dao.update(dto);
		System.out.println("업데이트 성공여부 : "+b);
		// jsp 에 전달하기 위한 포워딩 처리
		// forward 처리
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("detail.jsp?num="+seq).forward(request, response);
	}
}// class