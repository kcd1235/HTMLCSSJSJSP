package Ch19;

import java.io.File;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/C03MultipartHeader")
@MultipartConfig
(
		fileSizeThreshold=1024*1024*10,
		maxFileSize=1024*1024*50,		
		maxRequestSize=1024*1024*100
)
public class C03MultipartHeader extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//1
		Part part=req.getPart("TESTFORM");
		
		//2
		String filename=getFileName(part);
		
		//3
		File upDir=new File("c:\\UPLOAD");
		if(!upDir.exists())
			upDir.mkdir();
		
		//4-파일업로드
		part.write(upDir+"\\"+filename);
		
		//5-out view
		req.setAttribute("filename", filename);
		getServletContext().getRequestDispatcher("/Ch19JSP/C05UploaderFileOutput.jsp").forward(req, resp);
	}
	
	private String getFileName(Part part) {
		String contentDisp=part.getHeader("content-disposition");
		String [] tokens=contentDisp.split(";");
		return tokens[2].substring(11,tokens[2].length()-1);
	}

}
