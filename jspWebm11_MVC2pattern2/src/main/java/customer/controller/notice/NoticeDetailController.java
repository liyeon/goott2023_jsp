package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeDetailController implements Controller {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response)throws Exception{
		System.out.println("NoticeDetailController");

		String seq = request.getParameter("c");
		String hit = request.getParameter("hit");// 조회수
		System.out.println("조회수 : "+hit);
		NoticeDao dao = new NoticeDao();
		Notice notice = dao.getNotice(seq,hit);
		System.out.println(notice.getFileSrc());
		// jsp 에 전달하기 위한 포워딩 처리
		// forward 처리
		request.setAttribute("notice", notice);
		request.getRequestDispatcher("noticeDetail.jsp").forward(request, response);
	}
}// class