<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="DAO.memberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div style="text-align: center"></div> 
<h3>* ���̵� �ߺ� Ȯ�� ��� *</h3> 
<% 
//1) ��밡���� ���̵��� ���, ���̵� �Է� ���� �ֱ� ���� 
String input_id=request.getParameter("input_id"); 
memberDAO dao=new memberDAO();
boolean id_check=dao.checkDuplicateID(input_id); 
int cnt=0;
out.println("�Է� ID : <strong>" + input_id + "</strong>"); 
if(id_check==true){ 
	out.println("<p>��� ������ ���̵��Դϴ�.</p>"); 
	out.println("<a href='javascript:apply(\"" + input_id + "\")'>[����]</a>");
%>
<script> 
function apply(input_id){ 
	//2) �ߺ�Ȯ�� id�� �θ�â�� ���� 
	//�θ�â opener 
	alert("apply");
	opener.document.regForm.input_id.value=input_id;
	opener.document.regForm.input_id.readOnly=true;
	opener.document.regForm.input_id.style.backgroundColor='gray';
	window.close(); //â�ݱ� 
	}//apply () end 
</script> 
	<% }else{ 
		out.println("<p style='color: red'>�ش� ���̵�� ����Ͻ� �� �����ϴ�.</p>"); }//if end %> <hr> 
		<a href="javascript:history.back()">[�ٽýõ�]</a> 
		&nbsp; &nbsp; 
		<a href="javascript:window.close()">[â�ݱ�]</a>

</body>
</html>