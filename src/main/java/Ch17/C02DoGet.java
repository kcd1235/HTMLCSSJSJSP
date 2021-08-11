package Ch17;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/C02DoGet.do")
public class C02DoGet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(req.getParameter("userid"));
		System.out.println(req.getParameter("pwd"));
		PrintWriter out = resp.getWriter();	//페이지 출력 객체 생성
		out.println("USERID : " + req.getParameter("userid") );
		out.println("PWD : " + req.getParameter("pwd") );
	}
	

}
