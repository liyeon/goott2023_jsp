package jobkorea.controller.job;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jobkorea.controller.Controller;
import jobkorea.dao.JobDao;
import jobkorea.dto.JobDto;

public class JobEditController implements Controller {
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("수정폼 컨트롤");

		String seq = request.getParameter("num");
		JobDao dao = new JobDao();
		JobDto dto = dao.getData(seq);

		// jsp 에 전달하기 위한 포워딩 처리
		// forward 처리
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("updateForm.jsp").forward(request, response);
	}
}// class