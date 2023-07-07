package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeRegController implements Controller {
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("글작성페이징");

		String seq = request.getParameter("c");
		NoticeDao dao = new NoticeDao();
		Notice notice = dao.getNotice(seq);

		// jsp 에 전달하기 위한 포워딩 처리
		// forward 처리
		request.setAttribute("notice", notice);
		request.getRequestDispatcher("noticeReg.jsp").forward(request, response);
	}
}// class