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
<h1>Welcome To Page</h1>
<%! 
int cnt=0;
%>
<%=new java.util.Date() %><br>

<%=(++cnt) %> 번째 방문 <br>
<hr>
<h3>파일저장처리</h3>
<%
	try{
	Writer Lout = new FileWriter("C:/JSPTMP/weblog.txt",true);
	String IP =request.getRemoteAddr();
	String HOST = request.getRemoteHost();
	String Browser = request.getHeader("user-agent");
	Lout.write(IP+" "+HOST+" "+Browser+"\n");
	Lout.flush();
	Lout.close();
	}catch(Exception e){
		e.printStackTrace();
	}

%>


<%
	char buff[] =new char[4096];
	Reader in = new FileReader("C:/JSPTMP/weblog.txt");
	while(true)
	{
		int data = in.read();
		if(data==10)
			out.println("<br>");
		else if(data==-1)
			break;
		out.print((char)data);
	}
	
	
%>
<hr>
<hr>
<button onclick="confirmlog()">로그 확인</button>
<hr>
<table id=tbl>
</table>
<hr>





<script>
//나중에 완성할 것 //
function addtrtag()
{
	//tr태그 생성
	//td태그 3 생성
	//td태그 삽입할 코드값 가져오기(JSP로부터 가져오기)
	//tbl에 붙이기 
	var tbl = document.getElementById("tbl");
	var trtag = document.createElement("tr");
	var td1=document.createElement("td");
	var td2=document.createElement("td");
	var td3=document.createElement("td");
	
	trtag.appendChild(td1);
	trtag.appendChild(td2);
	trtag.appendChild(td3);
	
	tbl.appendChild(trtag);
}
</script>









</body>
</html>
<!--  
1)
C10Webpage.jsp 로 접속 요청이 들어오면 
클라이언트IP , hostname, 웹브라우저 종류 순으로
c:\JAVATMP\weblog.txt파일로 저장합니다
기존내용이있으면 다음라인에 추가합니다

import java.io.*;
Writer out = new FileWriter("경로","true/false");
out.write("전달할 값");

2)
버튼 만들어서 로그파일안의 내용을 TextArea 나 테이블로 만들어서
페이지로 표시해보세요
-->