package jobkorea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jobkorea.controller.job.JobDelProcController;
import jobkorea.controller.job.JobDetailController;
import jobkorea.controller.job.JobEditController;
import jobkorea.controller.job.JobEditProcController;
import jobkorea.controller.job.JobInsertController;
import jobkorea.controller.job.JobInsertProcController;
import jobkorea.controller.job.JobListController;
public class MyDispatcher extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		super.service(req, resp);
		System.out.println("http신호");
		String uri = request.getRequestURI();
		String ctxtPath=request.getContextPath();
		String com = uri.substring(ctxtPath.length());
		System.out.println("uri : "+uri);
		System.out.println("conTextPath : "+ctxtPath);
		System.out.println("com : "+com);
		
		Controller controller = null;
		try {
			if(com.equals("/index.do") || com.equals("/")) {
				controller = new JobListController();
			}else if(com.equals("/job/insertForm.do")) {
				controller = new JobInsertController();
			}else if(com.equals("/job/insert.do")) {
				controller = new JobInsertProcController();
			}else if(com.equals("/job/detail.do")) {
				controller = new JobDetailController();
			}else if(com.equals("/job/delete.do")) {
				controller = new JobDelProcController();
			}else if(com.equals("/job/updateForm.do")) {
				controller = new JobEditController();
			}else if(com.equals("/job/update.do")) {
				controller = new JobEditProcController();
			}
			controller.excute(request,response);
		} catch (Exception e) {}
	}//service
}//class