<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="DAO.memberDAO" %>
<!-- ȸ��Ż�� -->

<%  //�α����� �Ǿ��̾��  ���������� ����
	if(session.getAttribute("input_id")==null){
    	response.sendRedirect("main_jsp.jsp");
	}
%> 
<%
String input_id =request.getParameter("input_id");
String input_pw = request.getParameter("input_pw");



memberDAO DAO=new memberDAO();
DAO.memberDelete(input_id, input_pw);
session.invalidate();       
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ��Ż��</title>
</head>
<body>

ȸ�������� �����Ǿ����ϴ�.<br/>
<input type= "button" value="Ȯ��" onClick="location.href='main_jsp.jsp'">

</body>
</html>

