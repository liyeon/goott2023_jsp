package bowling.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.Controller;
import bowling.dao.BowlingDao;
import bowling.vo.BowlingDto;

public class BowlingDetailController implements Controller {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response)throws Exception{
		System.out.println("상세보기Controller");

		String seq = request.getParameter("c");
		String hit = request.getParameter("hit");// 조회수
		System.out.println("조회수 : "+hit);
		BowlingDao dao = BowlingDao.getInstance();
		BowlingDto dto = dao.getData(seq,hit);

		// jsp 에 전달하기 위한 포워딩 처리
		// forward 처리
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("detail.jsp").forward(request, response);
	}
}// class