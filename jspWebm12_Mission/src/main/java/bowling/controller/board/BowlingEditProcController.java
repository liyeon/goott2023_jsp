package bowling.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.Controller;
import bowling.dao.BowlingDao;
import bowling.vo.BowlingDto;

public class BowlingEditProcController implements Controller {
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("EditProcController");
		//한글 깨지지 않도록
		request.setCharacterEncoding("utf-8");
		//1. form 전송 되는 수정할 회원의 정보를 읽어온다.
		String seq = request.getParameter("c");
	    // 폼 전송되는 수정할 글의 정보를 읽어온다.
	   	String title = request.getParameter("title");
		String content = request.getParameter("content");
		String hit = request.getParameter("hit");
	   	BowlingDto dto = new BowlingDto();
	   	dto.setBtitle(title);
	   	dto.setBcontent(content);
	   	dto.setBno(Integer.parseInt(seq));
	   	//3. 응답한다.
	   	BowlingDao dao = BowlingDao.getInstance();
		boolean b = dao.update(dto);
		System.out.println("업데이트 성공여부 : "+b);
		// jsp 에 전달하기 위한 포워딩 처리
		// forward 처리
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("detail.do?c="+seq+"&hit"+hit).forward(request, response);
	}
}// class