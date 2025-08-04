/**
 * js 자바 스크립트 파일을 외부에 따로 만들기
 */

function joinCheck() {
	
	/* 선언 : var(과거) const(상수) let(변경변수) */
	const jf = document.joinForm; // 폼 객체가 중복되므로 상수로 저장해서 사용하는 것도 좋음
	const regexK = /^[가-힣]+$/; // 한글만 입력 받는 정규표현식
	const regexE = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/; // 영어(대소문자), 숫자, 허용된 특수문자만 입력 받는 정규표현식

	const cName = document.joinForm.name.value;
	const cEmail = document.joinForm.email.value;

	
	/* 띄어쓰기 같은 공백을 찾아내기 위해서는 trim 사용 */
	if (jf.id.value.trim() == "") {
		alert("아이디를 입력하세요.");
		document.joinForm.id.focus();
		return;
	}
	
	/* 길이 제한을 두고 싶을 경우 */
	if (document.joinForm.pw.value.length < 4 || document.joinForm.pw.value.length > 15) {
		alert("비밀번호는 4자 이상 15자 이하로 입력하세요.");
		document.joinForm.pw.focus();
		return;
	}
	
	/* 비밀번호 동일성 확인하는 경우 */
	if (document.joinForm.pwCheck.value != document.joinForm.pw.value) {
		alert("비밀번호가 동일하지 않습니다.");
		document.joinForm.pwCheck.focus();
		return;
	}
	
	/* 이름에 한글만 입력 받고 싶은 경우 */
	if (!regexK.test(cName)) {
		alert("이름에는 한글만 입력 가능합니다.");
		document.joinForm.name.focus();
		return;
	}
	
	/* 이메일에 영어, 숫자, 특정 특수문자만 입력 받고 싶은 경우 */
	if (!regexE.test(cEmail)) {
		alert("이메일에는 영어, 숫자, 특정 특수문자만 입력 가능합니다.");
		document.joinForm.email.focus();
		return;
	}
	
	document.joinForm.submit();
}