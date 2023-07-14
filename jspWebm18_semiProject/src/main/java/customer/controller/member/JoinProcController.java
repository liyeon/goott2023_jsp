package customer.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.UsersDao;
import customer.vo.UsersDto;

public class JoinProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("회원가입프락컨트롤");
		//폼 전송되는 가입할 회원의 정보를 읽어온다.
    	String id = request.getParameter("id");
    	String pwd = request.getParameter("pwd");
    	String email = request.getParameter("email");
    	String name=request.getParameter("name");
    	String tel = request.getParameter("tel");
    	//UsersDto객체에 회원정보를 담고
    	UsersDto dto = new UsersDto();
    	dto.setBid(id);
    	dto.setBpwd(pwd);
    	dto.setBemail(email);
    	dto.setBname(name);
    	dto.setBtel(tel);
    	//UsersDao 객체를 이용해서 DB에 저장한다
    	boolean isSuccess = UsersDao.getInstance().insert(dto);
    	System.out.println("가입 됐는지 확인 : "+isSuccess);
    	request.setAttribute("id", id);
    	request.setAttribute("isSuccess", isSuccess);
    	request.getRequestDispatcher("signup.jsp").forward(request, response);
	}
}