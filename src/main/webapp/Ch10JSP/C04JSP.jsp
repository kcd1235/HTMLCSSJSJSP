<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
import="java.io.*"    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	try{
	Reader inStream = new FileReader("c:/JSPTMP/Profile.txt");
	while(true)
	{
		int data = inStream.read();	//read() 한문자씩 읽어서 유니코드값 리턴
		if(data == -1)
		{
			break;
		}
		if(data != '\n')
		{
		%>
		<%=(char)data%>
		<%
		}
		else
		{
			%>
			<%=(char)data%><br>
			<%
		}
	}
	
	}catch(Exception e){
		e.printStackTrace();
	}


%>







</body>
</html>