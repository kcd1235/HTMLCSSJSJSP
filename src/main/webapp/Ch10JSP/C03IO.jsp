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
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String addr = request.getParameter("addr");
	
	try{
	Writer outstream = new FileWriter("c:/JSPTMP/Profile.txt",true); //false :덮어쓰기															 //true : 추가하기
	outstream.write(name+'\t'+age+'\t'+addr+'\n');
	outstream.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	
%>



</body>
</html>