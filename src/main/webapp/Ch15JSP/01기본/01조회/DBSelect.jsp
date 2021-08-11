<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원 정보</h3>
<%@page import="java.sql.*" %>
<%
	Connection conn=null;	//DB연결객체 저장용
	Statement stmt=null;	//쿼리실행객체 저장용
	ResultSet rs = null;	//쿼리실행결과 저장용
	
	//1 드라이브 메모리 적재
	Class.forName("com.mysql.cj.jdbc.Driver");
	try
	{
	//2 특정 URL 로 JAVA-DB 연결 - Connection클래스
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/testdb","root","1234");
	System.out.println("DB연결 성공.....");
	//3 쿼리문을 전달할 객체 생성 - PreparedStatement , Statement
	stmt = conn.createStatement();
	//4 조회(ResultSet) 
	rs = stmt.executeQuery("select * from stdtbl");
	while(rs.next())
	{
		int id = rs.getInt("id");
		String name = rs.getString("name");
		String addr = rs.getString("addr");
		%>
			ID = <%=id %><br>
			NAME = <%=name %><br>
			ADDR = <%=addr %><br><br>
		<%
	}
	
	
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		//관련 자원 제거 
	}




%>







</body>
</html>





