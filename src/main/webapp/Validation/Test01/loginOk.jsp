<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인 성공</title>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8"); // 인코딩 설정
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if (id.equals("admin") && pw.equals("1234")) {
			out.println("안녕하세요 관리자님. 로그인 성공하셨습니다!");
		} else {
			out.println("로그인 실패!");
		}
	%>
	<!-- 로그인 실패 시 로그인 페이지로 돌아가는 하이퍼링크 만들 수도 있음 -->

</body>
</html>