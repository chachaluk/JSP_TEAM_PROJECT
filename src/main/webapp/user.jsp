<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ȩ, �α���, ȸ������ ��ư</title>

</head>
<body>
		<p>
			<button style="background-color: #EFFBF2;" onclick="location='main_jsp.jsp'">HOME</button>&nbsp;&nbsp;&nbsp;&nbsp;
			<%
			Object input_id = session.getAttribute("input_id");
			
			%>
		<%
			// �α��� �ȵǾ��� ��� - �α���, ȸ������ ��ư�� �����ش�.
			if(session.getAttribute("input_id")==null){ 
		%>
			<button style="background-color: #EFFBF2;" onclick="location='newlogin.jsp'">�α���</button>&nbsp;&nbsp;&nbsp;&nbsp;
			<button style="background-color: #EFFBF2;" onclick="location='sign.jsp'">ȸ������</button>
		<%
			//�α��� �Ǿ��� ��� - �α׾ƿ�, ������ ��ư�� �����ش�.
			}else{ 
		%>
		
			<button style="background-color: #EFFBF2;" onclick="location='LogoutAction.jsp'">�α׾ƿ�</button>&nbsp;&nbsp;&nbsp;&nbsp;
			<button style="background-color: #EFFBF2;" onclick="location='update.jsp'">ȸ����������</button>&nbsp;&nbsp;&nbsp;&nbsp;
			
			<button style="background-color: #EFFBF2;" onclick="location='oders.jsp'">�ֹ�����</button>
		<%	}	%>	

		</p>

</body>
</html>