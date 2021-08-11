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
	Map<String,ArrayList<Product>> map = ProdRepo.getMap();
	ArrayList<Product> list = null;
	String userid = (String)session.getAttribute("idKey");
	out.println(userid +" 님의 장바구니 리스트 <br><br>");
	list = map.get(userid);
	out.println("총 구매 제품 수 : " + list.size());
%>
	<table border=1 width=1000px>
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









</body>
</html>