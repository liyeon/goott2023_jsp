package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeRegController implements Controller{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeRegController!!!!!!!!!");
		
		request.getRequestDispatcher("/WEB-INF/view/customer/noticeReg.jsp").forward(request, response);
	}
}
