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
	int totalRecord=0;	//전체 레코드 수
	int numPerPage=10;	//페이지당 레코드 수(한페이지에 표시되는 게시물 수)
	int pagePerBlock=15;//블럭당 페이지수(한블럭에 [1][2][3][4]...[15]까지 페이지 표시)
	
	int totalPage=0;	//전체 페이지 수
	int totalBlock=0;	//전체 블럭 수
	
	int nowPage=1;		//현재 페이지
	int nowBlock=1;		//현재 블럭
	
	int start=0;		//Database Select 시작 번호(num)
	int end=10;			//시작 번호로 부터 가져올 게시물의 개수
	
	int listSize=0;		//현재 DB로부터 읽어온 게시물의 수
	
	
	
%>

<%
	String KeyWord="";// 검색할 문자열
	String KeyField="";//이름 제목 내용

%>


<div align="center">
<br>
<h2>JSP Board</h2>
<br>
<!-- 상단  -->
<table align="center" width="1000">
<tr>
	<td>Total : 1000Page(<font color=red>1 Page</font>/1000 Page)<br></td>
</tr>
</table>
<!-- 본문  -->
<table align=center width="1000">
<tr>
	<!-- 게시물 내용 출력  -->
	<table width=1000>
		<tr align=center bgcolor=lightgray>
			<td>번호</td>
			<td>제목</td>
			<td>이름</td>
			<td>날짜</td>
			<td>조회수</td>
		</tr>
		
		<tr>
			<td>1</td>
			<td>제목1</td>
			<td>홍길동</td>
			<td>2021-08-04</td>
			<td>1</td>
		</tr>
	
		<tr>
			<td>2</td>
			<td>제목2</td>
			<td>남길동</td>
			<td>2021-08-04</td>
			<td>0</td>
		</tr>
		
	</table>
</tr>
<tr>
	<td colspan=2><br><br></td>
</tr>
<tr>
	<!-- 페이지블럭 출력 [1][2][3][4][5][6][7]-->
	<td>PREV [11][12][13][14][15][16][17][18][19][20] NEXT</td>
	<!-- 글쓰기기능/처음으로가기능 추가 -->
	<td>
		<a href="#">[글쓰기]</a><a href="#">[처음으로]</a>
	</td>
</tr>
</table>

<!-- 검색 -->
<form name=searchFrm method=get action=C01-01list.jsp>
<table width=1000 >
	<tr>
		<td align=center>
			<select name=keyField size=1>
				<option value=name>이 름 </option>
				<option value=subject>제 목 </option>
				<option value=content>내 용 </option>
			</select>
			<input size=16 name=keyWord>
			<input type=button value=찾기 onclick="">
			<input type=hidden name=nowPage value=1>
		</td>
	</tr>
</table>
</form>




</div>



</body>
</html>