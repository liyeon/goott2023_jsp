package customer.controller.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeEditController {

	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeEditController");
		
		String seq = request.getParameter("c");
		NoticeDao dao = new NoticeDao();
		Notice notice=dao.getNotice(seq);
		
		//jsp 에 전달하기 위한 포워딩 처리
		//forward 처리
		request.setAttribute("notice", notice);
		request.getRequestDispatcher("noticeEdit.jsp").forward(request, response);
	} 
}//class