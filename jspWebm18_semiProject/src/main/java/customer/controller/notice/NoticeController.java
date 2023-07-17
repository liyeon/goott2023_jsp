package customer.controller.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.BoardDao;
import customer.vo.BoardDto;

public class NoticeController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeController!!!!!!!!!!");
		String cate = request.getParameter("cate");
		if(cate==null || cate.equals("")) {
			cate="0";
		}
		System.out.println(cate);
		String cateName="";
		if(cate.equals("0")) {
			cateName="0";
		}else if(cate.equals("1")) {
			cateName="공지사항";
		}else if(cate.equals("2")) {
			cateName="이벤트";
		}else if(cate.equals("3")) {
			cateName="소식";
		}else if(cate.equals("4")) {
			cateName="점검";
		}
		System.out.println("카테고리 명 : "+cateName);
//		search
		String field = request.getParameter("f");
		if(field==null || field.equals("")) {
			field="btitle";
		}
		System.out.println("field : " + field);
		String query = request.getParameter("q");
		if(query==null) {
			query="";
		}
		System.out.println("query : " + query);
		
		BoardDao dao=BoardDao.getInstance();
		List<BoardDto> list =null;
		if(cateName.equals("0")) {
			list= dao.getSearch(field, query);
		}else {
			list= dao.getList(cateName);
		}
		
		/* forward처리 */
		// List<Notice> 를 request에 저장
		request.setAttribute("list", list);
		request.setAttribute("query", query);
		request.setAttribute("cateName", cateName);
		request.getRequestDispatcher("/WEB-INF/view/customer/notice.jsp").forward(request, response);
		
	}
}
