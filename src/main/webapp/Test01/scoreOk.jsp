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
		String score = request.getParameter("score");
		int kor = Integer.parseInt(request.getParameter("kor")) ;
		int eng = Integer.parseInt(request.getParameter("eng")) ;
		int math = Integer.parseInt(request.getParameter("math")) ;

		// 개수를 받는 방법이 있나?
		int avg = (kor + eng + math) / 3;
		out.print("평균 점수 : " + avg);
	%>
</body>
</html>