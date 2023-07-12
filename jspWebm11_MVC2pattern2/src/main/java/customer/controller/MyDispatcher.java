package customer.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.member.LoginController;
import customer.controller.member.LoginProcController;
import customer.controller.notice.DownloadController;
import customer.controller.notice.NoticeDelProcController;
import customer.controller.notice.NoticeDetailController;
import customer.controller.notice.NoticeEditController;
import customer.controller.notice.NoticeEditProcController;
import customer.controller.notice.NoticeListController;
import customer.controller.notice.NoticeRegController;
import customer.controller.notice.NoticeRegProcController;
/*
 * "/dispatcher" 요청에 대해서 응답할 무언가(Servlet)을 만들 클래스 설계하기
 * 1. HttpServlet 클래스를 상속받는다.
 * 2. service()메소드를 오버라이드 한다.
 * 3. service() 메소드에 전달되는 HttpServletResponse 객체를 활용해서 응답하는 코드를 작성한다.
 * 4. "/dispatcher"요청이 왔을 때 실제 동작하도록 맵핑한다.
 */
public class MyDispatcher extends HttpServlet {// 클라이언트의 신호를 받으려면 상속을 받아야한다.'
	// 모든 신호는 여기로 들어옴
// web.xml에 서블릿을 맵핑했기 때문에 어노테이션을 생성하지않음

//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
////		super.doGet(req, resp);
//		System.out.println("GET 신호 처리");
//	}
//
//	@Override
//	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
////		super.doPost(req, resp);
//
//	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		super.service(req, resp);
		System.out.println("http신호");
		String uri = request.getRequestURI();
		String ctxtPath=request.getContextPath();
		String com = uri.substring(ctxtPath.length());
		System.out.println("uri : "+uri);
		System.out.println("conTextPath : "+ctxtPath);
		System.out.println("com : "+com);
		
//		NoticeDetailController detailController = new NoticeDetailController();
//		NoticeEditController editController = new NoticeEditController();
		Controller controller = null;
		try {
			if(com.equals("/customer/noticeDetail.do")) {
				controller = new NoticeDetailController();
			}else if(com.equals("/customer/noticeEdit.do")) {
				controller = new NoticeEditController();
			}else if(com.equals("/customer/noticeEditProc.do")) {
				controller = new NoticeEditProcController();
			}else if(com.equals("/customer/noticeDetail.do")) {
				controller = new NoticeDetailController();
			}else if(com.equals("/customer/noticeReg.do")) {
				controller = new NoticeRegController();
			}else if(com.equals("/customer/noticeRegProc.do")) {
				controller = new NoticeRegProcController();
			}else if(com.equals("/customer/noticeDelProc.do")) {
				controller = new NoticeDelProcController();
			}else if(com.equals("/customer/notice.do")) {
				controller = new NoticeListController();
			}else if(com.equals("/login/login.do")) {
				controller = new LoginController();
			}else if(com.equals("/login/loginProc.do")) {
				controller = new LoginProcController();
			}else if(com.equals("/login/logoutProc.do")) {
				controller = new LogoutProcController();
			}else if(com.equals("/customer/download.do")) {
				controller = new DownloadController();
			}
			controller.excute(request,response);
		} catch (Exception e) {}
	}//service
}//class