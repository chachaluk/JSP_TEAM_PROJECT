<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div style="text-align: center"> 
<h3>* 아이디 중복확인 *</h3> 
<form method="post" action="IdCheckAction.jsp"> 
<label for="input_id">아이디</label>
<input type="text" name="input_id" maxlength="10" autofocus> 
<input type="submit" value="중복확인"> 
</form> 
</div>

</body>
</html>