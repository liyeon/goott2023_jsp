package jobkorea.controller.job;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jobkorea.controller.Controller;
import jobkorea.dao.JobDao;


public class JobDelProcController implements Controller {
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("글삭제ㄱㄱ");
		String seq = request.getParameter("num");

		JobDao dao = new JobDao();
		boolean b = dao.delete(seq);
		System.out.println("글삭제 성공여부 : "+b);

		if(b==true)response.sendRedirect("../index.do");
		else System.out.println("삭제오류");
	}
}// class