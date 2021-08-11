package Ch19;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/C05DownloadFile")
public class C05DownloadFile extends HttpServlet{

	public C05DownloadFile(){}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//1
		String UpDir = "C:\\UPLOAD";
		String filename = req.getParameter("filename");
		String filepath = UpDir + File.separator+filename;//다운로드 예정인 파일경로
		System.out.println("FILEPATH = " + filepath);
		//2
		byte []buff = new byte[4096];
		
		//3 파일헤더 설정
		String mimeType=getServletContext().getMimeType(filepath);
		if(mimeType == null) {
			mimeType="application/octet-stream";
		}
		resp.setContentType(mimeType);
		
		//4 한글문자깨짐방지 인코딩
		//String Encoding = new String(filename.getBytes("UTF-8"));
		filename=URLEncoder.encode(filename,"utf-8").replace("\\+","%20");
		resp.setHeader("Content-Disposition", "attachment; fileName= "+filename);
		
		//5 파일읽기쓰기
		FileInputStream instream = new FileInputStream(filepath);
		ServletOutputStream outstream = resp.getOutputStream();
		
		int r=0;
		while(r!=-1)
		{
			r=instream.read(buff,0,buff.length);	//file내용을 buff배열에 저장, byte수를 리턴  
			outstream.write(buff,0,r);	//buff배열의 내용을 클라이언트에 전달			  	
		}
		
		outstream.flush();
		outstream.close();
		instream.close();
	}
}
