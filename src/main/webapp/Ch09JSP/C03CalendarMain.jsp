<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
1 문제
7 x 7 테이블을 반복문을 통해서 만들어보세요
첫행은 일 월 화 수 목 금 토 일  이 들어갑니다
나머지 셀들은 비워줍니다
<br><br>

2 문제
캘린더 객체를 이용해서 시작 요일에 숫자를 넣어 반복 처리합니다
<br><br>

3 문제
캘린더 객체를 이용해서 해당 월의 마지막 일까지만 출력합니다
<br><br>

4 문제 
폼태그를 추가해서 입력받은 년도 월 일의 달력을 출력합니다
C03Calendar.jsp 로 전달
<br><br>
5 문제
C03Calendar.jsp 로 표시되는 달력의 스타일 적용합니다
<br><br>
6 문제
C03CalendarMain.jsp의 버튼 하나 추가해서 버튼 클릭시
팝업창이 띄어질 수 있도록 JS 추가하세요 . 
이번월 달력이 출력. 달력파일은  C03Today.jsp 로 합니다
<br><br>
7 문제
팝업버튼 클릭시 폼에 입력한 연월일의 달력이 출력되어야됩니다
(JS -> JSP 전달)

<br><br>

<script>
/* 	function popup()
	{
		var option="width=500,height=500,top=100,left=100";
		var win = window.open("C03Today.jsp","Calendar",option);
	} */
	function popup()
	{
		window.open("","popup","width=500,height=500,top=100,left=100");
		form=document.FORM;
		form.target="popup";
		form.action="C03Calendar.jsp";
		form.submit();
	}
	
	
</script>

<form method=get action="C03Calendar.jsp" name=FORM>
	<fieldset>
		<legend>달력출력</legend>
		<table>
			<tr>
				<td>년도</td>
				<td><input type=text name=year></td>
			</tr>
			<tr>
				<td>월</td>
				<td><input type=text name=month></td>
			</tr>
			<tr>
				<td>일</td>
				<td><input type=text name=day></td>
			</tr>
				<tr>
				<td><input type=submit value=전송></td>
				<td><input type=button onclick="popup()" value=팝업창></td>
			</tr>
		</table>
	</fieldset>
</form>




</body>
</html>