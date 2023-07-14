package customer.controller.notice;

import java.nio.file.FileSystems;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import customer.controller.Controller;
import customer.dao.BoardDao;
import customer.vo.BoardDto;

public class NoticeRegProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeRegProcController!!!!!!!!!");
//		path 만들기
		String path = "upload";
		ServletContext ctx = request.getServletContext();
		path = ctx.getRealPath(path);
		System.out.println("real path ~~ : "+path);
		path="C:\\javabigsetjsp2023\\jsp_work\\jspWebm18_semiProject\\src\\main\\webapp\\upload";
//		multipart형식으로 데이터 받기
		MultipartRequest req = new MultipartRequest(request,path,10*1024*1024,"utf-8",new DefaultFileRenamePolicy());
		String uid = req.getParameter("uid");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String file = req.getFilesystemName("file");
		String category = req.getParameter("category");
		
		System.out.println(category);
		System.out.println(title + ":" + file);

		BoardDto dto = new BoardDto();
		dto.setBtitle(title);
		dto.setBcontent(content);
		dto.setFilesrc(file);
		dto.setBwriter(uid);
		dto.setBcategory(category);
		BoardDao dao = BoardDao.getInstance();
		dao.write(dto);
		
		// 목록으로 이동
		response.sendRedirect("notice.do");
	}
}