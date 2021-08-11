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
	int id  =Integer.parseInt(request.getParameter("id"));
	
	
	Connection conn=null;
	PreparedStatement stmt = null;
	
	try
	{
		String URL="jdbc:mysql://localhost:3306/testdb";
		String dbID="root";
		String dbPW="1234";
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection(URL,dbID,dbPW);
		System.out.println("DB Connected....");
		stmt=conn.prepareStatement("delete from stdtbl  where id=?");
		stmt.setInt(1,id);
		int result=stmt.executeUpdate();
		if(result!=0)
		{
			%>	
			<script>
				alert("삭제 완료");
			</script>
			<%
		}
		else
		{
			%>	
			<script>
				alert("삭제할 데이터가 없습니다");
			</script>
			<%	
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{stmt.close();}catch(Exception e1){e1.printStackTrace();}
		try{conn.close();}catch(Exception e2){e2.printStackTrace();}
	}


%>













</body>
</html>