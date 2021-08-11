package Ch19;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/C01MultipartHeader")
@MultipartConfig
(
		fileSizeThreshold=1024*1024*10,		//10MB //업로드 파일 크기가 여기 설정한 용량을 초과하는 경우 
													//location에 지정한 경로로 파일 저장
		maxFileSize=1024*1024*50,			//50MB //파일당 최대 사이즈
		maxRequestSize=1024*1024*100		//100MB //요청패킷 최대 사이즈
		//location="c:\\upload"				//파일저장위치지정(생략)
)
public class C01MultipartHeader extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//Part Interface
		//multipart/form-data POST 요청으로 수신받는 form아이템이나 하나의 part
		for(Part part:req.getParts()) {
			System.out.println("----------------------------------");
			System.out.println("HTML 폼태그 이름 : "+part.getName());
			System.out.println("파일 사이즈 : "+part.getSize()+"Byte");
			System.out.println("----------------------------------");
		}
	}
}
