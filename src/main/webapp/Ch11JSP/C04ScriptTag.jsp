<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:declaration>
public int sum(int x , int y)
{
	return x + y;
}
</jsp:declaration>


<jsp:scriptlet>
int i=22;
int j=33;
int result=sum(i,j);
</jsp:scriptlet>

<jsp:expression>i</jsp:expression>+
<jsp:expression>j</jsp:expression>=
<jsp:expression>result</jsp:expression>











</body>
</html>