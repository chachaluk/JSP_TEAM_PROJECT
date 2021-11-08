<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
		<header id="header">
		<ul>
		<li><a href="/">홈</a></li>
		<%
		Object input_id = session.getAttribute("input_id");
		%>
		<%
		if(input_id==null){
		%>
		<li><a href="./Login.jsp">로그인</a></li>
		<li><a href="./sign.jsp">회원가입</a></li>
		<%
		} else {
		%>
		<li><a href="./LogoutAction.jsp">로그아웃</a></li>
		<li><a href="./update.jsp">개인정보수정</a></li>
		<%
		}
		%>
		</ul>
		</header>
		<div id="contents">
		
		</div>
		<footer id="footer">
		
		</footer>
	</div>
</body>
</html>