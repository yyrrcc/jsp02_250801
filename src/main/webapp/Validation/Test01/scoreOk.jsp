<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>국영수 평균점수</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8"); // 인코딩 설정
	
		// String score = request.getParameter("score");
		
		// request.getParameter는 String으로 받아지기 때문에 Wrapper 클래스를 이용해서 기본형으로 변경
		int kor = Integer.parseInt(request.getParameter("kor")) ;
		int eng = Integer.parseInt(request.getParameter("eng")) ;
		int math = Integer.parseInt(request.getParameter("math")) ;

		// 평균 받을 땐 double로 받기
		// 개수를 받는 방법이 있나?
		double avg = (kor + eng + math) / 3.0;
	%>
	
	입력된 국어 점수 : <%= kor %> <br/>
	입력된 영어 점수 : <%= eng %> <br/>
	입력된 수학 점수 : <%= math %> <br/>
	<br/>
	총점 : <%= kor + eng + math %> <br/>
	평균 : <%= avg %> <br/>
	
</body>
</html>