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
		<li><a href="/">Ȩ</a></li>
		<%
		Object input_id = session.getAttribute("input_id");
		%>
		<%
		if(input_id==null){
		%>
		<li><a href="./Login.jsp">�α���</a></li>
		<li><a href="./sign.jsp">ȸ������</a></li>
		<%
		} else {
		%>
		<li><a href="./LogoutAction.jsp">�α׾ƿ�</a></li>
		<li><a href="./update.jsp">������������</a></li>
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