package customer.controller.notice;

import java.io.FileInputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;

public class DownloadController implements Controller {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.err.println("다운로드 컨트롤러");
		String path=request.getParameter("p");
		String fname=request.getParameter("f");
		String urlPath=path+fname;
		String realPath=request.getServletContext().getRealPath(urlPath);
		System.out.println("realPath: "+realPath);
		// 브라우저에서 열지말고 첨부로 인식하도록 하는 설정 ISO8859_1(한글코드에대한 처리)형식으로
		response.setHeader("Content-Disposition", "attachment;filename="+new String(fname.getBytes(),"ISO8859_1"));
		
		//io 처리 입출력 처리 
		FileInputStream fin=new FileInputStream(realPath);
		ServletOutputStream sout=response.getOutputStream();
		
		byte[] buf=new byte[1024];
		int size=0;
		while ((size=fin.read(buf,0,1024))!=-1) {
			sout.write(buf,0,size);
		}
		fin.close();
		sout.close();
		
	}
}
