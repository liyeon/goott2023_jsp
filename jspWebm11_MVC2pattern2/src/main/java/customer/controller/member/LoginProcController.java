package customer.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.MemberDao;
import customer.vo.Member;

public class LoginProcController implements Controller{

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("로그인프락컨트롤로로로로롤");
		
		request.setCharacterEncoding("utf-8");
		String uid=request.getParameter("id");
		String pwd=request.getParameter("password");
		
		//dao 처리
		MemberDao dao = MemberDao.getInstance();
		Member m = dao.getMember(uid);
		
		
		// 상태분류
		if(m==null) {
			//아이디 없음
			request.setAttribute("error", "아이디없음");
			request.getRequestDispatcher("loginForm.jsp").forward(request, response);
		}else if(!m.getPwd().equals(pwd)) {//비밀번호 불일치
			request.setAttribute("error", "비밀번호 불일치");
			request.getRequestDispatcher("loginForm.jsp").forward(request, response);
		}else {
			//성공
			// 아이디를 센션에 담고 notice.do로 전환
			request.getSession().setAttribute("uid", uid);
			response.sendRedirect("../customer/notice.do");
		}
	}//override
}//class