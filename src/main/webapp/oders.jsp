<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList" %>
    <% request.setCharacterEncoding("UTF-8");%>
<!-- 주문내역 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문내역</title>
	<style>
	#wrap{
		width: 800px;
		margin: 0 auto 0 auto;
	}
	
	#header{
		text-align: center;
		width: 800px;
		height: 100px;
		background-color: #F3E2A9;
		padding: 60px 0px;
	}
	#user{
		float: left;
		width: 800px;
		height: 400px;
		background-color:;
		text-align: center;
		vertical-align: middle;
	}
		#footer{
		clear: left;
		width: 800px;
		height: 100px;
		background-color: ;
		text-align: center;
		vertical-align: middle;
	}
	</style>


</head>
<body>
<div id="wrap">
	<div id="header">
	<h1>주문내역</h1>
	</div>
	<div id="user">
    
   
		<% String[] menu = request.getParameterValues("menu"); 
   		if (menu != null) { 
      	for (int i = 0; i < menu.length; i++) 
         { out.println(menu[i]); }
      
         } %> 
		
	</div>
	<div id="footer">
	<input type="button" value="HOME"
                 onclick="location='main_jsp.jsp'" >
	</div>
</div>

</body>
</html>