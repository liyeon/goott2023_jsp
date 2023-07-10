package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeRegProcController implements Controller {
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("글작성ㄱㄱ");
		//한글 깨지지 않도록
		request.setCharacterEncoding("utf-8");
		//1. form 전송 되는 수정할 회원의 정보를 읽어온다.
		String seq = request.getParameter("c");
	    // 폼 전송되는 수정할 글의 정보를 읽어온다.
	   	String title = request.getParameter("title");
		String content = request.getParameter("content");
	   	Notice notice = new Notice();
	   	notice.setSeq(seq);
	   	notice.setTitle(title);
	   	notice.setContent(content);

	   	
	   	//3. 응답한다.
		NoticeDao dao = new NoticeDao();
		boolean n = dao.write(notice);
		System.out.println("글작성 성공여부 : "+n);
		// jsp 에 전달하기 위한 포워딩 처리
		// forward 처리
		request.setAttribute("notice", notice);
		request.getRequestDispatcher("notice.do").forward(request, response);
	}
}// class