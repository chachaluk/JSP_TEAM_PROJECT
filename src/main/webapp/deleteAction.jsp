<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="DAO.memberDAO" %>
<!-- 회원탈퇴 -->

<%  //로그인이 되었이어야  보여지도록 검증
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
<title>회원탈퇴</title>
</head>
<body>

회원정보가 삭제되었습니다.<br/>
<input type= "button" value="확인" onClick="location.href='main_jsp.jsp'">

</body>
</html>

