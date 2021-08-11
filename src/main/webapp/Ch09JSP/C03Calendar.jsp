<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<style>
table {	width:500px; height:500px; border : 1px solid gray;}
td { border : 1px solid gray;
	 text-align:center;}
.header { background:gray; color:white;}
.body {}
caption {width:400px;  background:skyblue; color:white;
	font-size:20px;
}
</style>



<!-- 4번문제  -->
<%
	int year = Integer.parseInt(request.getParameter("year"));
	int month = Integer.parseInt(request.getParameter("month"));
	int day = Integer.parseInt(request.getParameter("day"));
%>


<%!
	java.util.Calendar now = java.util.Calendar.getInstance();
%>

<%
	now.set(year,month-1,day);	
	int w = now.get(java.util.Calendar.DAY_OF_WEEK); 
	//1 :일요일 2:월요일 3:화요일 4:수요일 5:목요일 6:금요일 7:토요일
	int lastofDate = now.getActualMaximum(java.util.Calendar.DATE);
%>



<table>
<caption><%=month %>월</caption>
<%
	int cnt=1;
	for(int i=1;i<=7;i++)
	{
%>		
		<tr>
	<%
		for(int j=1;j<=7;j++)
		{
			if(i==1)
			{
				String week=null;
				switch(j)
				{
				case 1:
					week="일";
					break;
				case 2:
					week="월";
					break;
				case 3:
					week="화";
					break;
				case 4:
					week="수";
					break;
				case 5:
					week="목";
					break;
				case 6:
					week="금";
					break;
				default:
					week="토";				
				}

				%>
					<td class=header><%=week%></td>
				<%
			}
			else
			{
				if(i==2 && j<w)	//w=일월화수목금토 //j=1234567 
				{
				%>
					<td class=body><%=" " %></td>
				<%
				}
				else
				{
					if(cnt<=lastofDate)
					{
				%>
					<td class=body><%=cnt++ %></td>
				<%
					}
				}
			}
	%>
				
	<%
		}
	%>	
		</tr>
<%		
	}
%>
</table>




</body>
</html>