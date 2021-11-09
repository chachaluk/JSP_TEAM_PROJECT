<%@ page language="java"
    pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	session.removeAttribute("input_id");
	response.sendRedirect("./index.jsp");
	%>
</body>
</html>