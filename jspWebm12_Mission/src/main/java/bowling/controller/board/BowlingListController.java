package bowling.controller.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.Controller;
import bowling.dao.BowlingDao;
import bowling.vo.BowlingDto;
public class BowlingListController implements Controller {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response)throws Exception{
		System.out.println("리슷흐컨트로롤ㄹ");
		BowlingDao dao = BowlingDao.getInstance();
		List<BowlingDto> list = dao.getList();
		
		// jsp 에 전달하기 위한 포워딩 처리
		// forward 처리
		//List<NoticeDto> 를 LIST라는 이름으로 REQUEST에 저장
		request.setAttribute("list", list);
		request.getRequestDispatcher("list.jsp").forward(request, response);
	}
}// class