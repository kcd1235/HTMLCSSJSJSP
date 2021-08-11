<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

MVC(Model View Controller) 
사용자가 보는 페이지, 데이터처리, 제어부로 나눠서 각각의 역할별로 처리를 분산시키는 
패턴
MVC패턴의 사용 목적은 서로 분리되어 각각의 역할에만 집중할 수 있에끔하여 개발환경에
유지보수 , 확장성 , 유연성 , 코트중복을 막는다


Model
DB와 상호작용하며 비즈니스 로직을 처리하는 모듈,컴포넌트
- 사용자가 이용하려고 하는 모든 데이터를 저장(DTO, VO)
- 변경 요청이 일어나면 해당 처리 방법을 구현 (DAO)
 
View
- Client에게 결과화면을 반환하는 모듈
- Model or Controller로 로부터 처리결과물을 가져와 Client에게 보여준다
- View가 직접 Control 하거나 DB처리를 하면 안된다

Controller
- Client의 요청이 들어왔을때 그 요청을 어떤 로직으로 연결할건지를 결정
- Model과 View를 연결해주는 제어기능
- Model or View에 대한 정보를 가지고 있어야 한다
- Model or View의 변경에 대한 감지 or 대처 한다







</body>
</html>