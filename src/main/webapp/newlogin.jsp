<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타벅스 로그인</title>
<link rel="stylesheet" href="newlogin.css">
<script src="https://kit.fontawesome.com/a177ebec54.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="main-container">
		<div class="main-warp">
		<header>
			<div class="logo-warp" style="text-align:center;">
				<img width=300px height=300px src="./logo.png">
			</div>
		</header>
		<form action="./Login_Action.jsp" method=post>
		<section class="login-input-section-wrap">
			<div class="login-input-wrap">
				
				<input placeholder="  아이디" type="text" name="input_id">
				
			</div>
			<div class="login-input-wrap password-wrap">
				<input placeholder="  비밀번호" type="password" name="input_pw">
			</div>
			<div class="login-stay-sign-in">
				<input type="checkbox">&ensp;로그인 상태 유지
			</div>	
			<div class="login-button-wrap">
				<input type="submit" value="로그인">
			</div>
						
		</section>
			<div class="bottom-button-wrap">
			<ul class="find_wrap" id="find_wrap">
				<li>
				<a target="_blank" href="" class="find_text">아이디/비밀번호 찾기</a> &emsp;
				
				<a target="_blank" href="sign.jsp"class="find_text">회원가입</a>

				</li>
			</ul>
			</div>
		</form>	
		</div>
	</div>
</body>
</html>