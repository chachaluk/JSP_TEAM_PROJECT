<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="DAO.memberDAO" %>
<!-- ȸ��Ż�� -->

<%
String input_id =(String)session.getAttribute("input_id");
String input_pw = request.getParameter("input_pw");



memberDAO DAO=new memberDAO();
boolean result = DAO.memberDelete(input_id, input_pw);
if(result){
session.invalidate();
}
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ��Ż��</title>
</head>
<body>

ȸ�������� �����Ǿ����ϴ�.<br/>
<input type= "button" value="Ȯ��" onClick="location.href='Home.jsp'">

</body>
</html>

