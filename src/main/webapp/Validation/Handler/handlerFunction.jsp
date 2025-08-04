<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>핸들러 함수</title>
	<script type="text/javascript">
		function checkFun() {
			if (document.gradeForm.book.value == "") {
				alert("도서명을 입력해주세요.")
			} else {
				alert("추천 도서:" + document.gradeForm.book.value + "\n" + "평점:" + document.gradeForm.grade.value)
			}
			return false;
		}
	</script>
</head>
<body>
	<h2>추천 도서 평점</h2>
	<hr>
	<!-- form의 name을 지정해줘야함 -->
	<form action="#" name="gradeForm">
		추천 도서 : <input type="text" name="book" size="30"><br><br>
		평점 :
		<hr>
		<input type="radio" name="grade" value="♥♥♥♥♥" checked>♥♥♥♥♥<br>
		<input type="radio" name="grade" value="♥♥♥♥♡">♥♥♥♥♡<br>
		<input type="radio" name="grade" value="♥♥♥♡♡">♥♥♥♡♡<br>
		<input type="radio" name="grade" value="♥♥♡♡♡">♥♥♡♡♡<br>
		<input type="radio" name="grade" value="♥♡♡♡♡">♥♡♡♡♡<br>
		<hr>
		<!-- 버튼이 눌리면 서버로 보내지 말고 onclick 안의 함수를 실행하게 하기 -->
		<input type="submit" value="추천하기" onclick="checkFun()"><br>
		<input type="reset" value="다시 작성하기">
	</form>
</body>
</html>