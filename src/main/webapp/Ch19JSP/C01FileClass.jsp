<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.io.*"%>
	<%
		/* File file1=new File("C:\\JSPTMP");
		System.out.println("isFile : "+file1.isFile());
		System.out.println("idDirectory : "+file1.isDirectory());
		System.out.println("idHidden : "+file1.isHidden());
		System.out.println("절대경로 : "+file1.getAbsolutePath());
		System.out.println("존재여부 : "+file1.exists());
	
		if(file1.exists()==false)
			file1.mkdir(); */
			
		File file1=new File("tmp12345");
		System.out.println("isFile : "+file1.isFile());
		System.out.println("idDirectory : "+file1.isDirectory());
		System.out.println("idHidden : "+file1.isHidden());
		System.out.println("절대경로 : "+file1.getAbsolutePath());
		System.out.println("존재여부 : "+file1.exists());
		
		if(file1.exists()==false)
			file1.mkdir(); 
	%>
</body>
</html>