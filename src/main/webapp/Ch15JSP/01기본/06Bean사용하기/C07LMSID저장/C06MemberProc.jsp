<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="Memberdto" class="Ch15.MemberDTO" scope="page" />
<jsp:setProperty name="Memberdto" property="*" />
<jsp:useBean id="Memberdao" class="Ch15.MemberDAO" scope="page" />

<%
	Memberdao.SetDTO(Memberdto);
	Memberdao.ConnectDB();
	int result = Memberdao.InsertMember();
	if(result!=0)
	{
		%>
			<script>
				alert("회원가입성공!\n로그인페이지로 이동합니다");
				location.href="C04Login.jsp";
			</script>
		<%
	}
	else
	{
		%>
		<script>
			alert("회원가입실패!\n회원가입페이지로 이동합니다");
			location.href="C03MemberJoin.jsp";
		</script>
	<%
	}
	Memberdao.Disconnect();

%>




</body>
</html>