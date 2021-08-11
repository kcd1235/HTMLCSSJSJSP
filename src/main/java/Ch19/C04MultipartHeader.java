package Ch19;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/C04MultipartHeader")
@MultipartConfig
(
		fileSizeThreshold=1024*1024*10,
		maxFileSize=1024*1024*50,		
		maxRequestSize=1024*1024*100
)
public class C04MultipartHeader extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				//1
				File upDir=new File("c:\\UPLOAD");
				if(!upDir.exists())
					upDir.mkdir();
				
				//2
				ArrayList<String> list=new ArrayList();
				String filename=null;
				for(Part part:req.getParts()) {
					filename=getFileName(part);					//파일명추출
					list.add(filename);							//리스트 추가
					part.write(upDir+File.separator+filename);	//업로드
				}
				
				//5-out view
				req.setAttribute("list", list);
				getServletContext().getRequestDispatcher("/Ch19JSP/C06UploaderFileOutput.jsp").forward(req, resp);
	}
	
	private String getFileName(Part part) {
		String contentDisp=part.getHeader("content-disposition");
		String [] tokens=contentDisp.split(";");
		return tokens[2].substring(11,tokens[2].length()-1);
	}

}
