<!--
	tblBoard 테이블과 연결
	총 저장 레코드 가져오기
  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="bMgr" class="Ch20.BoardMgr" scope="page"/>
<%@page import="java.util.*,Ch20.BoardBean" %>
	<%
		int totalRecord=0;		//전체 레코드수
		int numPerPage=10;		//페이지당 레코드 수(한 페이지에 표시되는 게시물 수)
		int pagePerBlock=15;	//블럭당 페이지 수(한 블럭에 [0]~[15]까지 페이지 표시)
		
		int totalPage=0;		//전체 페이지 수
		int totalBlock=0;		//전체 블럭 수
		
		int nowPage=1;			//현재 페이지
		int nowBlock=1;			//현재 블럭
		
		int start=0;			//Database Select 시작번호
		int end=10;				//시작번호로부터 가져올 게시물의 개수
		int listSize=0;			//현재 DB로부터 읽어온 게시물의 수
		
		String keyWord="";		//검색할 문자열
		String keyField="";		//이름 제목 내용
		
		totalRecord=bMgr.getTotalCount(keyField, keyWord);	//검색내용을 전달하여 만족하는 전체 레코드수 리턴
		totalPage=(int)Math.ceil(((double)totalRecord/numPerPage));	//전체 페이지수 계산
		totalBlock=(int)Math.ceil((double)totalPage/pagePerBlock);	//총 블럭수 계산
		nowBlock=(int)Math.ceil(((double)nowPage/pagePerBlock));	//현재 블럭 계산(총블럭에서 몇 번째인지)
		
		ArrayList<BoardBean> blist=bMgr.getBoardList(keyField, keyWord, start, end);
		
	%>
	<div align="center">
		<h2>JSP Board</h2>
		<br>
		<!--상단  -->
		<table align="center" width=1000>
			<tr>
				<td>Total : <%=totalPage %>Page(<font color=red><%=nowPage %></font>/<%=totalPage %>)<br></td>
			</tr>
		</table>
		<!--본문  -->
		<table align="center" width=1000>
			<tr>
				<!--게시물 내용출력  -->
				<td colspan=2>
					<table width=1000>
						<tr align="center" bgcolor=lightgray>
							<td>번호</td>
							<td>제목</td>
							<td>이름</td>
							<td>날짜</td>
							<td>조회수</td>
						</tr>
						<%
							listSize=blist.size();	//가져온 게시물의 개수를 listSize에 저장
							if(blist.isEmpty()){
								out.println("등록된 게시물이 없습니다");
							}
							else
							{
								for(int i=0;i<numPerPage;i++)
								{
									if(i==listSize)
										break;
									
									BoardBean bean=blist.get(i);
								
							
						%>
						<tr>
							<td align="center"><%=bean.getNum() %></td>
							<td align="center"><a href="#"><%=bean.getSubject() %></a></td>
							<td align="center"><%=bean.getName() %></td>
							<td align="center"><%=bean.getRegdate() %></td>
							<td align="center"><%=bean.getCount() %></td>
						</tr>
						<%
								}
							}
						%>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan=2></td>
			</tr>
			<tr style="border:1px solid gray">
				<!--페이지블럭 출력 [1][2][3][4][5]  -->
				<td >PREV [11][12][13][14][15][16][17][18][19][20] NEXT</td>
				<!--글쓰기기능/처음으로가기 기능 추가  -->
				<td align="right">
					<a href="#">[글쓰기]</a><a href="#">처음으로</a>
				</td>
			</tr>
		</table>
		<!--검색  -->
		<form name=searchFrm method=get action="C01-01list.jsp">
			<table width=1000>
				<tr>
					<td>
						<select name=keyField size=1>
							<option value=name>이름</option>
							<option value=subject>제목</option>
							<option value=content>내용</option>
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