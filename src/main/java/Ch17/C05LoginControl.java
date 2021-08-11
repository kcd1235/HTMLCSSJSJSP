package Ch17;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/C05LoginControl.do")
public class C05LoginControl extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//1 파라미터 값 저장
		String userid = req.getParameter("userid");
		String pwd = req.getParameter("userpwd");
		
		if(!userid.equals("")&&!pwd.equals(""))
		{
			//2 세션 부여(C05LoginProc.jsp참고)
			HttpSession session = req.getSession();
			session.setAttribute("idKey", userid);
			session.setMaxInactiveInterval(60*60*24);
			//3 유저 메인페이지로 이동
			resp.sendRedirect("/HTMLCSSJSJSP/Ch17JSP/test/02users/C01Main.jsp");
		}
		
		
		
	}
	
}
