<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.io.File" %>
<%@page import="java.io.FilenameFilter" %>
	<%
		File dir=new File("C:\\JSPTMP");
		File files[]=dir.listFiles();
		
		for(int i=0;i<files.length;i++){
			out.println("FILE : "+files[i]+"<br>");
		}
	%>
	<hr>
	<%
		String files2[]=dir.list();
		for(int i=0;i<files2.length;i++){
			out.println("FILE : "+files2[i]+"<br>");
		}
	%>
	<hr>
	<%
		File dir2=new File("c:\\JSPTMP");
		File[] filenamelist=dir2.listFiles(new FilenameFilter(){
			@Override
			public boolean accept(File dir,String name){
				return name.endsWith("txt");
			}
		});
		
		for(int i=0;i<filenamelist.length;i++){
			out.println(filenamelist[i]+"<br>");
		}
	%>
</body>
</html>