<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="DAO.memberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String input_id = request.getParameter("input_id");
String input_pw = request.getParameter("input_pw");

	memberDAO dao= new memberDAO();
	boolean result=dao.memberSelect(input_id, input_pw);
	
	if(result==true){
		System.out.println("�α��� ����!: ���ǿ� �� ����!");
		session.setAttribute("input_id", input_id);
		response.sendRedirect("./index.jsp");
	}else{
		System.out.println("�α��� ����!");
		response.sendRedirect("./index.jsp");
	}
%>
</body>
</html>