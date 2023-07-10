package customer.controller.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeListController implements Controller {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response)throws Exception{
		System.out.println("노티스리슷흐");
		//search
		String field = request.getParameter("f");
		
		if(field==null || field.equals("")) {
			field="title";
		}
		System.out.println("검색 필드 : "+field);
		String query = request.getParameter("q");
		System.out.println("검색 내용 : "+query);
		if(query==null || query.equals("")) {
			query="";
		}
		NoticeDao dao = new NoticeDao();
		List<Notice> list = dao.getSearch(field,query);
		
		// jsp 에 전달하기 위한 포워딩 처리
		// forward 처리
		//List<NoticeDto> 를 LIST라는 이름으로 REQUEST에 저장
		request.setAttribute("list", list);
		request.setAttribute("query", query);
		request.getRequestDispatcher("notice.jsp").forward(request, response);
	}
}// class