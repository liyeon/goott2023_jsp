package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.BoardDao;
import customer.vo.BoardDto;

public class NoticeEditProcController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeEditProcController!!!!!!!!!");
		request.setCharacterEncoding("utf-8");
		int seq=Integer.parseInt(request.getParameter("c"));
		String title=request.getParameter("title");
		String content=request.getParameter("content");

		BoardDto dto=new BoardDto();
		dto.setBtitle(title);
		dto.setBcontent(content);
		dto.setBno(seq);
		BoardDao dao=BoardDao.getInstance();
		dao.update(dto); 
		
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("/WEB-INF/view/customer/noticeDetail.jsp").forward(request, response);
	}
}
