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
		String filename0=(String)request.getAttribute("filename0");
		String filename1=(String)request.getAttribute("filename1");
		String filename2=(String)request.getAttribute("filename2");
		String filename3=(String)request.getAttribute("filename3");
		out.println("업로드된 파일명 : "+filename0+"<br>");
		out.println("업로드된 파일명 : "+filename1+"<br>");
		out.println("업로드된 파일명 : "+filename2+"<br>");
		out.println("업로드된 파일명 : "+filename3+"<br>");
	%>
</body>
</html>