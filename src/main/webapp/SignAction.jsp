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
String input_name=request.getParameter("input_name");
String input_id=request.getParameter("input_id");
String input_pw=request.getParameter("input_pw");
String input_address=request.getParameter("input_address");
String password_confirm=request.getParameter("password_confirm");

boolean id_check=false;
boolean password_check=false;
memberDAO DAO=new memberDAO();
id_check=DAO.checkDuplicateID(input_id);
if(id_check==false){
	System.out.println("�ߺ� ���̵� �����մϴ�.");
} else {
	if(input_pw.equals(password_confirm)==false){
		System.out.println("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
	}
	else {
		DAO.memberInsert(input_name, input_id, input_pw, input_address);
		System.out.println("ȸ������ �Ϸ�!");
	}
}

%>
</body>
</html>