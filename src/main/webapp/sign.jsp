<%@ page language="java"
    pageEncoding="EUC-KR" contentType="text/html; charset=EUC-KR" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="./css/sign.css" rel="stylesheet" type="text/css">
<script>
function IdCheck(){
	alert("IdCheck!");
	
	window.open("IdCheckForm.jsp", "idwin", "width=400, height=350");
}

function checkform() {
	var form = document.regForm;
	if(form.input_id.value=="") {
		alert("아이디를 입력해주세요");
		form.input_id.focus();
		return false;
	} else if (form.password.value == "") {
		alert("비밀번호를 입력해주세요");
		form.password.focus();
		return false;
	} else if (form.password.value != form.password_confirm.value) {
		alert("비밀번호 불일치");
		return false;
	}
	form.submit();
	alert("완료!");
}
</script>
</head>
<body>
	<form name="regForm" action="./SignAction.jsp" method="post" >
		<label for="input_name">이름:</label>
		<input type="text" name="input_name" id="input_name" placeholder="이름을 입력하세요"> <br>
		<label for="input_id">아이디:</label>
		<input type="text" name="input_id" id="input_id" placeholder="아이디를 입력하세요"> <br>
		<input type="button" onclick="IdCheck()" value="아이디 중복체크"> <br>
		<label for="input_pw">비밀번호:</label>
		<input type="password" name="input_pw" placeholder="비밀번호를 입력하세요"> <br>
		<label for="password_confirm">비밀번호 확인:</label>
		<input type="password" name="password_confirm" placeholder="비밀번호확인"> <br>
		<label for="input_address">주소:</label>
		<input type="text" name="input_address" id="input_address" placeholder="주소를 입력하세요"> <br>
		
		<input type="submit" value="회원가입" id="signBtn" onclick="checkform()">
	</form>
</body>
</html>