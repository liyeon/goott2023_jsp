package bowling.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.Controller;

public class BowlingRegController implements Controller {
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("글작성페이지컨트롤ㄹㅓ러럴");

		// jsp 에 전달하기 위한 포워딩 처리
		// forward 처리
		request.getRequestDispatcher("insert.jsp").forward(request, response);
	}
}// class