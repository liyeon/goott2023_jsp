package customer.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.MemberDao;
import customer.vo.Member;

public class LoginProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("LoginProcController!!!!");
		
		request.setCharacterEncoding("utf-8");
		String uid=request.getParameter("id");
		String pwd=request.getParameter("password");
		
//		dao처리
		MemberDao dao = new MemberDao();
		Member m = dao.getMember(uid);
		
		//상태분류
		//아이디 없음, 비번틀림, 성공
		if (m==null) {
			request.setAttribute("error", "아이디없음");
			request.getRequestDispatcher("loginForm.jsp").forward(request, response);
		} else if (!m.getPwd().equals(pwd)) {
			request.setAttribute("error", "비번틀림");
			request.getRequestDispatcher("loginForm.jsp").forward(request, response);
		} else {
//			아이디 세션에 담고 notice.do로 진행
			request.getSession().setAttribute("uid", uid);
			response.sendRedirect("../customer/notice.do");
		}
				
//		request.getRequestDispatcher("loginForm.jsp").forward(request, response);
	}

}
