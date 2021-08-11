package Ch18.controller;

import Ch18.service.MemberService;
import Ch18.vo.MemberVO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MemberInsertController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("----------------------------------------");
		System.out.println("MemberInsertController 처리중");
		System.out.println("----------------------------------------");
		System.out.println("1)파라미터 값 추출");
	
		//파라미터 정보 가져오기
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		//입력값검증
		System.out.println("2)입력값 검증 -> 잘못된 값 전달시 HttpUtil.forward() 사용");
		if(userid.isEmpty() || pwd.isEmpty()||name.isEmpty()||email.isEmpty())
		{
			//다시 memberinsert로 이동(HttpUtil.java에서 처리)
			request.setAttribute("error","올바른 값이 입력되지 않았습니다");
			HttpUtil.forward(request,response,"/Ch18JSP/VIEW/memberInsert.jsp");
		}
		
		//MemberVO에 값 설정
		System.out.println("3)멤버정보 VO 에 저장");
		MemberVO member = new MemberVO(userid,pwd,name,email);
		
		
		//Service 실행
		System.out.println("4)Service 실행 -> MemberService의 MemberJoin()함수 실행");
		MemberService service = MemberService.getInstance();
		service.MemberJoin(member);
	

		//결과를 화면으로 구현 
		System.out.println("5)결과페이지로 이동 -> HttpUtil.forward() 사용");
		request.setAttribute("userid", userid);
		//유저ID를 포함한 정보를 /HTMLCSSJSJSP/Ch18JSP/RESULT/memberInsertOutput.jsp 로 전달 
		HttpUtil.forward(request, response, "/Ch18JSP/RESULT/memberInsertOutput.jsp");
	}

}
