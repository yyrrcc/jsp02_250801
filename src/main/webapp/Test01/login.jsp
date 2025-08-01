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
				return false; // 실패했을 때 action으로 넘어가지 않게 해야하는데
			}
		}
	</script>
</head>
<body>

	<form action="loginOk.jsp" name="login">
		아이디 <input type="text" name="id"><br/>
		비밀번호 <input type="password" name="pw"><br/>
		<input type="submit" value="로그인" onclick="loginError()">
		<input type="reset" value="다시 입력하기">
	</form>


</body>
</html>