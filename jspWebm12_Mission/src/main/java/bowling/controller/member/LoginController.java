package bowling.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bowling.controller.Controller;

public class LoginController implements Controller{

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("로그인컨트롤로로로로롤");
		request.getRequestDispatcher("loginForm.jsp").forward(request, response);
		
	}
}