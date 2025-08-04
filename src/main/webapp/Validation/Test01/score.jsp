<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>국영수 점수</title>
	<script type="text/javascript">
		function scoreCheck() {
			if (document.score.kor.value == "" || document.score.eng.value == "" || document.score.math.value == "") {
				alert("모든 점수를 입력하세요.")
				return false;
			}
			return true;
		}
	</script>
</head>
<body>
	<h3>평균 점수 구하기</h3>
	<form action="scoreOk.jsp" name="score" onsubmit="return scoreCheck()">
		국어 <input type="text" name="kor"><br/>
		영어 <input type="text" name="eng"><br/>
		수학 <input type="text" name="math"><br/>
		<br/>
		<input type="submit" value="평균 출력하기">
		<input type="reset" value="다시 입력하기">
	</form>

</body>
</html>