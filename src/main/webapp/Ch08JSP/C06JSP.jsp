<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	java.util.Calendar now = java.util.Calendar.getInstance();
%>

현재 시간 :<%=now.getTime() %><br>

<%
	now.set(2021,3,1);
	int year = now.get(java.util.Calendar.YEAR);
	int month = now.get(java.util.Calendar.MONTH)+1;
	int day = now.get(java.util.Calendar.DAY_OF_MONTH);
	int week= now.get(java.util.Calendar.DAY_OF_WEEK); 
	//1 :일요일 2:월요일 3:화요일 4:수요일 5:목요일 6:금요일 7:토요일
	int hour = now.get(java.util.Calendar.HOUR);
	int minute = now.get(java.util.Calendar.MINUTE);
	int second = now.get(java.util.Calendar.SECOND);
	int lastofDate = now.getActualMaximum(java.util.Calendar.DATE);
	String strWeek=null;
	switch(week)
	{
	case java.util.Calendar.MONDAY:
		strWeek="월요일";
		break;
	case java.util.Calendar.TUESDAY:
		strWeek="화요일";
		break;
	case java.util.Calendar.WEDNESDAY:
		strWeek="수요일";
		break;
	case java.util.Calendar.THURSDAY:
		strWeek="목요일";
		break;
	case java.util.Calendar.FRIDAY:
		strWeek="금요일";
		break;
	case java.util.Calendar.SATURDAY:
		strWeek="토요일";
		break;
	default : 
		strWeek="일요일";
		
	}
%>

연도 : <%=year %><br>
월   : <%=month %><br>
일   : <%=day %><br>
요일 : <%=week %><br>
요일 : <%=strWeek %><br>
시 : <%=hour %><br>
분 : <%=minute %><br>
초 : <%=second %><br>
현재월에서의 마지막일 : <%=lastofDate %><br>
</body>
</html>