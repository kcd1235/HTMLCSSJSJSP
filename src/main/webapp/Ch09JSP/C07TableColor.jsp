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
	
		String col1 = request.getParameter("col1");
		String col2 = request.getParameter("col2");
		String col3 = request.getParameter("col3");
		String col4 = request.getParameter("col4");
		if(col1==null)
		{
			col1="white";col2="white";col3="white";col4="white";
		}

%>

<script>
	var td1 = document.getElementById("td1");
	var td2 = document.getElementById("td2");
	var td3 = document.getElementById("td3");
	var td4 = document.getElementById("td4");
	td1.style.background="<%=col1 %>" ;
	td2.style.background="<%=col2 %>" ;
	td3.style.background="<%=col3 %>" ;
	td4.style.background="<%=col4 %>" ;
</script>


<form method=get action=C04JSPTable.jsp>
	1번째 칸 : 
	<select name=col1>
		<option value="red" selected>빨강</option>
		<option value="blue">파랑</option>
		<option value="yellow">노랑</option>
		<option value="green">녹색</option>
	</select>
	2번째 칸 : 
	<select name=col2>
		<option value="red" selected>빨강</option>
		<option value="blue">파랑</option>
		<option value="yellow">노랑</option>
		<option value="green">녹색</option>
	</select>
	<br><br>
	3번째 칸 : 
	<select name=col3>
		<option value="red" selected>빨강</option>
		<option value="blue">파랑</option>
		<option value="yellow">노랑</option>
		<option value="green">녹색</option>
	</select>
	4번째 칸 : 
	<select name=col4>
		<option value="red" selected>빨강</option>
		<option value="blue">파랑</option>
		<option value="yellow">노랑</option>
		<option value="green">녹색</option>
	</select>
	<br><br>
	<input type="submit" value="전송">
</form>
<hr>

<fieldset style="width:400px;">
	<legend>태그 내 폼정보 삽입</legend>
<table border=1 width=300px height=300px>
	<tr>
		<td id=td1>1</td>
		<td id=td2>2</td>
	</tr>	
	<tr>
		<td id=td3>3</td>
		<td id=td4>4</td>
	</tr>

</table>
</fieldset>





</body>
</html>