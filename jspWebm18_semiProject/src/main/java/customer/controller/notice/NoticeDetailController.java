package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.BoardDao;
import customer.vo.BoardDto;

public class NoticeDetailController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeDetailController!!!!!!!!!!");
		
		String seq=request.getParameter("c");
		String hit=request.getParameter("h");
		
		
		BoardDao dao = BoardDao.getInstance();
		BoardDto dto = dao.getData(seq,hit);
		
		/* forward처리 */
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("/WEB-INF/view/customer/noticeDetail.jsp").forward(request, response);
	}
}
