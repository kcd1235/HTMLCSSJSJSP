<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table border=1 width=90% height=900px>
	<tr>
		<td colspan="2" height=100>
			<jsp:include page="C06Top.jsp">
				<jsp:param name="param" value="1" />		
			</jsp:include>		
		</td>
	</tr>
	<tr>
		<td width=200px height=500px;>
			<jsp:include page="C06Left.jsp">
				<jsp:param name="param" value="2" />		
			</jsp:include>	
		</td>
		<td>
		 Contents
		</td>
	</tr>	
	<tr>
		<td colspan="2" height=200px>
			<jsp:include page="C06Footer.jsp">
				<jsp:param name="param" value="3" />		
			</jsp:include>	
		</td>
	</tr>
	</table>




</body>
</html>