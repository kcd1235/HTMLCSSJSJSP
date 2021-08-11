<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>

<%
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	
	Connection conn=null;
	PreparedStatement stmt=null;
	
	try
	{
		String URL="jdbc:mysql://localhost:3306/testdb";
		String dbID="root";
		String dbPW="1234";
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(URL,dbID,dbPW);
		System.out.println("DB연결 성공.....");
		stmt=conn.prepareStatement("INSERT INTO stdtbl values(?,?,?)");
		stmt.setInt(1,id);
		stmt.setString(2,name);
		stmt.setString(3,addr);
		
		int result=stmt.executeUpdate();
		if(result!=0)
		{
			%>
				<script>
					alert("데이터 삽입 성공!");
				</script>
			<%
		}
		else
		{
			%>
			<script>
				alert("데이터 삽입 실패");
			</script>
		<%
		}
		
		
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		
		try{stmt.close();}catch(Exception e){e.printStackTrace();}
		try{conn.close();}catch(Exception e){e.printStackTrace();}
	}


%>

</body>
</html>