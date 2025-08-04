<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 외부에서 만든 자바스크립트 파일 불러와서 사용하기 -->
<script type="text/javascript" src="memJoinJs.js"></script>
<title>회원가입</title>
</head>
<body>

	<h2>회원 가입 양식</h2>
	<hr>
	<form action="#" method="post" name="joinForm">
		아이디 <input type="text" name="id"><br/>
		비밀번호 <input type="password" name="pw"><br/>
		비밀번호 확인 <input type="password" name="pwCheck"><br/>
		이름 <input type="text" name="name"><br/>
		이메일 <input type="email" name="email"><br/>
		주소 <input type="text" name="add"><br/>

		<input type="button" value="회원가입" onclick="joinCheck()">
		<input type="reset" value="다시 입력하기">
	</form>

</body>
</html>