package bowling.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.Controller;

public class LogoutProcController implements Controller {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("로그아웃컨트롤로로로로롤");
		
		//세션 제거 후 notice.do 로 이동
		request.getSession().invalidate();
		response.sendRedirect("../bowling/list.do");
	}

}