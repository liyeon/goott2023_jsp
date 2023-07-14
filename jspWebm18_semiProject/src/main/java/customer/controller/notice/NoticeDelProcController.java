package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.BoardDao;

public class NoticeDelProcController implements Controller{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeDelProcController!!!!!!!!!");
		
		String seq=request.getParameter("c");

		BoardDao dao = BoardDao.getInstance();
		boolean b =dao.delete(seq);


		if(b==true)response.sendRedirect("notice.do");
		else System.out.println("삭제 오류");
	}
}