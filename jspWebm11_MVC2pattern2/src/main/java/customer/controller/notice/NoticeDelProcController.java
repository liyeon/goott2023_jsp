package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeDelProcController implements Controller {
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("글삭제ㄱㄱ");
		String seq = request.getParameter("c");

		NoticeDao dao = new NoticeDao();
		boolean n = dao.delete(seq);
		System.out.println("글삭제 성공여부 : "+n);

		if(n==true)response.sendRedirect("notice.do");
		else System.out.println("삭제오류");
	}
}// class