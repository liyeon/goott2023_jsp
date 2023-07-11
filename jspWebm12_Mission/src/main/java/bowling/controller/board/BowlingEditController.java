package bowling.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.Controller;
import bowling.dao.BowlingDao;
import bowling.vo.BowlingDto;

public class BowlingEditController implements Controller {
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("수정EditController");

		String seq = request.getParameter("c");
		BowlingDao dao = BowlingDao.getInstance();
		BowlingDto dto = dao.getData(seq);

		// jsp 에 전달하기 위한 포워딩 처리
		// forward 처리
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("edit.jsp").forward(request, response);
	}
}// class