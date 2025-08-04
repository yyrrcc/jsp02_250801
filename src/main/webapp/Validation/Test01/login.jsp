<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
	<script type="text/javascript">
		function loginError() {
			if (document.login.id.value == "" || document.login.pw.value == "") {
				alert("아이디와 비밀번호를 모두 입력하세요.")
				<!-- document.login.id.focus(); 넣어서 자동포커스 해줄 수도 있음 -->
				return false;
			}
			return true;
		}
	</script>
</head>
<body>
	<h3>관리자 로그인</h3>
	<form action="loginOk.jsp" name="login" method="post" onsubmit="return loginError()">
		아이디 <input type="text" name="id"><br/>
		비밀번호 <input type="password" name="pw"><br/>
		<input type="submit" value="로그인">
		<input type="reset" value="다시 입력하기">
	</form>

</body>
</html>