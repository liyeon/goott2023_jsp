package bowling.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.Controller;
import bowling.dao.BowlingDao;

public class BowlingDelProcController implements Controller {
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("글삭제ㄱㄱ");
		String seq = request.getParameter("c");

		BowlingDao dao = BowlingDao.getInstance();
		boolean n = dao.delete(seq);
		System.out.println("글삭제 성공여부 : "+n);

		if(n==true)response.sendRedirect("list.do");
		else System.out.println("삭제오류");
		request.setAttribute("flag", n);
		request.getRequestDispatcher("list.do").forward(request, response);
	}
}// class