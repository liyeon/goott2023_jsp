package customer.controller.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeListController implements Controller {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response)throws Exception{
		System.out.println("노티스리슷흐");

		NoticeDao dao = new NoticeDao();
		List<Notice> list = dao.getList();
		// jsp 에 전달하기 위한 포워딩 처리
		// forward 처리
		request.setAttribute("list", list);
		request.getRequestDispatcher("notice.jsp").forward(request, response);
	}
}// class