<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="memberDAO" class="Ch16.MemberDAO" scope="page" />
<%@page import="Ch16.MemberDTO" %>
<%
	String id = request.getParameter("userid");
	String pwd = request.getParameter("userpwd");
	if(id.equals("admin") && pwd.equals("1234"))
	{
		session.setAttribute("idKey", "admin");
		session.setAttribute("pwdKey",1234);
		session.setMaxInactiveInterval(60*10);
		%>
			<jsp:forward page="01admin/C01Main.jsp" />	
		<%	
	}
	else
	{

		MemberDTO dto = memberDAO.SearchMember(id);
		if(dto!=null && dto.getUserid().equals(id) && dto.getPwd().equals(pwd)) //여기서 dto의 userid 를 꺼내서 요청 userid와 비교할것
						// 내일 수정해서 확인 
		
		{
			System.out.println("일치하는 계정 존재합니다");
			System.out.println("계정명 : " + dto.getUserid());
			
			session.setAttribute("idKey",id);
			session.setAttribute("pwdKey",pwd);
			session.setMaxInactiveInterval(60*3);
		%>
				<script>
					alert("로그인성공.\n유저메인 페이지로 이동");
					location.href="02users/C01Main.jsp";
				</script>
		<%
		}
		else
		{
			System.out.println("일치하는 계정이 없는경우!");
			%>
				<script>
					alert("일치하는 계정이 없습니다.\n로그인 페이지로 이동");
					location.href="C04Login.jsp";
				</script>
			<%
		}
	}
	
%>


</body>
</html>