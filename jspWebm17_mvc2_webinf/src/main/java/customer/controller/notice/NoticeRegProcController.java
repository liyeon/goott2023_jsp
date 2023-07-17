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
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeRegProcController!!!!!!!!!");
//		path 만들기
		String path = "customer/upload";
		ServletContext ctx = request.getServletContext();
		path = ctx.getRealPath(path);
		System.out.println("real path ~~ : "+path);
		
		path="C:\\javabigsetjsp2023\\jsp_work\\jspWebm17_mvc2_webinf\\src\\main\\webapp\\customer\\upload";
		
		
//		multipart형식으로 데이터 받기.
		MultipartRequest req = new MultipartRequest(request,path,10*1024*1024,"utf-8",new DefaultFileRenamePolicy());
		String uid = req.getParameter("uid");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String file = req.getFilesystemName("file");
		
		
//		String title = request.getParameter("title");
//		String content = request.getParameter("content");
		
		System.out.println(title + ":" + file);

		Notice n = new Notice();
		n.setTitle(title);
		n.setContent(content);
		n.setFilesrc(file);
		n.setWriter(uid);

		NoticeDao dao = new NoticeDao();
		dao.write(n);
		
		// 목록으로 이동
		response.sendRedirect("notice.do");
	}
}