package Ch17;

import java.io.IOException;

import org.apache.catalina.connector.Response;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/C04SetSession.do")
public class C04SetSession extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String userid = req.getParameter("userid");
		String pwd = req.getParameter("pwd");
		if(!userid.equals("") && !pwd.equals(""))
		{
			//세션부여
			System.out.println("올바른ID/PW 입력,세션부여합니다");
			HttpSession session = req.getSession();
			session.setAttribute("idKey",userid);
			session.setMaxInactiveInterval(60*60*24);
			RequestDispatcher disp = req.getRequestDispatcher("/Ch17JSP/C04Main.jsp");
			disp.forward(req, resp);
		}
		else
		{
			//다시입력 -> Login 이동
			System.out.println("ID/PW 잘못입력!");
			resp.sendRedirect("/HTMLCSSJSJSP/Ch17JSP/C04Login.jsp");
			
		}
		
	}	
}



