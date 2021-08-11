<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie cookies[] = request.getCookies();
	String userid="";
	String pwd="";
	String idchk="";
	String pwdchk="";
	
	for(int i=0;i<cookies.length;i++)
	{
		if(cookies[i].getName().equals("idKey"))
		{
			userid=cookies[i].getValue();
		}		
		if(cookies[i].getName().equals("pwdKey"))
		{
			pwd=cookies[i].getValue();
		}
		if(cookies[i].getName().equals("idChk"))
		{
			idchk=cookies[i].getValue();
		}
		if(cookies[i].getName().equals("pwdChk"))
		{
			pwdchk=cookies[i].getValue();
		}
	}
	out.println("IDCHK : "+idchk+"<br>");
	out.println("PWDCHK : "+pwdchk+"<br>");
	if(idchk.equals(""))
		userid="";

	if(pwdchk.equals(""))
		pwd="";
	

%>

<form method=post action=C04LoginProc.jsp>
ID : <input type=text name=userid value=<%=userid%>><br>
PW : <input type=password name=pwd value=<%=pwd %>><br>
<input type=checkbox name=idchk>ID 저장 <input type=checkbox name=pwdchk>PW저장<br>
<input type=submit value="로그인">
</form>
</body>
</html>