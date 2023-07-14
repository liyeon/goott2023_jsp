package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.BoardDao;
import customer.vo.BoardDto;

public class NoticeEditController implements Controller{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeEditController!!!!!!!!!");
		
		String seq=request.getParameter("c");

		BoardDao dao = BoardDao.getInstance();
		BoardDto dto = dao.getData(seq);
		
		/* forward처리 */
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("/WEB-INF/view/customer/noticeEdit.jsp").forward(request, response);
	}
}
