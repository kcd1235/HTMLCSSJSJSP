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
	String userid = request.getParameter("userid");
	String pwd= request.getParameter("pwd");
	String name= request.getParameter("name");
	String phone= request.getParameter("ph1")+"-"+request.getParameter("ph2")+"-"+request.getParameter("ph3");
	String tel= request.getParameter("tel1")+"-"+request.getParameter("tel2")+"-"+request.getParameter("tel3");
	String email= request.getParameter("email");
	String zipcode= request.getParameter("addrnum");
	String addr1= request.getParameter("addr1");
	String addr2= request.getParameter("addr2");
	String smsrecv= request.getParameter("smsrecv");	//체크시 : on 미체크 : null
	String emailrecv= request.getParameter("emailrecv");//체크시 : on 미체크 : null
	
%>
<%@page import="java.sql.*" %>

<%
	Connection conn=null;
	PreparedStatement stmt=null;
	
	try
	{
		String URL= "jdbc:mysql://localhost:3306/testdb";
		String dbID="root";
		String dbPW="1234";
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection(URL,dbID,dbPW);
		System.out.println("DB Connected....");
		stmt=conn.prepareStatement("INSERT INTO memberTbl values(?,?,?,?,?,?,?,?,?,?,?)");
		stmt.setString(1,userid);
		stmt.setString(2,pwd);
		stmt.setString(3,name);
		stmt.setString(4,phone);
		stmt.setString(5,tel);
		stmt.setString(6,email);
		stmt.setString(7,zipcode);
		stmt.setString(8,addr1);
		stmt.setString(9,addr2);
		if(smsrecv!=null)
		{
			stmt.setInt(10,1);
		}
		else
		{
			stmt.setInt(10,0);
		}
		if(emailrecv!=null)
		{
			stmt.setInt(11,1);	
		}
		else
		{
			stmt.setInt(11,0);
		}
		int result = stmt.executeUpdate();
		if(result!=0)
		{
			%>
			<script>
				alert("회원가입 성공!\n로그인 페이지로 이동합니다");
				location.href="C04Login.jsp";
			</script>
			<%
		}
		else
		{
			%>
			<script>
				alert("회원가입 실패!\n회원가입 페이지로 이동합니다");
				location.href="C03MemberJoin.jsp";
			</script>
			<%
		}
		
		
	}
	catch(Exception e){e.printStackTrace();}
	finally
	{
		try{stmt.close();}catch(Exception e1){e1.printStackTrace();}
		try{conn.close();}catch(Exception e2){e2.printStackTrace();}
	}
	


%>



//문제
C03MemberJoin.jsp 로 요청값을 받아서 testdb.memberTbl에 저장을 합니다
저장 성공시에는 '회원가입 완료' 메시지가 alert() 출력된 이후 C04Login.jsp 페이지로 이동
저장 실패시에는 '회원가입 실패' 메시지가 alert() 출력된 이후 C03MemberJoin.jsp 로 다시 이동
전달받은 파라미터값중에 휴대전화번호는 하나의 문자열로 합친 이후에 DB에 저장
전달받은 파라미터값중에 일반전화번호는 하나의 문자열로 합친 이후에 DB에 저장


</body>
</html>