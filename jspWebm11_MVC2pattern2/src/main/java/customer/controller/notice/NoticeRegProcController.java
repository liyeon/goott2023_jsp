package customer.controller.notice;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeRegProcController implements Controller {
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("글작성ㄱㄱ");
		//한글 깨지지 않도록
//		request.setCharacterEncoding("utf-8"); // 필터 설정해서 필요없음
		//1. form 전송 되는 수정할 회원의 정보를 읽어온다.
		String seq = request.getParameter("c");
	    // 폼 전송되는 수정할 글의 정보를 읽어온다.
		
//		path 만들기
		String path = "customer/upload";
		ServletContext ctx = request.getServletContext();
		path=ctx.getRealPath(path);
		System.out.println("real path : "+path);
		// multipart 형식으로 데이터 받기
		MultipartRequest req  = new MultipartRequest(request,path,10*1024*1024,"utf-8",new DefaultFileRenamePolicy());// 파일 사이즈를 10메가로 저장
	   	String title = req.getParameter("title");
		String content = req.getParameter("content");
		String file = req.getFilesystemName("file");
		
		System.out.println(title+" : "+file);
	   	Notice notice = new Notice();
	   	notice.setSeq(seq);
	   	notice.setTitle(title);
	   	notice.setContent(content);
	   	notice.setFileSrc(file);
	   	
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