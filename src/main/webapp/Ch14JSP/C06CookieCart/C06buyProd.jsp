<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="ProdRepo" class="Ch13.ProdRepository" scope="session" />
<%@page import="Ch13.Product,java.util.*" %>


<%
	Cookie[] cookies = request.getCookies();
	if(cookies!=null)
	{
		for(int i=0;i<cookies.length;i++)
		{
			String key = cookies[i].getName();
			if(key.equals("bcnt"+i))
			{
				String tmp = cookies[i].getValue(); //책이름-출판사명-30000
				String [] arr = tmp.split("-"); 	//["책이름","출판사명","30000"];
				out.println("책이름 : " + arr[0]+"<br>");
				out.println("출판사 : " + arr[1]+"<br>");
				out.println("책가격 : " + arr[2]+"<br><br>");
			}
			
		}
		
		
	}


%>
<%-- 	<table border=1 width=1000px>
		<tr>
			<td>ID</td>
			<td>TITLE</td>
			<td>PUBLISHER</td>
			<td>PRICE</td>
		</tr>
	<%
		for(int i=0;i<list.size();i++)
		{
			%>
			<tr>
				<td><%=list.get(i).getUserid() %></td>
				<td><%=list.get(i).getTitle() %></td>
				<td><%=list.get(i).getPublisher() %></td>
				<td><%=list.get(i).getPrice() %></td>
			</tr>
			<%
		}
	%>
	
	</table>
 --%>








</body>
</html>