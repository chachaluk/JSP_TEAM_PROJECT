<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- ȸ��Ż�� -->
<!DOCTYPE html>
<%
if(session.getAttribute("input_id")==null){
	response.sendRedirect("./Home.jsp");
}else{
%>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ��Ż��</title>
</head>
<body>


<form name="myform" action="deleteAction.jsp" method="post">

<%
    Object lobj_getdata = session.getAttribute("input_id");//���ǿ� ����� �� �ҷ���
	String input_id = (String) session.getAttribute("input_id");
    out.println("���̵�: " + input_id + "<br/><br/>");  
%>
��й�ȣ : <input type=password name="input_pw"  size="15" maxlength="12"><br/>
       
<input type=submit value="ȸ��Ż��">
<input type="button" value="��  ��" onclick="location.href='Home.jsp'">
</form>


</body>
</html>
<%}%>