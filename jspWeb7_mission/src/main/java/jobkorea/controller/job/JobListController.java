package jobkorea.controller.job;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jobkorea.controller.Controller;
import jobkorea.dao.JobDao;
import jobkorea.dto.JobDto;

public class JobListController implements Controller {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response)throws Exception{
		System.out.println("리슷흐");

		JobDao dao = new JobDao();
		List<JobDto> list = dao.getList();
		// jsp 에 전달하기 위한 포워딩 처리
		// forward 처리
		request.setAttribute("list", list);
		request.getRequestDispatcher("./index.jsp").forward(request, response);
	}
}// class