package customer.controller.notice;

import java.io.FileInputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;

public class DownloadController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DownloadController!!!!!!!!!!");
		
		String path = request.getParameter("p");
		String fname = request.getParameter("f");
		System.out.println(path);
		System.out.println(fname);
		String urlPath = path+fname;
		String realPath = request.getServletContext().getRealPath(urlPath);
		
		System.out.println("real path : "+realPath);		
		
		response.setHeader("Content-Disposition", "attachment;filename="+new String(fname.getBytes(),"ISO8859_1"));
		
		//io처리 입출력처리
		FileInputStream fin = new FileInputStream("C:\\javabigsetjsp2023\\jsp_work\\jspWebm18_semiProject\\src\\main\\webapp\\"+urlPath);
		ServletOutputStream sout = response.getOutputStream();
		
		byte[] buf = new byte[1024];
		int size = 0;
		while ((size=fin.read(buf,0,1024))!=-1) {
			sout.write(buf,0,size);
		}
		fin.close();
		sout.close();
	}
}
