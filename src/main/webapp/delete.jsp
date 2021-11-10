<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%

if(session.getAttribute("input_id")==null){
	response.sendRedirect("./index.jsp");
}else{
%>
<!DOCTYPE html>

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<form name="myform" action="deleteAction.jsp" method="post">

<%
    Object lobj_getdata = session.getAttribute("input_id");
	String input_id = (String) session.getAttribute("input_id");
    out.println("아이디: " + input_id + "<br/><br/>");  
%>
비밀번호 : <input type=password name="input_pw"  size="15" maxlength="12"><br/>
       
<input type=submit value="회원탈퇴">
<input type="button" value="취  소" onclick="location.href='index.jsp'">
</form>


</body>
</html>
<%}%>