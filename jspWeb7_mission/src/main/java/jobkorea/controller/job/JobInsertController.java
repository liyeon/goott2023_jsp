package jobkorea.controller.job;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jobkorea.controller.Controller;
import jobkorea.dao.JobDao;
import jobkorea.dto.JobDto;

public class JobInsertController implements Controller {
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("글작성페이징");

		String seq = request.getParameter("num");
		JobDao dao = new JobDao();
		JobDto dto = dao.getData(seq);

		// jsp 에 전달하기 위한 포워딩 처리
		// forward 처리
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("/job/insertForm.jsp").forward(request, response);
	}
}// class