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
		alert("���̵� �Է����ּ���");
		form.input_id.focus();
		return false;
	} else if (form.password.value == "") {
		alert("��й�ȣ�� �Է����ּ���");
		form.password.focus();
		return false;
	} else if (form.password.value != form.password_confirm.value) {
		alert("��й�ȣ ����ġ");
		return false;
	}
	form.submit();
	alert("�Ϸ�!");
}
</script>
</head>
<body>
	<form name="regForm" action="./SignAction.jsp" method="post" >
		<label for="input_name">�̸�:</label>
		<input type="text" name="input_name" id="input_name" placeholder="�̸��� �Է��ϼ���"> <br>
		<label for="input_id">���̵�:</label>
		<input type="text" name="input_id" id="input_id" placeholder="���̵� �Է��ϼ���"> <br>
		<input type="button" onclick="IdCheck()" value="���̵� �ߺ�üũ"> <br>
		<label for="input_pw">��й�ȣ:</label>
		<input type="password" name="input_pw" placeholder="��й�ȣ�� �Է��ϼ���"> <br>
		<label for="password_confirm">��й�ȣ Ȯ��:</label>
		<input type="password" name="password_confirm" placeholder="��й�ȣȮ��"> <br>
		<label for="input_address">�ּ�:</label>
		<input type="text" name="input_address" id="input_address" placeholder="�ּҸ� �Է��ϼ���"> <br>
		
		<input type="submit" value="ȸ������" id="signBtn" onclick="checkform()">
	</form>
</body>
</html>